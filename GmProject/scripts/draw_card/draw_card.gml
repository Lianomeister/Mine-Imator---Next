/// draw_card(x, y, width, height, title, content, icon)
/// Modern card component with title, content, and optional icon
function draw_card(xx, yy, width, height, title, content, icon = -1)
{
	var padding = 16
	var content_x = xx + padding
	var content_y = yy + padding
	var content_width = width - (padding * 2)
	var content_height = height - (padding * 2)
	
	// Card background with shadow
	draw_dropshadow(xx, yy, width, height, c_black, 0.15)
	draw_box_rounded(xx, yy, width, height, c_level_middle, 1, true, true, true, true, 6)
	
	// Title bar with accent color
	draw_box_rounded(xx, yy, width, 40, c_accent, 0.1, true, true, false, false, 6)
	
	// Icon (if provided)
	if (icon != -1)
		draw_image(spr_icons, icon, xx + padding, yy + 20, 1, 1, c_accent, 1)
	
	// Title text
	draw_label(title, content_x + (icon != -1 ? 32 : 0), yy + 20, fa_left, fa_middle, c_text_main, a_text_main)
	
	// Content text
	draw_label(content, content_x, content_y + 50, fa_left, fa_top, c_text_secondary, a_text_secondary, -1, -1, content_width)
}
