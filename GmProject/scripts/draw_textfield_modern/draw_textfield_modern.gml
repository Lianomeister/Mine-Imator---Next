/// draw_textfield_modern(x, y, width, height, placeholder, text, is_focused, is_error, char_limit)
/// Modern textfield with floating label, validation, and smooth animations
function draw_textfield_modern(xx, yy, width, height, placeholder, text, is_focused, is_error, char_limit = -1)
{
	var textcolor, bordercolor, borderalpha, bgcolor;
	width = floor(width)
	height = floor(height)
	
	// Determine colors based on state
	if (is_error)
	{
		bordercolor = c_error
		borderalpha = 1.0
	}
	else if (is_focused)
	{
		bordercolor = c_accent
		borderalpha = 1.0
	}
	else
	{
		bordercolor = c_border
		borderalpha = a_border
	}
	
	// Background
	bgcolor = c_level_middle
	draw_box_rounded(xx, yy, width, height, bgcolor, 1, true, true, true, true, 4)
	
	// Border (smooth animation)
	var border_width = 2
	draw_outline(xx, yy, width, height, border_width, bordercolor, borderalpha)
	
	// Floating label animation
	var label_offset = is_focused ? -25 : 0
	var label_alpha = is_focused ? 1 : 0.6
	draw_label(placeholder, xx + 12, yy + label_offset, fa_left, fa_middle, c_text_secondary, label_alpha)
	
	// Draw text
	draw_label(text, xx + 12, yy + height/2, fa_left, fa_middle, c_text_main, a_text_main)
	
	// Character count (if limit set)
	if (char_limit > 0)
	{
		var char_count_text = string(string_length(text)) + "/" + string(char_limit)
		var char_count_color = (string_length(text) >= char_limit) ? c_error : c_text_tertiary
		draw_label(char_count_text, xx + width - 12, yy + height/2, fa_right, fa_middle, char_count_color, a_text_tertiary)
	}
	
	// Cursor blink animation
	if (is_focused)
	{
		var cursor_alpha = sin(current_time / 500) * 0.5 + 0.5
		var text_width = string_width(text)
		draw_line_ext(xx + 12 + text_width, yy + 5, xx + 12 + text_width, yy + height - 5, 1, 1, c_text_main, cursor_alpha)
	}
}
