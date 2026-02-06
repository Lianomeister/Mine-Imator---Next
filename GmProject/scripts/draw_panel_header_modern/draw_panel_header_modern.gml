/// draw_panel_header_modern(x, y, width, height, title, icon, can_close, can_pin, is_pinned)
/// Modern panel header with buttons
function draw_panel_header_modern(xx, yy, width, height, title, icon = -1, can_close = true, can_pin = true, is_pinned = false)
{
	var header_color = c_level_bottom
	var header_alpha = 1
	var button_size = 20
	var button_spacing = 4
	var padding = 8
	
	// Header background with gradient effect
	draw_box_rounded(xx, yy, width, height, header_color, header_alpha, true, true, false, false, 3)
	
	// Header separator line
	draw_line_ext(xx, yy + height - 1, xx + width, yy + height - 1, 1, 1, c_border, a_border)
	
	// Icon (if provided)
	var content_x = xx + padding
	if (icon != -1)
	{
		draw_image(spr_icons, icon, content_x, yy + height/2, 1, 1, c_accent, 1)
		content_x += 24
	}
	
	// Title
	draw_label(title, content_x, yy + height/2, fa_left, fa_middle, c_text_main, a_text_main)
	
	// Buttons (right side)
	var button_x = xx + width - padding - button_size
	
	// Pin button
	if (can_pin)
	{
		var pin_icon = is_pinned ? icons.PIN : icons.PIN_OFF
		draw_image(spr_icons, pin_icon, button_x, yy + height/2, 1, 1, c_text_secondary, 0.8)
		button_x -= button_size + button_spacing
	}
	
	// Close button
	if (can_close)
	{
		draw_image(spr_icons, icons.CLOSE, button_x, yy + height/2, 1, 1, c_text_secondary, 0.8)
	}
}
