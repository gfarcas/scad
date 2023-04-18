include <BOSL2/std.scad>
$fn=80;
// 38.6
difference() {
  cyl(h=6, d=40, texture="diamonds", tex_size=[3,3]);
  cyl(h=7, d=38.6);
}
