return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            auto_install = true,
            ensure_installed = {
                "bash",
                "help",
                "lua",
                "markdown",
                "python",
                "go",
                "c",
            },
        },
    },
}
