/// draw_button_accent_modern(x, y, width, height, index)
/// Enhanced version with glow, better shadows, and smooth transitions
function draw_button_accent_modern(xx, yy, width, height, index)
{
	var mouseon, mouseclick, accent;
	width = floor(width)
	height = floor(height)
	
	if (xx + width < content_x || xx > content_x + content_width || yy + height < content_y || yy > content_y + content_height)
		return 0
	
	mouseon = app_mouse_box(xx, yy, width, height) && content_mouseon
	mouseclick = mouseon && mouse_left
	
	if (index < 9)
		accent = setting_theme.accent_list[index]
	else
		accent = null
	
	if (mouseon)
		mouse_cursor = cr_handpoint
	
	microani_set("accentlistitem" + string(index), null, mouseon, mouseclick, setting_accent = index, 0.5)
	microani_update(mouseon, mouseclick, setting_accent = index)
	
	if (accent != null)
	{
		// Draw main button
		draw_box_rounded(xx, yy, width, height, accent, 1, true, true, true, true, 3)
		
		// NEW: Add glow effect on hover
		var glow_alpha = microani_arr[e_microani.HOVER] * 0.25
		draw_box_rounded(xx - 2, yy - 2, width + 4, height + 4, accent, glow_alpha, true, true, true, true, 3)
		
		// Draw checkmark with smooth animation
		draw_image(spr_icons, icons.TICK, xx + width/2, yy + height/2, 1, 1, c_level_middle, microani_arr[e_microani.ACTIVE])
	}
	else
	{
		// Custom color picker button
		draw_outline(xx + 1, yy + 1, width - 2, height - 2, 1, c_border, a_border)
		draw_box_rounded(xx, yy, width, height, setting_accent_custom, microani_arr[e_microani.ACTIVE], true, true, true, true, 3)
		draw_image(spr_icons, icons.PICKER, xx + width/2, yy + height/2, 1, 1, merge_color(c_text_secondary, c_level_middle, microani_arr[e_microani.ACTIVE]), lerp(a_text_secondary, 1, microani_arr[e_microani.ACTIVE]))
		tip_set(text_get("tooltipcustomaccentcolor"), xx, yy, width, height)
	}
	
	// Smooth hover/press animation with easing
	var buttoncolor, buttonalpha;
	var ease_hover = ease_bezier_curve(microani_arr[e_microani.HOVER], 0.34, 1.56, 0.64, 1)
	var ease_press = ease_bezier_curve(microani_arr[e_microani.PRESS], 0.34, 1.56, 0.64, 1)
	
	buttoncolor = merge_color(c_white, c_black, ease_press)
	buttonalpha = lerp(0, .17, ease_hover * (1 - ease_press))
	buttonalpha = lerp(buttonalpha, .22, ease_press)
	
	draw_box_rounded(xx, yy, width, height, buttoncolor, buttonalpha, true, true, true, true, 3)
	draw_box_hover(xx, yy, width, height, ease_hover)
	
	if (mouseon && mouse_left_released)
	{
		setting_accent = index
		update_interface_timeout = current_time + 10000
		update_interface_wait = true
		return true
	}
}
