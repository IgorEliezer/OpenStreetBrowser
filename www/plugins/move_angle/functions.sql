-- @return
--   array of floats:
--   1. angle of the tangent of the nearest point on a line
--   2. angle of the nearest point on a line in backward direction
--   3. angle of the nearest point on a line in forward direction
--   4. angle of the normal to the line between current point and nearest 
--      point on a line (if current point is on the line return angle 1)
CREATE OR REPLACE FUNCTION move_angle_next_line(text, hstore, geometry, float) RETURNS float[] AS $$
DECLARE
  id alias for $1;
  tags alias for $2;
  way alias for $3;
  max_dist alias for $4;
  ret record;
  line_point geometry;
  angle float;
  angle_p float;
  angle_n float;
  angle_norm float;
  pos_p float;
  pos_n float;
BEGIN
  select *, line_locate_point(osm_way, way) as "pos" into ret from osm_line where osm_way && ST_Buffer(way, max_dist) order by Distance(way, osm_way) asc limit 1;
  line_point:=line_interpolate_point(ret.osm_way, ret.pos);

  if ST_Length(ret.osm_way)=0 then
    return null;
  end if;

  pos_p:=ret.pos-0.001;
  pos_n:=ret.pos+0.001;

  if pos_p<0 then
    pos_p:=0;
  end if;

  if pos_n>ST_Length(ret.osm_way) then
    pos_p:=ST_Length(ret.osm_way);
  end if;

  angle:=ST_Azimuth(line_interpolate_point(ret.osm_way, pos_p), line_interpolate_point(ret.osm_way, pos_n));

  angle_p:=ST_Azimuth(line_interpolate_point(ret.osm_way, pos_p), line_point);

  angle_n:=ST_Azimuth(line_point, line_interpolate_point(ret.osm_way, pos_n));

  if angle_p is null then
    angle_p:=angle_n;
  elsif angle_n is null then
    angle_n:=angle_p;
  end if;

  angle_norm:=ST_Azimuth(way, line_point)+(pi()/2);
  if angle_norm is null then
    angle_norm:=angle;
  end if;

  -- raise notice 'pos %: angle: % % % %', ret.pos, angle, angle_p, angle_n, angle_norm;

  return Array[angle, angle_p, angle_n, angle_norm];
END;
$$ LANGUAGE plpgsql immutable;

