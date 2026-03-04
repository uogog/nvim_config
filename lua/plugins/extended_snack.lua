return {
    "snacks.nvim",
    opts = function(_, opts)
        -- 添加 Session 选择
        table.insert(
            opts.dashboard.preset.keys,
            7,
            { icon = "S", key = "S", desc = "Select Session", action = require("persistence").select }
        )

        --[[opts.dashboard.layout = {
            {
                width = 0.5, -- 左 50%
            },
            {
                width = 0.5, -- 右 50%
            },
        }]]
        --

        opts.dashboard.width = 80
        opts.dashboard.sections = {

            ----------------------------------------------------------------
            -- 左栏：原理说明
            ----------------------------------------------------------------
            --[[ {
                pane = 1,
                section = "header",
            },]]
            --
            {
                pane = 1,
                icon = " ",
                title = "Recent Files",
                section = "recent_files",
                indent = 2,
                padding = 1,
            },

            {
                pane = 1,
                icon = " ",
                title = "Projects",
                section = "projects",
                indent = 2,
                padding = 1,
            },

            {
                pane = 1,
                icon = " ",
                title = "Git Status",
                section = "terminal",
                enabled = function()
                    return Snacks.git.get_root() ~= nil
                end,
                cmd = "git status --short --branch",
                height = 6,
                padding = 1,
                ttl = 300,
                indent = 3,
            },

            {
                pane = 1,
                section = "keys",
                gap = 1,
                padding = 1,
            },

            {
                pane = 1,
                section = "startup",
            },

            ----------------------------------------------------------------
            -- 右栏：ASCII + 工具信息
            ----------------------------------------------------------------
            {
                pane = 2,
                section = "terminal",
                cmd = "chafa ~/.config/nvim/image/avatar.jpg --format symbols --symbols vhalf --size x32",
                height = 32,
                padding = 1,
            },
        }
        return opts
    end,
}
