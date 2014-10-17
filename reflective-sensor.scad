// file: reflective-sensor.scad
//   by: Daniel Peirce B.Sc.
//
// pin 1 collecter  mark indicats pin 1
// pin 2 emitter
// pin 3 anode
// pin 4 cathode

function r_sensor_dim() = [4.39, 6.10, 4.65];

module r_sensor(dim)
{
  win_dim = [2,4,4];
  difference()
  {
    color("black") cube(dim);
    translate([dim[0]/3-win_dim[0]*2/3,dim[1]/2-win_dim[1]/2,1])
    {
      cube(win_dim);
    }
    translate([(dim[0]-win_dim[0]*2)/3*2+win_dim[0],dim[1]/2-win_dim[1]/2,1])
    {
      cube(win_dim);
    }
    translate([0.2,dim[1]-0.5, dim[2]-0.2]) color("black", 0.5) cube([0.3,0.3,0.3]);
  }
  translate([dim[0]/3-win_dim[0]*2/3,dim[1]/2-win_dim[1]/2,1])
  {
    color("darkred") cube([win_dim[0],win_dim[1],win_dim[2]-0.41]);
  }
  translate([(dim[0]-win_dim[0]*2)/3*2+win_dim[0],dim[1]/2-win_dim[1]/2,1])
  {
    color("aqua", 0.2) cube([win_dim[0],win_dim[1],win_dim[2]-0.41]);
  }
}

r_sensor(r_sensor_dim());
