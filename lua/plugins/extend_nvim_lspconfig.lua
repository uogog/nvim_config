return {
        "neovim/nvim-lspconfig",
        opts = {
                servers = {
                        clangd = {
                                cmd = {
                                        "clangd",
                                        "--header-insertion=never", -- 禁用自动头文件插入
                                        "--header-insertion-decorators=0",
                                },
                        },
                },
        },
}
