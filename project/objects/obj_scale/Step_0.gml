

//// Value Increase



//// Font Animation
percent += 1/240;
if (percent > 1) percent -= 1;

position_x = animcurve_channel_evaluate(curve_x, percent);
position_y = animcurve_channel_evaluate(curve_y, percent);

var _start_x = 638;
var _end_x = 642;
var _distance_x = _end_x - _start_x;

var _start_y = 358;
var _end_y = 362;
var _distance_y = _end_y - _start_y;

x = _start_x + (_distance_x * position_x);
y = _start_y + (_distance_y * position_y);



