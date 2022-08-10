-- 基础设置
require('basic')

-- 快捷键映射
require("keybindings")

-- Packer 插件管理
require("plugins")

-- 主题设置 （新增）
-- require("colorscheme")

-- 插件配置
require("plugin-config.nvim-tree")

-- 顶部标签页
require("plugin-config.bufferline")

-- 底部状态栏
require("plugin-config.lualine")

-- 模糊搜索
require("plugin-config.telescope")

-- 启动页配置
require("plugin-config.dashboard")

-- 项目列表
require("plugin-config.project")

-- 代码高亮
-- require("plugin-config.nvim-treesitter") 

-- 内置LSP (新增)
require("lsp.setup")

require("lsp.cmp")
require("lsp.ui")