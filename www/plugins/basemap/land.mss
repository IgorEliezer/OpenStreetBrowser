Map {
  map-bgcolor: #7eb9e3;
}
.world1[zoom<5] {
  polygon-fill: #f2efd9;
}
.coastpoly[zoom>=5] {
  polygon-fill: #f2efd9;
}
.builtup[zoom<11] {
  polygon-fill: #ddd;
}
.landuse_extract[landuse=water][zoom>=5][zoom<10],
.landuse[landuse=water][zoom>=10] {
  polygon-fill: #7eb9e3;
}
.landuse[landuse=water][zoom>=14] {
  line-color: #7eb9e3;
  line-width: 1;
  line-join: round;
  line-cap: round;
}
.landuse_extract[landuse=land][zoom>=5][zoom<10],
.landuse[landuse=land][zoom>=10] {
  polygon-fill: #f2efe9;
}
.landuse_extract[landuse=park][zoom>=5][zoom<10],
.landuse[landuse=park][zoom>=10] {
  polygon-fill: #9ce69c;
}
.landuse_extract[landuse=education][zoom>=5][zoom<10],
.landuse[landuse=education][zoom>=10] {
  polygon-fill: #e39ccf;
}
.landuse_extract[landuse=tourism][zoom>=5][zoom<10],
.landuse[landuse=tourism][zoom>=10] {
  polygon-fill: #cc8bbf;
}
.landuse_extract[landuse=garden][zoom>=5][zoom<10],
.landuse[landuse=garden][zoom>=10] {
  polygon-fill: #b0cc8a;
}
.landuse_extract[landuse=shop][zoom>=5][zoom<10],
.landuse[landuse=shop][zoom>=10] {
  polygon-fill: #ffe285;
}
.landuse_extract[landuse=industrial][zoom>=5][zoom<10],
.landuse[landuse=industrial][zoom>=10] {
  polygon-fill: #b7b8cc;
}
.landuse_extract[landuse=industrial][landuse_sub_type=t1][zoom>=5][zoom<10],
.landuse[landuse=industrial][landuse_sub_type=t1][zoom>=10] {
  polygon-fill: #93a65b;
}
.landuse_extract[landuse=sport][landuse_sub_type=t0][zoom>=5][zoom<10],
.landuse[landuse=sport][landuse_sub_type=t0][zoom>=10] {
  polygon-fill: #8bccb3;
}
.landuse_extract[landuse=sport][landuse_sub_type=t1][zoom>=5][zoom<10],
.landuse[landuse=sport][landuse_sub_type=t1][zoom>=10] {
  polygon-fill: #faf7e0;
}
.landuse_extract[landuse=cemetery][zoom>=5][zoom<10],
.landuse[landuse=cemetery][zoom>=10][zoom<14] {
  polygon-fill: #8acb94;
}
.landuse[landuse=cemetery][zoom>=14] {
  polygon-pattern-file: url('img/grave_yard.png');
}
.landuse_extract[landuse=residential][zoom>=5][zoom<10],
.landuse[landuse=residential][zoom>=10] {
  polygon-fill: #ccb18b;
}
.landuse_extract[landuse=natural0][landuse_sub_type=t0][zoom>=5][zoom<10],
.landuse[landuse=natural0][landuse_sub_type=t0][zoom>=10][zoom<14] {
  polygon-fill: #8dc56c;
}
.landuse_extract[landuse=nature_reserve][zoom>=5][zoom<10] {
}
.landuse[landuse=natural0][landuse_sub_type=t0][zoom>=14] {
  polygon-fill: #72c063;
}
.landuse_extract[landuse=natural0][landuse_sub_type=t1][zoom>=5][zoom<10],
.landuse[landuse=natural0][landuse_sub_type=t1][zoom>=10] {
  polygon-fill: #96f992;
}
.landuse_extract[landuse=natural0][landuse_sub_type=t2][zoom>=5][zoom<10],
.landuse[landuse=natural0][landuse_sub_type=t2][zoom>=10] {
  polygon-fill: #84f9ea;
}
.landuse_extract[landuse=natural0][landuse_sub_type=t3][zoom>=5][zoom<10],
.landuse[landuse=natural0][landuse_sub_type=t3][zoom>=10] {
  polygon-fill: #92da4e;
}
.landuse_extract[landuse=natural1][landuse_sub_type=t0][zoom>=5][zoom<10],
.landuse[landuse=natural1][landuse_sub_type=t0][zoom>=10] {
  polygon-fill: #cdc950;
}
.landuse_extract[landuse=natural1][landuse_sub_type=t1][zoom>=5][zoom<10],
.landuse[landuse=natural1][landuse_sub_type=t1][zoom>=10] {
  polygon-fill: #fad16c;
}
.landuse_extract[landuse=natural1][landuse_sub_type=t2][zoom>=5][zoom<10],
.landuse[landuse=natural1][landuse_sub_type=t2][zoom>=10] {
  polygon-fill: #dedede;
}
.landuse[landuse=nature_reserve][zoom>=10][zoom<12] {
  line-color: #7acc49;
  line-width: 1;
}
.landuse[landuse=nature_reserve][zoom>=12][zoom<14] {
  line-color: #7acc49;
  line-width: 2;
}
.landuse[landuse=nature_reserve][zoom>=14] {
  line-color: #7acc49;
  line-width: 4;
}
.landuse_extract[landuse=historic][zoom>=5][zoom<10],
.landuse[landuse=historic][zoom>=10] {
  polygon-fill: #e0c28d;
}
.landuse_extract[landuse=emergency][zoom>=5][zoom<10],
.landuse[landuse=emergency][zoom>=10] {
  polygon-fill: #df9ea5;
}
.landuse_extract[landuse=health][zoom>=5][zoom<10],
.landuse[landuse=health][zoom>=10] {
  polygon-fill: #abffcb;
}
.landuse_extract[landuse=public][zoom>=5][zoom<10],
.landuse[landuse=public][zoom>=10] {
  polygon-fill: #f0dba5;
}

.area_text name {
  text-face-name: "DejaVu Sans Book";
  text-avoid-edges: true;
  text-halo-radius: 1;
  text-wrap-width: 20;
  text-max-char-angle-delta: 20;
}
.area_text[way_area>=150000][zoom>=14] name {
  text-size: 10;
}
.area_text[way_area>=75000][way_area<150000][zoom>=15] name {
  text-size: 10;
}
.area_text[way_area>=10000][way_area<75000][zoom>=16] name {
  text-size: 10;
}
.area_text[way_area<10000][zoom>=17] name {
  text-size: 10;
}
.area_text[type=water] name {
  text-fill: #000000;
  text-halo-fill: #7eb9e3;
}
.area_text[type=pedestrian] name {
  text-fill: #000000;
  text-halo-fill: #cdcdcd;
}
.area_text[type=pedestrian_tunnel] name {
  text-fill: #303030;
  text-halo-radius: 0;
}
.area_text[type=park] name {
  text-fill: #000000;
  text-halo-fill: #9ce69c;
}
