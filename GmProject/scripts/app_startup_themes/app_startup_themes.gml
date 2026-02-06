/// app_startup_themes() - MODERNIZED FOR MINE IMATOR: NEXT
/// New modern themes: Nord, Dracula, Solarized Dark
/// Enhanced color system with better contrast ratios

function app_startup_themes()
{
	// Themes
	globalvar theme_light, theme_dark, theme_darker, theme_nord, theme_dracula, theme_solarized;

	// Colors used in interface
	globalvar c_accent, a_accent, c_accent_hover, a_accent_hover, c_accent_pressed, a_accent_pressed, c_hover, a_hover, c_accent_overlay, a_accent_overlay;
	globalvar c_text_main, a_text_main, c_text_secondary, a_text_secondary, c_text_tertiary, a_text_tertiary;
	globalvar c_border, a_border, c_overlay, a_overlay, a_dark_overlay;
	globalvar c_level_top, c_level_middle, c_level_bottom, c_button_text, a_button_text;
	globalvar c_viewport_top, c_viewport_bottom, c_error, c_warning, c_success, c_axisred, c_axisgreen, c_axisblue, c_axiscyan, c_axisyellow, c_axismagenta, c_bend;
	globalvar c_control_red, c_control_green, c_control_blue, c_control_cyan, c_control_yellow, c_control_magenta, c_control_white;

	update_interface_timeout = current_time
	update_interface_wait = false

	// Alphas - Enhanced for better visibility
	a_accent = 1
	a_accent_hover = 1
	a_accent_pressed = 1
	a_hover = .45
	a_accent_overlay = .10

	a_text_main = .95 // Improved from .9
	a_text_secondary = .65 // Improved from .6
	a_text_tertiary = .40 // Improved from .35

	a_border = .18 // Improved from .15
	a_overlay = .08 // Improved from .05

	#region Light theme (Original)

	theme_light = new_obj(obj_theme)

	with (theme_light)
	{
		name = "light"
		dark = false
		pattern = 0
		accent_list = array()
		array_add(accent_list, hex_to_color("DB3030"))
		array_add(accent_list, hex_to_color("D85B00"))
		array_add(accent_list, hex_to_color("D68E02"))
		array_add(accent_list, hex_to_color("34A100"))
		array_add(accent_list, hex_to_color("0D8E41"))
		array_add(accent_list, hex_to_color("048E8E"))
		array_add(accent_list, hex_to_color("2144F1"))
		array_add(accent_list, hex_to_color("982BCB"))
		array_add(accent_list, hex_to_color("E93983"))

		level_top = hex_to_color("F7FAFC")
		level_middle = hex_to_color("ECEFF1")
		level_bottom = hex_to_color("D7DFE2")
		viewport_top = hex_to_color("F0FFFF")
		viewport_bottom = hex_to_color("B5E8F2")

		text_main = hex_to_color("0D1214")
		text_secondary = text_main
		text_tertiary = text_main
		border = text_main
		overlay = text_main
		button_text = hex_to_color("FFFFFF")
		button_text_alpha = .91
		dark_overlay_alpha = .15

		// Other colors
		red_error = hex_to_color("FF1D0F")
		yellow_warning = hex_to_color("FFC01E")
		green_success = hex_to_color("61C159")
		red = hex_to_color("FF5656")
		green = hex_to_color("4AB758")
		blue = hex_to_color("1370FB")
		pink = hex_to_color("FF5FFF")
		cyan = hex_to_color("51C2FF")
		yellow = hex_to_color("F4CC5D")
		magenta = hex_to_color("FF37E8")

		toast_color[e_toast.INFO] = hex_to_color("158AF5")
		toast_color[e_toast.POSITIVE] = hex_to_color("64A56B")
		toast_color[e_toast.WARNING] = hex_to_color("D09522")
		toast_color[e_toast.NEGATIVE] = hex_to_color("FF1D0F")
	}

	#endregion

	#region Dark theme (Original - Enhanced)

	theme_dark = new_obj(obj_theme)

	with (theme_dark)
	{
		name = "dark"
		dark = true
		pattern = 0
		accent_list = array()
		array_add(accent_list, hex_to_color("FF7E76"))
		array_add(accent_list, hex_to_color("FFA360"))
		array_add(accent_list, hex_to_color("FFF065"))
		array_add(accent_list, hex_to_color("8BFF6D"))
		array_add(accent_list, hex_to_color("4EF390"))
		array_add(accent_list, hex_to_color("49EED9"))
		array_add(accent_list, hex_to_color("98BBFF"))
		array_add(accent_list, hex_to_color("DF9CFF"))
		array_add(accent_list, hex_to_color("FF9BC5"))

		level_top = hex_to_color("37444A")
		level_middle = hex_to_color("2B373D")
		level_bottom = hex_to_color("18242A")
		viewport_top = hex_to_color("2B373D")
		viewport_bottom = hex_to_color("839096")

		text_main = hex_to_color("FFFFFF")
		text_secondary = text_main
		text_tertiary = text_main
		border = text_main
		overlay = text_main
		button_text = hex_to_color("000000")
		button_text_alpha = .91
		dark_overlay_alpha = .25

		// Other colors
		red_error = hex_to_color("FF7A72")
		yellow_warning = hex_to_color("FFEB36")
		green_success = hex_to_color("64E879")
		red = hex_to_color("FF5656")
		green = hex_to_color("23FF88")
		blue = hex_to_color("1370FB")
		pink = hex_to_color("FF5FFF")
		cyan = hex_to_color("51C2FF")
		yellow = hex_to_color("FFD969")
		magenta = hex_to_color("FF37E8")

		toast_color[e_toast.INFO] = hex_to_color("7EC1FF")
		toast_color[e_toast.POSITIVE] = hex_to_color("64E879")
		toast_color[e_toast.WARNING] = hex_to_color("FFEB36")
		toast_color[e_toast.NEGATIVE] = hex_to_color("FF7A72")
	}

	#endregion

	#region Darker theme (Original - Enhanced)

	theme_darker = new_obj(obj_theme)

	with (theme_darker)
	{
		name = "darker"
		dark = true
		pattern = 0
		accent_list = array()
		array_add(accent_list, hex_to_color("FF7E76"))
		array_add(accent_list, hex_to_color("FFA360"))
		array_add(accent_list, hex_to_color("FFF065"))
		array_add(accent_list, hex_to_color("8BFF6D"))
		array_add(accent_list, hex_to_color("4EF390"))
		array_add(accent_list, hex_to_color("49EED9"))
		array_add(accent_list, hex_to_color("98BBFF"))
		array_add(accent_list, hex_to_color("DF9CFF"))
		array_add(accent_list, hex_to_color("FF9BC5"))

		level_top = hex_to_color("1C1C1C")
		level_middle = hex_to_color("101010")
		level_bottom = hex_to_color("050505")
		viewport_top = hex_to_color("484848")
		viewport_bottom = hex_to_color("2B2B2B")

		text_main = hex_to_color("FFFFFF")
		text_secondary = text_main
		text_tertiary = text_main
		border = text_main
		overlay = text_main
		button_text = hex_to_color("000000")
		button_text_alpha = .91
		dark_overlay_alpha = .65

		// Other colors
		red_error = hex_to_color("FF7A72")
		yellow_warning = hex_to_color("FFEB36")
		green_success = hex_to_color("64E879")
		red = hex_to_color("FF5656")
		green = hex_to_color("23FF88")
		blue = hex_to_color("1370FB")
		pink = hex_to_color("FF5FFF")
		cyan = hex_to_color("51C2FF")
		yellow = hex_to_color("FFD969")
		magenta = hex_to_color("FF37E8")

		toast_color[e_toast.INFO] = hex_to_color("7EC1FF")
		toast_color[e_toast.POSITIVE] = hex_to_color("64E879")
		toast_color[e_toast.WARNING] = hex_to_color("FFEB36")
		toast_color[e_toast.NEGATIVE] = hex_to_color("FF7A72")
	}

	#endregion

	#region Nord theme - NEW! (Arctic, north-bluish color palette)
	// Based on popular Nord theme used by developers
	// Great contrast and modern look

	theme_nord = new_obj(obj_theme)

	with (theme_nord)
	{
		name = "nord"
		dark = true
		pattern = 0
		accent_list = array()
		// Nord Frost colors (blues and cyans)
		array_add(accent_list, hex_to_color("88C0D0")) // Frost 1 - Cyan
		array_add(accent_list, hex_to_color("81A1C1")) // Frost 2 - Light Blue
		array_add(accent_list, hex_to_color("5E81AC")) // Frost 3 - Blue
		array_add(accent_list, hex_to_color("BF616A")) // Aurora 1 - Red
		array_add(accent_list, hex_to_color("D08770")) // Aurora 2 - Orange
		array_add(accent_list, hex_to_color("EBCB8B")) // Aurora 3 - Yellow
		array_add(accent_list, hex_to_color("A3BE8C")) // Aurora 4 - Green
		array_add(accent_list, hex_to_color("B48EAD")) // Aurora 5 - Purple
		array_add(accent_list, hex_to_color("81C1D1")) // Extra - Cyan accent

		// Nord Polar Night colors (dark grays/blues)
		level_top = hex_to_color("3B4252")    // Polar Night 2
		level_middle = hex_to_color("2E3440")  // Polar Night 1
		level_bottom = hex_to_color("1E2530")  // Polar Night 0 (darker)
		viewport_top = hex_to_color("434C5E")  // Polar Night 3
		viewport_bottom = hex_to_color("4C566A") // Polar Night 4

		text_main = hex_to_color("ECEFF4")
		text_secondary = text_main
		text_tertiary = text_main
		border = hex_to_color("4C566A")
		overlay = text_main
		button_text = hex_to_color("ECEFF4")
		button_text_alpha = .95
		dark_overlay_alpha = .35

		// Nord Aurora colors
		red_error = hex_to_color("BF616A")
		yellow_warning = hex_to_color("EBCB8B")
		green_success = hex_to_color("A3BE8C")
		red = hex_to_color("BF616A")
		green = hex_to_color("A3BE8C")
		blue = hex_to_color("81A1C1")
		pink = hex_to_color("B48EAD")
		cyan = hex_to_color("88C0D0")
		yellow = hex_to_color("EBCB8B")
		magenta = hex_to_color("B48EAD")

		toast_color[e_toast.INFO] = hex_to_color("88C0D0")
		toast_color[e_toast.POSITIVE] = hex_to_color("A3BE8C")
		toast_color[e_toast.WARNING] = hex_to_color("EBCB8B")
		toast_color[e_toast.NEGATIVE] = hex_to_color("BF616A")
	}

	#endregion

	#region Dracula theme - NEW! (Dark vampire theme)
	// Based on popular Dracula theme
	// High contrast, vibrant colors on dark background

	theme_dracula = new_obj(obj_theme)

	with (theme_dracula)
	{
		name = "dracula"
		dark = true
		pattern = 0
		accent_list = array()
		// Dracula vibrant colors
		array_add(accent_list, hex_to_color("FF79C6")) // Pink
		array_add(accent_list, hex_to_color("FF5E7E")) // Red
		array_add(accent_list, hex_to_color("FFB86C")) // Orange
		array_add(accent_list, hex_to_color("F1FA8C")) // Yellow
		array_add(accent_list, hex_to_color("50FA7B")) // Green
		array_add(accent_list, hex_to_color("8BE9FD")) // Cyan
		array_add(accent_list, hex_to_color("BD93F9")) // Purple
		array_add(accent_list, hex_to_color("FF79C6")) // Pink (duplicate for variety)
		array_add(accent_list, hex_to_color("50FA7B")) // Green (duplicate)

		// Dracula background colors
		level_top = hex_to_color("44475A")    // Selection
		level_middle = hex_to_color("282A36")  // Background
		level_bottom = hex_to_color("1A1C25")  // Darker background
		viewport_top = hex_to_color("3C3E4A")
		viewport_bottom = hex_to_color("565A6E")

		text_main = hex_to_color("F8F8F2")
		text_secondary = text_main
		text_tertiary = text_main
		border = hex_to_color("6272A4")
		overlay = text_main
		button_text = hex_to_color("282A36")
		button_text_alpha = .95
		dark_overlay_alpha = .40

		// Dracula colors
		red_error = hex_to_color("FF5555")
		yellow_warning = hex_to_color("F1FA8C")
		green_success = hex_to_color("50FA7B")
		red = hex_to_color("FF5555")
		green = hex_to_color("50FA7B")
		blue = hex_to_color("8BE9FD")
		pink = hex_to_color("FF79C6")
		cyan = hex_to_color("8BE9FD")
		yellow = hex_to_color("F1FA8C")
		magenta = hex_to_color("BD93F9")

		toast_color[e_toast.INFO] = hex_to_color("8BE9FD")
		toast_color[e_toast.POSITIVE] = hex_to_color("50FA7B")
		toast_color[e_toast.WARNING] = hex_to_color("F1FA8C")
		toast_color[e_toast.NEGATIVE] = hex_to_color("FF5555")
	}

	#endregion

	#region Solarized Dark theme - NEW! (Popular coding theme)
	// Based on Solarized color scheme
	// Scientifically optimized colors, excellent readability

	theme_solarized = new_obj(obj_theme)

	with (theme_solarized)
	{
		name = "solarized"
		dark = true
		pattern = 0
		accent_list = array()
		// Solarized accent colors
		array_add(accent_list, hex_to_color("DC322F")) // Red
		array_add(accent_list, hex_to_color("CB4B16")) // Orange
		array_add(accent_list, hex_to_color("B58900")) // Yellow
		array_add(accent_list, hex_to_color("859900")) // Green
		array_add(accent_list, hex_to_color("2AA198")) // Cyan
		array_add(accent_list, hex_to_color("268BD2")) // Blue
		array_add(accent_list, hex_to_color("6C71C4")) // Violet
		array_add(accent_list, hex_to_color("D33682")) // Magenta
		array_add(accent_list, hex_to_color("2AA198")) // Cyan (duplicate)

		// Solarized base colors
		level_top = hex_to_color("073642")    // Base02
		level_middle = hex_to_color("002B36")  // Base03
		level_bottom = hex_to_color("001F28")  // Even darker
		viewport_top = hex_to_color("586E75")  // Base01
		viewport_bottom = hex_to_color("657B83") // Base00

		text_main = hex_to_color("93A1A1")
		text_secondary = text_main
		text_tertiary = text_main
		border = hex_to_color("073642")
		overlay = text_main
		button_text = hex_to_color("FDF6E3")
		button_text_alpha = .95
		dark_overlay_alpha = .30

		// Solarized accent colors
		red_error = hex_to_color("DC322F")
		yellow_warning = hex_to_color("B58900")
		green_success = hex_to_color("859900")
		red = hex_to_color("DC322F")
		green = hex_to_color("859900")
		blue = hex_to_color("268BD2")
		pink = hex_to_color("D33682")
		cyan = hex_to_color("2AA198")
		yellow = hex_to_color("B58900")
		magenta = hex_to_color("6C71C4")

		toast_color[e_toast.INFO] = hex_to_color("268BD2")
		toast_color[e_toast.POSITIVE] = hex_to_color("859900")
		toast_color[e_toast.WARNING] = hex_to_color("B58900")
		toast_color[e_toast.NEGATIVE] = hex_to_color("DC322F")
	}

	#endregion

	// View controls use darker theme colors for contrast
	c_control_red = theme_darker.red
	c_control_green = theme_darker.green
	c_control_blue = theme_darker.blue
	c_control_cyan = theme_darker.cyan
	c_control_yellow = theme_darker.yellow
	c_control_magenta = theme_darker.magenta
	c_control_white = theme_light.level_middle
}
