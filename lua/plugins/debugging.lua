return {
  'mfussenegger/nvim-dap',
  dependencies = {
    "nvim-neotest/nvim-nio",
    "rcarriga/nvim-dap-ui",
    "mfussenegger/nvim-dap-python",
  },
  config = function()
    local keymap = vim.keymap
    local dap = require("dap")
    local dapui = require("dapui")
    require("dap-python").setup('~/.virtualenvs/debugpy/bin/python')
    dapui.setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
    keymap.set("n", "<leader>dt", dap.toggle_breakpoint, {})
    keymap.set("n", "<leader>dc", dap.continue, {})
    keymap.set("n", "<leader>dsi", dap.step_into, {})
  end
}
