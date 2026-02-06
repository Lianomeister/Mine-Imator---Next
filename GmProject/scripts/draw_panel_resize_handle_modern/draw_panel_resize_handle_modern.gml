/// draw_panel_resize_handle_modern(x, y, width, height, direction, is_hover)
/// Modern resize handle with visual feedback
/// direction: "horizontal", "vertical", "corner"
function draw_panel_resize_handle_modern(xx, yy, width, height, direction, is_hover)
{
	var handle_color, handle_size, dot_size, dot_spacing
	handle_color = is_hover ? c_accent : c_text_tertiary
	dot_size = 3
	dot_spacing = 3
	
	switch(direction)
	{
		case "horizontal":
			// Vertical resize handle (left/right)
			var center_x = xx + width/2
			var center_y = yy + height/2
			
			// Draw dots
			for (var i = -2; i <= 2; i++)
			{
				draw_circle_ext(center_x, center_y + (i * dot_spacing), dot_size, handle_color, 1)
			}
			
			// Hover highlight
			if (is_hover)
			{
				draw_line_ext(center_x - 1, yy, center_x - 1, yy + height, 2, 2, handle_color, 0.3)
				draw_line_ext(center_x + 1, yy, center_x + 1, yy + height, 2, 2, handle_color, 0.3)
			}
			break
			
		case "vertical":
			// Horizontal resize handle (top/bottom)
			var center_x = xx + width/2
			var center_y = yy + height/2
			
			// Draw dots
			for (var i = -2; i <= 2; i++)
			{
				draw_circle_ext(center_x + (i * dot_spacing), center_y, dot_size, handle_color, 1)
			}
			
			// Hover highlight
			if (is_hover)
			{
				draw_line_ext(xx, center_y - 1, xx + width, center_y - 1, 2, 2, handle_color, 0.3)
				draw_line_ext(xx, center_y + 1, xx + width, center_y + 1, 2, 2, handle_color, 0.3)
			}
			break
			
		case "corner":
			// Corner resize handle
			var corner_x = xx + width - 4
			var corner_y = yy + height - 4
			
			draw_box_rounded(corner_x - 6, corner_y - 6, 12, 12, handle_color, is_hover ? 0.8 : 0.4, true, true, true, true, 2)
			break
	}
}
