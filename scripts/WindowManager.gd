extends Node

# TODO: Save default_window_size
var default_window_size : Vector2i = Vector2i(1280,800)

func change_window_size(size: Vector2i):
	DisplayServer.window_set_size(size)

# NOTE: This function can be reused to toggle fullscreen mode
func toggle_fullscreen():
	printt("window mode:", DisplayServer.window_get_mode())
	if DisplayServer.window_get_mode() == 0:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		if DisplayServer.window_get_size() == Vector2i(get_viewport().get_visible_rect().size):
			change_window_size(default_window_size)
	return DisplayServer.window_get_mode()
