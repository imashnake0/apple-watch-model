///<body>///
module fn(x){
cube([27.87, 21.81, 10.50], center = true);
///x, y, 0///
translate([27.87/2, 21.81/2, 0]){
sphere(r = 5.25, $fn = x);
}
///-x, y, 0///
translate([-27.87/2, 21.81/2, 0]){
sphere(r = 5.25, $fn = x);
}
///-x, -y, 0///
translate([-27.87/2, -21.81/2, 0]){
sphere(r = 5.25, $fn = x);
}
///x, -y, 0///
translate([27.87/2, -21.81/2, 0]){
sphere(r = 5.25, $fn = x);
}
///front///
translate([27.87/2, 0, 0]){
    rotate([90, 0, 0]){
cylinder(r = 5.25, h = 21.81, center = true, $fn = x);
    }
}
///back///
translate([-27.87/2, 0, 0]){
    rotate([90, 0, 0]){
cylinder(r = 5.25, h = 21.81, center = true, $fn = x);
    }
}
///left///
translate([0, -21.81/2, 0]){
    rotate([90, 0, 90]){
cylinder(r = 5.25, h = 27.87, center = true, $fn = x);
    }
}
///right///
translate([0, 21.81/2, 0]){
    rotate([90, 0, 90]){
cylinder(r = 5.25, h = 27.87, center = true, $fn = x);
    }
}
}
difference(){
fn(100);
///</body>///
///<screen>///
    translate([0, 0, 3.86]){
cube([42.5, 36.44, 0.1], center = true);
    }
}
///</screen>///
///<crown>///
minkowski(){
    sphere(r = 1.04, $fn = 100);
    translate([-7.78, 16.155, 0.55]){
        rotate([90, 0, 0]){    
cylinder(r = 2.3, h = 0.55, $fn = 100, center = true);
        }
    }
}
///</crown>>>