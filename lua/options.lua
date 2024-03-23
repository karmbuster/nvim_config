local opt = vim.opt


-- line number settings
opt.nu = true
opt.rnu = true

-- fat cursor
opt.guicursor = ""


-- setting up tab/spaces
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true

-- no line wrap
opt.wrap = false

-- search options - no highlight, yes incremental search
opt.hlsearch = false
opt.incsearch = true

