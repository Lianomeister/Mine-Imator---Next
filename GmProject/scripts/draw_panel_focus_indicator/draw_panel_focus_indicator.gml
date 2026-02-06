/// draw_panel_focus_indicator(x, y, width, height, is_focused)
/// Visual indicator for focused panel
function draw_panel_focus_indicator(xx, yy, width, height, is_focused)
{
	if (!is_focused)
		return
	
	// Glow around focused panel
	draw_box_glow(xx - 2, yy - 2, width + 4, height + 4, c_accent, 0.2)
	
	// Highlight border
	draw_outline(xx, yy, width, height, 2, c_accent, 0.3)
}
