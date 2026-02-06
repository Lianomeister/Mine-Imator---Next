/// draw_viewport_grid_modern(x, y, width, height, grid_size, grid_alpha)
/// Modern viewport grid with better visualization
function draw_viewport_grid_modern(xx, yy, width, height, grid_size, grid_alpha = 0.3)
{
	var grid_x, grid_y, grid_count_x, grid_count_y, i, j
	var fade_alpha
	
	grid_count_x = ceil(width / grid_size)
	grid_count_y = ceil(height / grid_size)
	
	// Draw grid lines with fade effect
	for (i = 0; i <= grid_count_x; i++)
	{
		grid_x = xx + (i * grid_size)
		fade_alpha = grid_alpha * (1 - abs((grid_x - (xx + width/2)) / (width/2)))
		draw_line_ext(grid_x, yy, grid_x, yy + height, 1, 1, c_border, fade_alpha)
		
		// Highlight every 10th line
		if (i mod 10 = 0)
		{
			draw_line_ext(grid_x, yy, grid_x, yy + height, 2, 2, c_text_tertiary, fade_alpha * 1.5)
		}
	}
	
	for (j = 0; j <= grid_count_y; j++)
	{
		grid_y = yy + (j * grid_size)
		fade_alpha = grid_alpha * (1 - abs((grid_y - (yy + height/2)) / (height/2)))
		draw_line_ext(xx, grid_y, xx + width, grid_y, 1, 1, c_border, fade_alpha)
		
		// Highlight every 10th line
		if (j mod 10 = 0)
		{
			draw_line_ext(xx, grid_y, xx + width, grid_y, 2, 2, c_text_tertiary, fade_alpha * 1.5)
		}
	}
	
	// Axis labels
	draw_label("X", xx + width - 20, yy + 10, fa_right, fa_top, c_control_red, 0.6)
	draw_label("Z", xx + 10, yy + height - 10, fa_left, fa_bottom, c_control_blue, 0.6)
}
