return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            inlay_hints = { enabled = false },
            -- document_highlight = { enabled = false },
            servers = {
                gopls = {
                    settings = {
                        gopls = {
                            semanticTokens = false,
                        },
                    },
                },
                emmet_ls = {
                    filetypes = {
                        "astro",
                        "css",
                        "eruby",
                        "html",
                        "htmldjango",
                        "javascriptreact",
                        "less",
                        "php",
                        "pug",
                        "sass",
                        "scss",
                        "svelte",
                        "typescriptreact",
                        "vue",
                        "eex",
                        "heex",
                    },
                },
                cssls = {
                    filetypes = {
                        "astro",
                        "css",
                        "eruby",
                        "html",
                        "htmldjango",
                        "javascriptreact",
                        "less",
                        "php",
                        "pug",
                        "sass",
                        "scss",
                        "svelte",
                        "typescriptreact",
                        "vue",
                        "eex",
                        "heex",
                    },
                },
            },
        },
    },
}
