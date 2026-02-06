/// draw_timeline_track_modern(x, y, width, height, track_name, icon, is_selected, is_visible, is_locked)
/// Modern track representation with visibility and lock toggles
function draw_timeline_track_modern(xx, yy, width, height, track_name, icon, is_selected, is_visible, is_locked)
{
	var bg_color, bg_alpha
	
	// Background (lighter if selected)
	bg_color = is_selected ? c_accent : c_level_middle
	bg_alpha = is_selected ? 0.15 : 0
	
	draw_box_rounded(xx, yy, width, height, bg_color, bg_alpha, false, false, false, false, 0)
	
	// Track border on select
	if (is_selected)
	{
		draw_outline(xx, yy, width, height, 2, c_accent, 0.5)
	}
	
	// Icon
	var icon_x = xx + 8
	draw_image(spr_icons, icon, icon_x, yy + height/2, 1, 1, c_text_secondary, 1)
	
	// Track name
	var name_x = icon_x + 24
	draw_label(track_name, name_x, yy + height/2, fa_left, fa_middle, c_text_main, a_text_main)
	
	// Visibility toggle (eye icon)
	var eye_x = xx + width - 60
	var eye_icon = is_visible ? icons.EYE : icons.EYE_CLOSED
	var eye_color = is_visible ? c_text_secondary : c_text_tertiary
	draw_image(spr_icons, eye_icon, eye_x, yy + height/2, 1, 1, eye_color, 1)
	
	// Lock toggle (lock icon)
	var lock_x = xx + width - 30
	var lock_icon = is_locked ? icons.LOCK : icons.UNLOCK
	var lock_color = is_locked ? c_error : c_text_tertiary
	draw_image(spr_icons, lock_icon, lock_x, yy + height/2, 1, 1, lock_color, 1)
}
