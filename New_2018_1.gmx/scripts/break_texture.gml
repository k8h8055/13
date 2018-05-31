///break_texture(segments);

var segment, segmentsumm, segmentinst, s_w, s_h, xx, yy;

segments = max(2, argument0); // number of parts

// set start coordinates
s_w = sprite_width;
s_h = sprite_height;
xx[0] = x;
yy[0] = y;
xx[1] = x+s_w;
yy[1] = y;
xx[2] = x+s_w;

// randomize segment sizes
segmentsumm = 0;
for (i=0; i<segments; i++) {
  segment[i] = irandom_range(1, segments);
  if (i = 0) {
    segment[i]*=2;
  }
  segmentsumm += segment[i];
}

for (i=0; i<segments; i++) {
  // give random size to segments
  yy[2] = yy[1]+(segment[i]/segmentsumm)*(sprite_height);
  if (i > segments-3) {
    yy[2] = y+s_h;    
  }
  // create segment object
  segmentinst  = instance_create(x, (yy[0]+yy[2])/2, o_segment);
  // give coordinates of triangle to instance
  segmentinst.xx[0] = xx[0];
  segmentinst.yy[0] = yy[0];
  segmentinst.xx[1] = xx[1];
  segmentinst.yy[1] = yy[1];
  segmentinst.xx[2] = xx[2];
  segmentinst.yy[2] = yy[2];
  // connect two first segments
  if (i != 0) {
    xx[0] = xx[1];
    yy[0] = yy[1];
  }
  // connect other segments
  xx[1] = xx[2];
  yy[1] = yy[2];
  //  make segments place on opposite sides
  if (xx[2] = x+s_w) {
    xx[2] = x;
  } else {
    xx[2] = x+s_w;
  }
  // angle
  var dis = point_distance(segmentinst.x, segmentinst.y, x, y);
  var dir = point_direction(segmentinst.x, segmentinst.y, x, y);
  segmentinst.x -= lengthdir_x(dis, dir);
  segmentinst.y += lengthdir_y(dis, dir);
  segmentinst.rot = phy_rotation;
  // give texture
  segmentinst.texture = background_get_texture(back);
  // create physics fixture
  with (segmentinst) event_user(0);
  // coordinates for drawing
  segmentinst.t_w = background_get_width(back);
  segmentinst.t_h = background_get_height(back);
  segmentinst.x_start = x;
  segmentinst.y_start = y;
}

phy_active = 0; // not permit to perform collision event of object with its segment
instance_destroy();  // destroy the object
