require('Comment').setup()

require('flash').setup{
  labels = "ASDFGHJKLQWERTYUIOPZXCVBNM",
  search = {
    mode = "fuzzy",
    max_length = false,
  },
  label = {
    prefix = "🔥",
    after = false,
    before = true,
    reuse = "all",
    rainbow = {
      enable = true,
      shade = 9,
    }
  }
}
