local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("没有找到 dashboard")
  return
end

db.custom_footer = {
  "https://qixinbo.info",
}

db.custom_center = {
  {
    icon = "  ",
    desc = "Projects                            ",
    action = "Telescope projects",
  },
  {
    icon = "  ",
    desc = "Recently files                      ",
    action = "Telescope oldfiles",
  },
  {
    icon = "  ",
    desc = "Edit keybindings                    ",
    action = "edit ~/AppData/Local/nvim/lua/keybindings.lua",
  },
  {
    icon = "  ",
    desc = "Edit Projects                       ",
    -- 运行命令 :lua print(require("project_nvim.utils.path").historyfile) 就可以看到 project_history 文件的路径了。
    action = "edit ~/AppData/Local/nvim-data/project_nvim/project_history",
  },
  -- {
  --   icon = "  ",
  --   desc = "Edit .bashrc                        ",
  --   action = "edit ~/.bashrc",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Change colorscheme                  ",
  --   action = "ChangeColorScheme",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Edit init.lua                       ",
  --   action = "edit ~/.config/nvim/init.lua",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Find file                           ",
  --   action = "Telescope find_files",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Find text                           ",
  --   action = "Telescopecope live_grep",
  -- },
}


db.custom_header = 
{
[[              ▄▄▄▄▄▄▄▄▄             ]],
[[           ▄█████████████▄          ]],
[[   █████  █████████████████  █████  ]],
[[   ▐████▌ ▀███▄       ▄███▀ ▐████▌  ]],
[[    █████▄  ▀███▄   ▄███▀  ▄█████   ]],
[[    ▐██▀███▄  ▀███▄███▀  ▄███▀██▌   ]],
[[     ███▄▀███▄  ▀███▀  ▄███▀▄███    ]],
[[     ▐█▄▀█▄▀███ ▄ ▀ ▄ ███▀▄█▀▄█▌    ]],
[[      ███▄▀█▄██ ██▄██ ██▄█▀▄███     ]],
[[       ▀███▄▀██ █████ ██▀▄███▀      ]],
[[      █▄ ▀█████ █████ █████▀ ▄█     ]],
[[      ███        ███        ███     ]],
[[      ███▄    ▄█ ███ █▄    ▄███     ]],
[[      █████ ▄███ ███ ███▄ █████     ]],
[[      █████ ████ ███ ████ █████     ]],
[[      █████ ████▄▄▄▄▄████ █████     ]],
[[       ▀███ █████████████ ███▀      ]],
[[         ▀█ ███ ▄▄▄▄▄ ███ █▀        ]],
[[            ▀█▌▐█████▌▐█▀           ]],
[[               ███████              ]],
}