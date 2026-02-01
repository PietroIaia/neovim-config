return {
  "seblyng/roslyn.nvim",
  ft = "cs",
  opts = {
    filewatching = "roslyn"
  },
  config = function()
    require("roslyn").setup()
  end
}
