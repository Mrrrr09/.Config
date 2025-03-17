return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function ()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
 ██████╗ ██╗███████╗██╗  ██╗
██╔════╝ ██║██╔════╝██║  ██║
██║  ███╗██║███████╗███████║
██║   ██║██║╚════██║██╔══██║
╚██████╔╝██║███████║██║  ██║
 ╚═════╝ ╚═╝╚══════╝╚═╝  ╚═╝
                            ]]
    dashboard.section.header.val = vim.split(logo, "\n")
    dashboard.section.footer.val = "Omnissiah waits"
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("\\ ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("\\ ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("\\ fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("\\ wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
    }
    
    alpha.setup(dashboard.opts)
  end
}
