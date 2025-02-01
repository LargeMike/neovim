return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>")
        vim.keymap.set("n", "<leader>vv", "<cmd>NvimTreeFocus<CR>")

        -- optionally enable 24-bit colour
        vim.opt.termguicolors = true

        -- setup with some options
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 45,
                side = "right",
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
            --set keymaps
        })
    end,
}
