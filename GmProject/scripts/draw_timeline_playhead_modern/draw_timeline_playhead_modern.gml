/// draw_timeline_playhead_modern(x, y, height, frame, fps)
/// Modern playhead with shadow and position indicator
function draw_timeline_playhead_modern(xx, yy, height, frame, fps)
{
	var playhead_width = 12
	var playhead_color = c_accent
	
	// Playhead shadow
	draw_dropshadow(xx - playhead_width/2, yy, playhead_width, height, c_black, 0.3)
	
	// Main playhead bar
	draw_box_rounded(xx - playhead_width/2, yy, playhead_width, height, playhead_color, 1, true, true, true, true, 2)
	
	// Playhead indicator (triangle at top)
	draw_triangle(xx - playhead_width/2 - 3, yy, xx + playhead_width/2 + 3, yy, xx, yy - 8, false, playhead_color, 1)
	
	// Frame label
	var frame_text = string(frame)
	draw_label(frame_text, xx, yy - 15, fa_center, fa_bottom, c_text_main, a_text_main)
}
