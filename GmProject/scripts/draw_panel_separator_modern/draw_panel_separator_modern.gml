/// draw_panel_separator_modern(x, y, width, height, direction)
/// Modern panel separator with better visuals
/// direction: "horizontal", "vertical"
function draw_panel_separator_modern(xx, yy, width, height, direction)
{
	switch(direction)
	{
		case "horizontal":
			// Horizontal separator (divides left/right or similar)
			var sep_x = xx + width/2
			
			// Main separator line
			draw_line_ext(sep_x, yy, sep_x, yy + height, 2, 2, c_border, a_border)
			
			// Subtle shadow effect
			draw_line_ext(sep_x - 1, yy, sep_x - 1, yy + height, 1, 1, c_black, 0.1)
			draw_line_ext(sep_x + 1, yy, sep_x + 1, yy + height, 1, 1, c_white, 0.05)
			break
			
		case "vertical":
			// Vertical separator (divides top/bottom)
			var sep_y = yy + height/2
			
			// Main separator line
			draw_line_ext(xx, sep_y, xx + width, sep_y, 2, 2, c_border, a_border)
			
			// Subtle shadow effect
			draw_line_ext(xx, sep_y - 1, xx + width, sep_y - 1, 1, 1, c_black, 0.1)
			draw_line_ext(xx, sep_y + 1, xx + width, sep_y + 1, 1, 1, c_white, 0.05)
			break
	}
}
