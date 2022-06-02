size_x = 210;
size_y = 120;
offs_x = size_x/2 - 5;
offs_y = size_y/2 - 5;

$fn=40;

module screwhole(x,y) {
    translate([x, y,0])
        cylinder(h=10, r=2,center=true);
    translate([x,y,-3])
        cylinder(h=4, r=4,center=true);
}


module screwholes(){
 screwhole(offs_x, offs_y);
 screwhole(-offs_x, offs_y);
 screwhole(-offs_x, -offs_y);
 screwhole(offs_x, -offs_y);
}

module case_orig() {
    import("/home/critbit/Projects/hardware/flatbox/hardware-rev4/3d-printed-case/Flatbox-rev4-Bottom.stl", convexity=3);
}

module case_modded() {
    %case_orig();
    square([100,10],center=true);
}

case_modded();


// difference(){
//     translate([0,2,0])
//         case_orig();
//     screwholes();
// }; 