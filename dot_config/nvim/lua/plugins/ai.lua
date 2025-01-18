return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = false,
        auto_trigger = false,
        hide_during_completion = false,
      },
      panel = {
        enabled = true,
        auto_refresh = true,
        keymap = {
          jump_prev = "[[",
          jump_next = "]]",
        },
        layout = {
          position = "right",
          ratio = 0.3,
        },
      },
    },
  },
  {
    "zbirenbaum/copilot-cmp",
    enabled = false,
  },
}
