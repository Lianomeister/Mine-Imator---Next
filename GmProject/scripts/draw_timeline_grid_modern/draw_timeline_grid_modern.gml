/// draw_timeline_grid_modern(x, y, width, height, start_frame, frames_visible, fps, zoom)
/// Modern grid background with frame labels
function draw_timeline_grid_modern(xx, yy, width, height, start_frame, frames_visible, fps, zoom)
{
	var frame, frame_x, frame_label
	var grid_step = ceil(10 / zoom) // Grid line every 10 frames
	var label_step = grid_step * 2 // Labels every 20 frames
	
	// Draw subtle grid lines
	for (var i = 0; i < frames_visible; i += grid_step)
	{
		frame = start_frame + i
		frame_x = xx + (i * zoom)
		
		// Grid line
		var line_alpha = (i mod (grid_step * 2)) = 0 ? 0.1 : 0.05
		draw_line_ext(frame_x, yy, frame_x, yy + height, 1, 1, c_border, line_alpha)
		
		// Frame label (every N frames)
		if (i mod label_step = 0)
		{
			frame_label = string(frame)
			draw_label(frame_label, frame_x, yy + 4, fa_center, fa_top, c_text_tertiary, 0.5)
		}
	}
	
	// Highlighted frame groups (every 30 frames)
	for (var i = 0; i < frames_visible; i += 30)
	{
		frame_x = xx + (i * zoom)
		draw_line_ext(frame_x, yy, frame_x, yy + height, 2, 2, c_text_tertiary, 0.15)
	}
}
