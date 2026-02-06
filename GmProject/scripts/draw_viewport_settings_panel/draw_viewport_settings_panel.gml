/// draw_viewport_settings_panel(x, y, width, settings)
/// Quick viewport settings access
function draw_viewport_settings_panel(xx, yy, width, settings)
{
	var panel_height = 120
	var item_height = 24
	var padding = 8
	
	// Panel background
	draw_box_rounded(xx, yy, width, panel_height, c_level_middle, 1, true, true, true, true, 4)
	draw_dropshadow(xx, yy, width, panel_height, c_black, 0.2)
	
	var item_y = yy + padding
	
	// Grid toggle
	draw_label("Show Grid:", xx + padding, item_y, fa_left, fa_middle, c_text_main, a_text_main)
	draw_togglebutton_modern(xx + width - 40, item_y - 6, 32, 12, settings.show_grid)
	item_y += item_height
	
	// Wireframe toggle
	draw_label("Wireframe:", xx + padding, item_y, fa_left, fa_middle, c_text_main, a_text_main)
	draw_togglebutton_modern(xx + width - 40, item_y - 6, 32, 12, settings.wireframe)
	item_y += item_height
	
	// Light preview toggle
	draw_label("Light Preview:", xx + padding, item_y, fa_left, fa_middle, c_text_main, a_text_main)
	draw_togglebutton_modern(xx + width - 40, item_y - 6, 32, 12, settings.light_preview)
	item_y += item_height
	
	// Snap toggle
	draw_label("Snap to Grid:", xx + padding, item_y, fa_left, fa_middle, c_text_main, a_text_main)
	draw_togglebutton_modern(xx + width - 40, item_y - 6, 32, 12, settings.snap_grid)
}
