local map = vim.keymap.set

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

-- Insert Mappings
map("i", "jk", "<Esc>", { desc = "Exit insert mode" })
map("i", "ww", "<Esc>:w<CR>", { desc = "Save and exit insert mode" })
map("i", "<C-l>", "<Right>", { desc = "Move right in insert mode" })
map("i", "<C-h>", "<Left>", { desc = "Move left in insert mode" })

-- Normal Mappings (General)
map("n", "<Esc><Esc>", ":nohlsearch<CR>", { desc = "Clear search highlights" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })
map("n", "<leader>w", ":w<CR>", { desc = "Save" })
map("n", ";", ":", { silent = false, nowait = true, desc = "Command mode" })
map("n", "S", ":%s//g<Left><Left>", { silent = false, nowait = true, desc = "Search and replace" })

-- Normal Mappings (Window Navigation)
map("n", "<leader>v", "<C-w>v", { desc = "Split window vertically" })
map("n", "<leader>h", "<C-w>s", { desc = "Split window horizontally" })
map("n", "<leader>x", "<cmd>close<CR>", { desc = "Close current split" })

-- XÓA BỎ các dòng map <C-h/j/k/l> ở đây vì plugin vim-tmux-navigator sẽ tự quản lý
map("n", "<C-k>", "<C-w>k", { desc = "Window up" })
map("n", "<C-l>", "<C-w>l", { desc = "Window right" })

-- Visual Mappings (QoL)
map("v", "<", "<gv", { desc = "Indent left and re-select" })
map("v", ">", ">gv", { desc = "Indent right and re-select" })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move text down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move text up" })

-- ==========================================
-- AI Tool Mappings (Avante / Copilot)
-- ==========================================

-- Avante.nvim bindings
map("n", "<leader>aa", "<cmd>AvanteToggle<CR>", { desc = "AI: Toggle Avante" })
map("v", "<leader>ae", "<cmd>AvanteEdit<CR>", { desc = "AI: Edit selected code" })
map("v", "<leader>ac", "<cmd>AvanteChat<CR>", { desc = "AI: Chat about selection" })

-- Copilot panel bindings
map("n", "<leader>cp", "<cmd>Copilot panel<CR>", { desc = "AI: Open Copilot Panel" })
