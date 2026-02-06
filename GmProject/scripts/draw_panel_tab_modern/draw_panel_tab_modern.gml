/// draw_panel_tab_modern(x, y, width, height, label, icon, is_active, is_closeable)
/// Modern tab with better styling
function draw_panel_tab_modern(xx, yy, width, height, label, icon = -1, is_active, is_closeable = true)
{
	var tab_color, tab_alpha, text_color, underline_height
	var padding = 8
	var icon_size = 16
	
	// Tab background (active vs inactive)
	if (is_active)
	{
		tab_color = c_level_middle
		tab_alpha = 1
		text_color = c_accent
		underline_height = 3
	}
	else
	{
		tab_color = c_level_top
		tab_alpha = 0.5
		text_color = c_text_secondary
		underline_height = 1
	}
	
	// Tab background
	draw_box(xx, yy, width, height, false, tab_color, tab_alpha)
	
	// Active indicator (bottom line)
	if (is_active)
	{
		draw_box(xx, yy + height - underline_height, width, underline_height, false, c_accent, 1)
	}
	
	// Icon (if provided)
	var content_x = xx + padding
	if (icon != -1)
	{
		draw_image(spr_icons, icon, content_x, yy + height/2, icon_size/16, icon_size/16, text_color, 1)
		content_x += icon_size + 4
	}
	
	// Label
	draw_label(label, content_x, yy + height/2, fa_left, fa_middle, text_color, a_text_main)
	
	// Close button (if closeable and active)
	if (is_closeable && is_active)
	{
		draw_image(spr_icons, icons.CLOSE, xx + width - padding - 12, yy + height/2, 0.75, 0.75, text_color, 0.6)
	}
	
	// Separator
	draw_line_ext(xx + width - 1, yy, xx + width - 1, yy + height, 1, 1, c_border, a_border)
}
