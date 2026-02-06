/// draw_viewport_toolbar_modern(x, y, view, selected_tool)
/// Modern viewport toolbar with grouped tools
function draw_viewport_toolbar_modern(xx, yy, view, selected_tool)
{
	var toolbar_width = 160
	var toolbar_height = 40
	var button_size = 32
	var button_spacing = 4
	var group_spacing = 12
	
	// Toolbar background
	draw_dropshadow(xx, yy, toolbar_width, toolbar_height, c_black, 0.3)
	draw_box_rounded(xx, yy, toolbar_width, toolbar_height, c_level_top, 1, true, true, true, true, 4)
	draw_outline(xx, yy, toolbar_width, toolbar_height, 1, c_border, a_border)
	
	// Tool buttons
	var button_x = xx + 4
	var button_y = yy + 4
	
	// Selection tools group
	draw_viewport_tool_button(button_x, button_y, button_size, button_size, icons.SELECT, "Select", selected_tool = e_tool.SELECT)
	button_x += button_size + button_spacing
	
	// Transform tools group
	draw_viewport_tool_button(button_x, button_y, button_size, button_size, icons.MOVE, "Move", selected_tool = e_tool.MOVE)
	button_x += button_size + button_spacing
	
	draw_viewport_tool_button(button_x, button_y, button_size, button_size, icons.ROTATE, "Rotate", selected_tool = e_tool.ROTATE)
	button_x += button_size + button_spacing
	
	draw_viewport_tool_button(button_x, button_y, button_size, button_size, icons.SCALE, "Scale", selected_tool = e_tool.SCALE)
}

/// draw_viewport_tool_button(x, y, width, height, icon, label, is_selected)
function draw_viewport_tool_button(xx, yy, width, height, icon, label, is_selected)
{
	var bg_color, bg_alpha, icon_alpha
	
	// Background
	bg_color = is_selected ? c_accent : c_level_middle
	bg_alpha = is_selected ? 1 : 0.7
	
	draw_box_rounded(xx, yy, width, height, bg_color, bg_alpha, true, true, true, true, 3)
	
	// Glow on select
	if (is_selected)
	{
		draw_box_glow(xx - 2, yy - 2, width + 4, height + 4, c_accent, 0.3)
	}
	
	// Icon
	icon_alpha = is_selected ? 1 : 0.8
	draw_image(spr_icons, icon, xx + width/2, yy + height/2, 1, 1, c_text_main, icon_alpha)
	
	// Tooltip
	tip_set(label, xx, yy, width, height)
}
