local status, telescope = pcall(require, "telescope")
if (not status) then return end

telescope.setup {
  pickers = {
    find_files = {
      theme = "dropdown",
      previewer = false,
    }
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      previewer = false,
    }
  }
}

telescope.load_extension('live_grep_args')
