/// draw_timeline_keyframe_modern(x, y, size, type, is_selected, ease_type)
/// Enhanced keyframe visualization with color coding
function draw_timeline_keyframe_modern(xx, yy, size, type, is_selected, ease_type = e_ease.LINEAR)
{
	var keyframe_color, keyframe_size
	keyframe_size = is_selected ? size + 4 : size
	
	// Color based on keyframe type
	switch(type)
	{
		case e_tl_value_type.POSITION:
			keyframe_color = c_control_cyan
			break
		case e_tl_value_type.ROTATION:
			keyframe_color = c_control_red
			break
		case e_tl_value_type.SCALE:
			keyframe_color = c_control_green
			break
		default:
			keyframe_color = c_accent
			break
	}
	
	// Keyframe glow on select
	if (is_selected)
	{
		draw_box_glow(xx - keyframe_size/2, yy - keyframe_size/2, keyframe_size, keyframe_size, keyframe_color, 0.4)
	}
	
	// Main keyframe diamond shape
	draw_triangle(xx, yy - keyframe_size/2, xx + keyframe_size/2, yy, xx, yy + keyframe_size/2, false, keyframe_color, 1)
	draw_triangle(xx - keyframe_size/2, yy, xx, yy + keyframe_size/2, xx, yy - keyframe_size/2, false, keyframe_color, 1)
	
	// Ease type indicator (small icon)
	if (ease_type != e_ease.LINEAR)
	{
		var ease_icon = (ease_type = e_ease.BEZIER) ? icons.CURVE : icons.CHECK
		draw_image(spr_icons, ease_icon, xx, yy, 0.6, 0.6, c_text_secondary, 0.8)
	}
	
	// Selection outline
	if (is_selected)
	{
		draw_outline(xx - keyframe_size/2, yy - keyframe_size/2, keyframe_size, keyframe_size, 1, c_text_main, 0.6)
	}
}
