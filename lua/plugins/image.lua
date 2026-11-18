return {
    "3rd/image.nvim",
    build = false,
    opts = {
        backend = "kitty",
        processor = "magick_cli",
        max_width = 100,
        max_height = 12,
        window_overlap_clear_enabled = true,
        editor_only_render_when_focused = false,
        hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" },
    },
}
