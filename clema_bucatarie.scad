include <BOSL2/std.scad>

$fn=62;
module connector() {
    rotate([0, 0, connWrapDeg]) {
        difference() {
            translate([clipOD/2 - connThick, -totconnLen, 0])            
                cube([connThick, totconnLen, clipHt]);
            translate([0, 0, -diffTol])
                cylinder(d=clipID, h=clipHt + 2*diffTol);
            
            for (hl=holeLocs) {
                if (hl > 0)
                    translate([clipOD/2 - connThick - diffTol, -totconnLen + hl, clipHt/2])
                        rotate([0, 90, 0])
                            cylinder(d=mountHoleDia, h=connThick + 2*diffTol);
            }
        }
    }
}
connector();
