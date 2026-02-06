/// draw_togglebutton_modern(x, y, width, height, state, label)
/// Modern toggle with smooth sliding animation (Material Design style)
function draw_togglebutton_modern(xx, yy, width, height, state, label = "")
{
	var toggle_width = width
	var toggle_height = height
	var track_color, circle_color, circle_x, circle_y;
	
	// Track color based on state
	track_color = state ? c_accent : c_level_bottom
	circle_color = c_white
	
	// Draw track (rounded rectangle)
	draw_box_rounded(xx, yy, toggle_width, toggle_height, track_color, 0.8, true, true, true, true, 3)
	
	// Smooth circle animation
	var circle_size = height - 4
	var circle_travel = (toggle_width - circle_size - 4)
	var circle_position = state ? circle_travel : 0
	circle_x = xx + 2 + circle_position
	circle_y = yy + 2
	
	// Draw circle with shadow
	draw_dropshadow(circle_x, circle_y, circle_size, circle_size, c_black, 0.3)
	draw_box_rounded(circle_x, circle_y, circle_size, circle_size, circle_color, 1, true, true, true, true, 2)
	
	// Draw label if provided
	if (label != "")
	{
		var label_x = xx + toggle_width + 12
		draw_label(label, label_x, yy + height/2, fa_left, fa_middle, c_text_main, a_text_main)
	}
}
