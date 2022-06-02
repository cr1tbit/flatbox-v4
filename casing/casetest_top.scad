size_x = 210;
size_y = 120;
offs_x = size_x/2 - 5;
offs_y = size_y/2 - 5;

$fn=40;

module screwhole(x,y) {
    translate([x,y,0])
        cylinder(h=4, r1=4,r2=2, center=true);
}


module screwholes(){
 screwhole(offs_x, offs_y);
 screwhole(-offs_x, offs_y);
 screwhole(-offs_x, -offs_y);
 screwhole(offs_x, -offs_y);
}

module case_orig() {
    import("/home/critbit/Projects/hardware/flatbox/hardware-rev4/3d-printed-case/Flatbox-rev4-Top.stl", convexity=3);
}

difference(){
    translate([0,2,0])
        case_orig();
    screwholes();
};