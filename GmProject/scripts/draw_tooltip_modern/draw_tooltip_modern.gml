/// draw_tooltip_modern(text, x, y, arrow_direction)
/// Modern tooltip with arrow and smooth background
/// @arg text - Tooltip text
/// @arg x - X position
/// @arg y - Y position
/// @arg arrow_direction - "top", "bottom", "left", "right"
function draw_tooltip_modern(text, xx, yy, arrow_direction = "bottom")
{
	var padding = 12
	var text_width = string_width(text) + (padding * 2)
	var text_height = string_height(text) + (padding * 2)
	var arrow_size = 8
	
	// Adjust position based on arrow direction
	var tooltip_x = xx
	var tooltip_y = yy
	
	if (arrow_direction == "bottom")
		tooltip_y -= (text_height + arrow_size)
	else if (arrow_direction == "top")
		tooltip_y += arrow_size
	
	// Draw background
	draw_box_rounded(tooltip_x, tooltip_y, text_width, text_height, c_level_bottom, 1, true, true, true, true, 4)
	draw_dropshadow(tooltip_x, tooltip_y, text_width, text_height, c_black, 0.3)
	
	// Draw arrow (triangle)
	if (arrow_direction == "bottom")
	{
		draw_triangle(xx, yy, xx - arrow_size, yy - arrow_size, xx + arrow_size, yy - arrow_size, false, c_level_bottom, 1)
	}
	
	// Draw text
	draw_label(text, tooltip_x + padding, tooltip_y + (text_height / 2), fa_left, fa_middle, c_text_main, a_text_main)
}
