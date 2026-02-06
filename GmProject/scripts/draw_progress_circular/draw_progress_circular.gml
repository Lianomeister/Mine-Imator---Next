/// draw_progress_circular(x, y, radius, progress, color)
/// Modern circular progress indicator
/// @arg x - Center X
/// @arg y - Center Y
/// @arg radius - Circle radius
/// @arg progress - Progress value (0-1)
/// @arg color - Progress color
function draw_progress_circular(xx, yy, radius, progress, color)
{
	var start_angle = -90
	var end_angle = start_angle + (progress * 360)
	
	// Background circle
	draw_circle_ext(xx, yy, radius, c_level_bottom, 0.5)
	draw_circle_ext(xx, yy, radius, c_border, a_border, true)
	
	// Progress arc
	draw_arc(xx, yy, radius * 2, radius * 2, start_angle, end_angle, color, 4)
	
	// Center circle
	draw_circle_ext(xx, yy, radius * 0.7, c_level_middle, 1)
	
	// Percentage text
	var percent_text = string(floor(progress * 100)) + "%"
	draw_label(percent_text, xx, yy, fa_center, fa_middle, c_text_main, a_text_main)
}

/// draw_arc(x, y, width, height, angle1, angle2, color, line_width)
/// Draw an arc (part of a circle)
function draw_arc(xx, yy, w, h, angle1, angle2, color, line_width)
{
	var steps = max(4, floor(abs(angle2 - angle1) / 5))
	var oldcolor = draw_get_color()
	var oldalpha = draw_get_alpha()
	
	draw_set_color(color)
	
	var prev_x, prev_y
	
	for (var i = 0; i <= steps; i++)
	{
		var angle = angle1 + ((angle2 - angle1) * (i / steps))
		var rad = angle * pi / 180
		var cx = xx + (w / 2) * cos(rad)
		var cy = yy + (h / 2) * sin(rad)
		
		if (i > 0)
			draw_line_ext(prev_x, prev_y, cx, cy, line_width, line_width)
		
		prev_x = cx
		prev_y = cy
	}
	
	draw_set_color(oldcolor)
}
