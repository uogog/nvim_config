return {
    "snacks.nvim",
    opts = function(_, opts)
        -- 添加 Session 选择
        table.insert(
            opts.dashboard.preset.keys,
            7,
            { icon = "", key = "S", desc = "Select Session", action = require("persistence").select }
        )

        opts.dashboard.sections = {
            { section = "header" },
            { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
            { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
            { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
            { section = "startup" },
        }

        opts.dashboard.preset.header = [[
 ▄▀▀▄ ▄▀▀▄  ▄▀▀▀▀▄   ▄▀▀▀▀▄    ▄▀▀▀▀▄   ▄▀▀▀▀▄  
█   █    █ █      █ █         █      █ █        
▐  █    █  █      █ █    ▀▄▄  █      █ █    ▀▄▄ 
  █    █   ▀▄    ▄▀ █     █ █ ▀▄    ▄▀ █     █ █
   ▀▄▄▄▄▀    ▀▀▀▀   ▐▀▄▄▄▄▀ ▐   ▀▀▀▀   ▐▀▄▄▄▄▀ ▐
                    ▐                  ▐        
        ]]
        return opts
    end,
}
