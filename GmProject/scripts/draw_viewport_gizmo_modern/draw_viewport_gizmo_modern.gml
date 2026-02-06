/// draw_viewport_gizmo_modern(x, y, gizmo_type, axis_hover, scale)
/// Modern 3D gizmo visualization
function draw_viewport_gizmo_modern(xx, yy, gizmo_type, axis_hover = -1, scale = 1)
{
	var gizmo_size = 40 * scale
	var arrow_length = 30 * scale
	var arrow_width = 4
	
	switch(gizmo_type)
	{
		case e_gizmo.MOVE:
			// X Axis (Red)
			draw_gizmo_arrow(xx, yy, xx + arrow_length, yy, c_control_red, axis_hover = 0, arrow_width)
			
			// Y Axis (Green)
			draw_gizmo_arrow(xx, yy, xx, yy + arrow_length, c_control_green, axis_hover = 1, arrow_width)
			
			// Z Axis (Blue)
			draw_gizmo_arrow(xx, yy, xx + (arrow_length * 0.7), yy - (arrow_length * 0.7), c_control_blue, axis_hover = 2, arrow_width)
			break
			
		case e_gizmo.ROTATE:
			// X Axis circle
			draw_circle_ext(xx + arrow_length, yy, 8 * scale, c_control_red, axis_hover = 0)
			
			// Y Axis circle
			draw_circle_ext(xx, yy + arrow_length, 8 * scale, c_control_green, axis_hover = 1)
			
			// Z Axis circle (perspective)
			draw_circle_ext(xx + (arrow_length * 0.7), yy - (arrow_length * 0.7), 8 * scale, c_control_blue, axis_hover = 2)
			break
			
		case e_gizmo.SCALE:
			// Cube at origin
			draw_box_rounded(xx - 4 * scale, yy - 4 * scale, 8 * scale, 8 * scale, c_accent, 1, true, true, true, true, 2)
			
			// Corner cubes for scale
			draw_box_rounded(xx + arrow_length - 4 * scale, yy - 4 * scale, 8 * scale, 8 * scale, c_control_red, axis_hover = 0 ? 1 : 0.7, true, true, true, true, 2)
			draw_box_rounded(xx - 4 * scale, yy + arrow_length - 4 * scale, 8 * scale, 8 * scale, c_control_green, axis_hover = 1 ? 1 : 0.7, true, true, true, true, 2)
			break
	}
	
	// Center sphere
	draw_circle_ext(xx, yy, 6 * scale, c_accent, 1)
}

/// draw_gizmo_arrow(x1, y1, x2, y2, color, is_hover, width)
function draw_gizmo_arrow(x1, y1, x2, y2, color, is_hover, width)
{
	var arrow_alpha = is_hover ? 1 : 0.8
	var arrow_size = 8
	
	// Line
	draw_line_ext(x1, y1, x2, y2, width, width, color, arrow_alpha)
	
	// Arrowhead (triangle)
	var angle = point_direction(x1, y1, x2, y2)
	var arrow_x = x2 + cos(angle) * arrow_size
	var arrow_y = y2 + sin(angle) * arrow_size
	
	// Draw triangle arrowhead
	var angle1 = angle + 150
	var angle2 = angle - 150
	var corner1_x = arrow_x + cos(angle1) * arrow_size
	var corner1_y = arrow_y + sin(angle1) * arrow_size
	var corner2_x = arrow_x + cos(angle2) * arrow_size
	var corner2_y = arrow_y + sin(angle2) * arrow_size
	
	draw_triangle(x2, y2, corner1_x, corner1_y, corner2_x, corner2_y, false, color, arrow_alpha)
	
	// Glow on hover
	if (is_hover)
	{
		draw_line_ext(x1, y1, x2, y2, width + 4, width + 4, color, arrow_alpha * 0.3)
	}
}
