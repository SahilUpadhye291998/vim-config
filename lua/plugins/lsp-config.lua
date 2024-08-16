return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            local DEFAULT_SETTINGS = {
                ensure_installed = {"tsserver"},
                automatic_installation = true,
                handlers = nil,
            }
            require("mason-lspconfig").setup(DEFAULT_SETTINGS);
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig");
            lspconfig.tsserver.setup{}
        end
    }
}
