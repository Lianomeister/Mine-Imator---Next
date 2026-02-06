/// draw_viewport_info_overlay(x, y, width, height, camera_pos, zoom_level, grid_size)
/// Viewport information display
function draw_viewport_info_overlay(xx, yy, width, height, camera_pos, zoom_level, grid_size)
{
	var info_x = xx + 12
	var info_y = yy + 12
	var line_height = 16
	
	// Semi-transparent background
	draw_box_rounded(info_x - 6, info_y - 6, 200, 80, c_level_bottom, 0.8, true, true, true, true, 4)
	
	// Camera info
	var cam_text = "Cam: " + string(round(camera_pos.x)) + ", " + string(round(camera_pos.y)) + ", " + string(round(camera_pos.z))
	draw_label(cam_text, info_x, info_y, fa_left, fa_top, c_text_secondary, a_text_secondary)
	info_y += line_height
	
	// Zoom level
	var zoom_text = "Zoom: " + string(round(zoom_level * 100)) + "%"
	draw_label(zoom_text, info_x, info_y, fa_left, fa_top, c_text_secondary, a_text_secondary)
	info_y += line_height
	
	// Grid size
	var grid_text = "Grid: " + string(grid_size)
	draw_label(grid_text, info_x, info_y, fa_left, fa_top, c_text_secondary, a_text_secondary)
	info_y += line_height
	
	// FPS
	var fps_text = "FPS: " + string(fps)
	draw_label(fps_text, info_x, info_y, fa_left, fa_top, c_text_secondary, a_text_secondary)
}
