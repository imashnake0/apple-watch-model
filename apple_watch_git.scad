///<body>///
module fn(x){
cube([27.87, 21.81, 10.50], center = true);
///x, y, 0///
translate([27.87/2, 21.81/2, 0]){
sphere(r = 5.25, $fn = x);
}
///-x, y, 0///
difference(){
translate([-27.87/2, 21.81/2, 0]){
sphere(r = 5.25, $fn = x);
}
scale([1.05, 1.05, 1.05]){
minkowski(){
    sphere(r = 1.04, $fn = 100);
    translate([-7.391, 15.34725, 0.5225]){
        rotate([90, 0, 0]){    
cylinder(r = 2.3, h = 0.55, $fn = 100, center = true);
        }
    }
}
}
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
difference(){
translate([0, 21.81/2, 0]){
    rotate([90, 0, 90]){
cylinder(r = 5.25, h = 27.87, center = true, $fn = x);
    }
}
scale([1.05, 1.05, 1.05]){
minkowski(){
    sphere(r = 1.04, $fn = 100);
    translate([-7.391, 15.34725, 0.5225]){
        rotate([90, 0, 0]){    
cylinder(r = 2.3, h = 0.55, $fn = 100, center = true);
        }
    }
}
}
}
//
}
difference(){
fn(100);
///</body>///
///<screen>///
    translate([0, 0, 3.86]){
cube([42.5, 36.44, 0.08], center = true);
    }
}
///</screen>///
///<crown>///
translate([0, 5, 0]){
minkowski(){
    sphere(r = 1.04, $fn = 100);
    translate([-7.78, 16.155, 0.55]){
        rotate([90, 0, 0]){    
cylinder(r = 2.3, h = 0.55, $fn = 100, center = true);
        }
    }
}
}
///</crown>>>
module fnc(c){
///made the button thinner, original: 22.65 for 0.42///
    translate([0, 22.25/2, 0]){
        rotate([90, 0, 90]){
cylinder(r = 5.25, h = 27.87, center = true, $fn = c);
        }
    }
}
module fncc(cc){
translate([3.09, 16.65, 0]){
    rotate([90, 0, 0]){
cylinder(r = 2.2, h = 4.2, center = true, $fn = cc);
    }
}
translate([9.89, 16.65, 0]){
    rotate([90, 0, 0]){
cylinder(r = 2.2, h = 4.2, center = true, $fn = cc);
    }
}
translate([6.49, 16.65, 0]){
cube([6.8, 4.2, 4.4], center = true);
}
}
intersection(){
fnc(100);
fncc(100);
}
///github test///