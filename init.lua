package.preload["fnl.keys"] = package.preload["fnl.keys"] or function(...)
  local map = (require("fnl.utils")).map
  local mapcmd = (require("fnl.utils"))["map-command"]
  map("i", "<c-j>", "\\<c-n>", {expr = true})
  map("i", "<c-j>", "\\<c-p>", {expr = true})
  map("n", "<m-j>", "<c-w>j")
  map("n", "<m-k>", "<c-w>k")
  map("n", "<m-h>", "<c-w>h")
  map("n", "<m-l>", "<c-w>l")
  map("i", "jk", "<esc>")
  map("v", "jk", "<esc>")
  map("i", "<tab>", "pumvisible() ? \"\\<c-n>\" : \"\\<tab>\"", {expr = true})
  map("v", "<", "<gv")
  map("v", ">", ">gv")
  mapcmd("n", "<leader>w", "update")
  mapcmd("n", "<c-j>", "cprev")
  mapcmd("n", "<c-k>", "cnext")
  mapcmd("n", "<leader>j", "lprev")
  mapcmd("n", "<leader>k", "lnext")
  mapcmd("n", "<leader>rc", "lua require('main')")
  return nil
end
package.preload["fnl.options"] = package.preload["fnl.options"] or function(...)
  local utils = require("fnl.utils")
  utils.options("global", {backup = false, clipboard = "unnamedplus", cmdheight = 2, completeopt = "menuone,noinsert,noselect", encoding = "utf-8", guicursor = "", hidden = true, hlsearch = false, ignorecase = true, laststatus = 2, mouse = "nicr", pumheight = 10, ruler = true, showmode = false, showtabline = 2, smartcase = true, smarttab = true, splitbelow = true, termguicolors = true, timeoutlen = 500, updatetime = 300, wildmode = "list:longest", writebackup = false})
  utils.options("window", {conceallevel = 0, cursorline = true, list = true, number = true, relativenumber = true, signcolumn = "number", wrap = false})
  utils.options("buffer", {autoindent = true, expandtab = true, shiftwidth = 2, smartindent = true, tabstop = 2})
  return nil
end
package.preload["fnl.plug-config.keys.nvim-tree"] = package.preload["fnl.plug-config.keys.nvim-tree"] or function(...)
  local mapcmd = (require("fnl.utils"))["map-command"]
  mapcmd("n", "<leader>e", "NvimTreeToggle")
  mapcmd("n", "<leader>r", "NvimTreeRefresh")
  return nil
end
package.preload["fnl.plug-config.keys.hop"] = package.preload["fnl.plug-config.keys.hop"] or function(...)
  local utils = require("fnl.utils")
  utils["map-command"]("n", "<leader>.", "HopWord")
  utils["map-command"]("n", "<leader>m", "HopLine")
  return utils["map-command"]("n", "<leader>p", "HopPattern")
end
package.preload["fnl.plug-config.keys.lsp-trouble"] = package.preload["fnl.plug-config.keys.lsp-trouble"] or function(...)
  local utils = require("fnl.utils")
  local mapcmd = utils["map-command"]
  mapcmd("n", "<leader>ll", "LspTroubleToggle")
  mapcmd("n", "<leader>lw", "LspTroubleWorkspaceToggle")
  return mapcmd("n", "<leader>ld", "LspTroubleDocumentToggle")
end
package.preload["fnl.plug-config.keys.vim-fugitive"] = package.preload["fnl.plug-config.keys.vim-fugitive"] or function(...)
  local mapcmd = (require("fnl.utils"))["map-command"]
  return mapcmd("n", "<leader>gs", "G")
end
package.preload["fnl.plug-config.keys.lsp"] = package.preload["fnl.plug-config.keys.lsp"] or function(...)
  local map = (require("fnl.utils")).map
  map("n", "<space>,", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>")
  map("n", "<space>;", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>")
  map("n", "<space>a", "<cmd>lua vim.lsp.buf.code_action()<CR>")
  map("n", "<space>d", "<cmd>lua vim.lsp.buf.definition()<CR>")
  map("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>")
  map("n", "<space>h", "<cmd>lua vim.lsp.buf.hover()<CR>")
  map("n", "<space>m", "<cmd>lua vim.lsp.buf.rename()<CR>")
  map("n", "<space>r", "<cmd>lua vim.lsp.buf.references()<CR>")
  map("n", "<space>s", "<cmd>lua vim.lsp.buf.document_symbol()<CR>")
  return nil
end
package.preload["fnl.plug-config.keys.fzf"] = package.preload["fnl.plug-config.keys.fzf"] or function(...)
  local utils = require("fnl.utils")
  local mapcmd = utils["map-command"]
  mapcmd("n", "<leader>ff", "Files")
  mapcmd("n", "<leader>fg", "Rg")
  mapcmd("n", "<leader>fh", "History")
  mapcmd("n", "<leader>fc", "Commits")
  return mapcmd("n", "<leader>fb", "Buffers")
end
package.preload["fnl.plug-config.feline"] = package.preload["fnl.plug-config.feline"] or function(...)
  local feline = require("feline")
  local feline_preset = require("feline.presets.default")
  local default_bg = "#2e3440"
  local function see(tbl)
    for k, v in pairs(tbl) do
      print(k, v)
    end
    return nil
  end
  do
    local _0_0 = feline_preset.components
    _0_0["left"]["active"][3]["right_sep"] = {{hl = {bg = __fnl_global__default_2dfg, fg = "oceanblue"}, str = "\238\130\176"}, " "}
    _0_0["left"]["active"][3]["left_sep"] = {" ", {hl = {bg = "oceanblue", fg = default_bg}, str = "\238\130\176"}, {hl = {bg = "oceanblue", fg = "NONE"}, str = " "}}
    _0_0["left"]["active"][4]["right_sep"] = {" ", {hl = {bg = default_bg, fg = "cyan"}, str = "\238\130\177"}}
    _0_0["left"]["active"][5]["right_sep"] = {hl = {bg = default_bg, fg = "cyan"}, str = "\238\130\177"}
    _0_0["left"]["active"][5]["left_sep"] = ""
    _0_0["right"]["active"][1]["left_sep"] = {hl = {bg = default_bg, fg = "black"}, str = "\238\130\178"}
    _0_0["right"]["active"][4]["right_sep"] = {{hl = {bg = "black", fg = "NONE"}, str = " "}, {hl = {bg = "black", fg = default_bg}, str = "\238\130\178"}}
  end
  local function vi_mode_provider()
    local mode_alias = {R = "REPLACE", Rv = "REPLACE", S = "SELECT", V = "V-LINE", ["\19"] = "SELECT", ["\22"] = "V-BLOCK", c = "COMMAND", ce = "COMMAND", cv = "COMMAND", i = "INSERT", n = "NORMAL", no = "NORMAL", s = "SELECT", t = "TERMINAL", v = "VISUAL"}
    return ("\238\152\171 " .. mode_alias[vim.fn.mode()])
  end
  local colors = {black = "#434c5e", cyan = "#88c0d0", green = "#8fbcbb", magenta = "#b48ead", oceanblue = "#5e81ac", orange = "#d08770", red = "#ec5f67", skyblue = "#81a1c1", violet = "#b48ead", white = "#eceff4", yellow = "#ebcb8b"}
  local vi_mode_colors = {BLOCK = "green", COMMAND = "cyan", ENTER = "cyan", INSERT = "white", MORE = "cyan", NONE = "orange", NORMAL = "cyan", OP = "cyan", REPLACE = "yellow", SELECT = "magenta", SHELL = "skyblue", TERM = "skyblue", VISUAL = "green", ["V-REPLACE"] = "yellow"}
  return feline.setup({colors = colors, default_bg = default_bg, default_fg = "#8fbcbb", vi_mode_colors = vi_mode_colors})
end
package.preload["fnl.plug-config.gitsigns"] = package.preload["fnl.plug-config.gitsigns"] or function(...)
  local gs = require("gitsigns")
  return gs.setup()
end
package.preload["fnl.plug-config.treesitter"] = package.preload["fnl.plug-config.treesitter"] or function(...)
  local ts = require("nvim-treesitter.configs")
  ts.setup({ensure_installed = {"c", "cpp", "rust", "fennel"}, highlight = {enable = true}})
  return nil
end
package.preload["fnl.plug-config.hop"] = package.preload["fnl.plug-config.hop"] or function(...)
  local hop = require("hop")
  return hop.setup({})
end
package.preload["fnl.plug-config.nvim-lsp"] = package.preload["fnl.plug-config.nvim-lsp"] or function(...)
  local nvim_lsp = require("lspconfig")
  local completion = require("completion")
  local lsp_status = require("lsp-status")
  local utils = require("fnl.utils")
  local lsp_util = require("lspconfig/util")
  local function on_attach(client)
    do
      local _0_0 = client
      completion.on_attach(_0_0)
      lsp_status.on_attach(_0_0)
    end
    return nil
  end
  lsp_status.config({current_function = true})
  lsp_status.register_progress()
  vim.cmd("\nfunction! LspStatus() abort\n  if luaeval('#vim.lsp.buf_get_clients() > 0')\n    return luaeval(\"require('lsp-status').status()\")\n  endif\nreturn ''\nendfunction")
  local default_options = {capabilities = lsp_status.capabilities, on_attach = on_attach}
  nvim_lsp.rust_analyzer.setup(utils["merge-tables"](default_options, {settings = {["rust-analyzer"] = {checkOnSave = {command = "clippy"}}}}))
  nvim_lsp.ccls.setup(default_options)
  nvim_lsp.hls.setup(default_options)
  nvim_lsp.gopls.setup(default_options)
  return nvim_lsp.clangd.setup(utils["merge-tables"](default_options, {settings = {root_dir = lsp_util.root_pattern("build", "compile_commands.json")}}))
end
package.preload["fnl.plug-config.kommentary"] = package.preload["fnl.plug-config.kommentary"] or function(...)
  local kommentary_config = require("kommentary.config")
  kommentary_config.use_extended_mappings()
  kommentary_config.configure_language("default", {prefer_single_line_comments = true})
  return kommentary_config.configure_language("rust", {multi_line_comment_strings = {"/*", "*/"}, single_line_comment_string = "//"})
end
package.preload["fnl.utils"] = package.preload["fnl.utils"] or function(...)
  local function map(mode, lhs, rhs, more_options_3f)
    local options = {noremap = true, silent = true}
    if more_options_3f then
      options = vim.tbl_extend("force", options, more_options_3f)
    end
    return vim.api.nvim_set_keymap(mode, lhs, rhs, options)
  end
  local function is_in_table(tbl, value)
    for _, v in ipairs(tbl) do
      if (v == value) then
        return true
      end
    end
    return false
  end
  local function options(scope, kvpairs)
    local scope_index
    do
      local _0_0 = scope
      if (_0_0 == "global") then
        scope_index = "o"
      elseif (_0_0 == "buffer") then
        scope_index = "bo"
      elseif (_0_0 == "window") then
        scope_index = "wo"
      else
      scope_index = nil
      end
    end
    local tset_fn
    if (scope ~= "global") then
      local function _1_(k, v)
        vim[scope_index][k] = v
        vim.o[k] = v
        return nil
      end
      tset_fn = _1_
    else
      local function _1_(k, v)
        vim[scope_index][k] = v
        return nil
      end
      tset_fn = _1_
    end
    for k, v in pairs(kvpairs) do
      tset_fn(k, v)
    end
    return nil
  end
  local function make_command(name)
    return (":" .. name .. "<cr>")
  end
  local function map_command(mode, lhs, rhs, more_options_3f)
    return map(mode, lhs, make_command(rhs), more_options_3f)
  end
  local function set_global(key, value)
    vim.g[key] = value
    return nil
  end
  local function set_globals(kvpairs)
    for k, v in pairs(kvpairs) do
      vim.g[k] = v
    end
    return nil
  end
  local function prefix_options(prefixes, kvpairs)
    local tbl = {}
    local built_prefix = (table.concat(prefixes, "_") .. "_")
    for k, v in pairs(kvpairs) do
      tbl[(built_prefix .. k)] = v
    end
    return tbl
  end
  local function env()
    local variables = {}
    for k, v in pairs(vim.fn.environ()) do
      table.insert(variables, string.format("%s=%s", k, v))
    end
    return variables
  end
  local function merge_tables(a, b)
    local function is_type(v, type_name)
      return (type(v) == type_name)
    end
    local function both_have_type(a0, b0, type_name)
      return (is_type(a0, type_name) and is_type(b0, type_name))
    end
    local merged = {}
    for k, v in pairs(a) do
      merged[k] = v
    end
    for k, v in pairs(b) do
      local other_value = a[k]
      local _0_
      if both_have_type(v, other_value, "table") then
        _0_ = merge_tables(v, other_value)
      else
        _0_ = v
      end
      merged[k] = _0_
    end
    return merged
  end
  return {["is-in-table"] = is_in_table, ["make-command"] = make_command, ["map-command"] = map_command, ["merge-tables"] = merge_tables, ["prefix-options"] = prefix_options, ["set-global"] = set_global, ["set-globals"] = set_globals, map = map, options = options}
end
package.preload["fnl.plug-config.theme"] = package.preload["fnl.plug-config.theme"] or function(...)
  local utils = require("fnl.utils")
  vim.cmd("colorscheme nord")
  local options = {italic = 1}
  utils["set-globals"](utils["prefix-options"]({"nord"}, options))
  return nil
end
package.preload["fnl.plugins"] = package.preload["fnl.plugins"] or function(...)
  do
    local data_path = vim.fn.stdpath("data")
    local install_path = (data_path .. "/site/pack/packer/start/packer.nvim")
    local expanded_path = vim.fn.glob(install_path)
    if (vim.fn.empty(expanded_path) ~= 0) then
      print("installing packer...")
      vim.api.nvim_command(("!git clone https://github.com/wbthomason/packer.nvim " .. install_path))
      vim.api.nvim_command("packadd packer.nvim")
    end
  end
  local packer = require("packer")
  local function packer_startup(use)
    use("wbthomason/packer.nvim")
    use("arcticicestudio/nord-vim")
    use("phaazon/hop.nvim")
    use("nvim-treesitter/nvim-treesitter")
    use({"famiu/feline.nvim", requires = {"kyazdani42/nvim-web-devicons", {"lewis6991/gitsigns.nvim", requires = "nvim-lua/plenary.nvim"}}})
    use({"kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons"})
    use("jiangmiao/auto-pairs")
    use("tpope/vim-repeat")
    use("tpope/vim-surround")
    use("tpope/vim-fugitive")
    use("b3nj5m1n/kommentary")
    use({"junegunn/fzf", run = vim.fn["fzf#install"]})
    use("junegunn/fzf.vim")
    use("nvim-lua/lsp-status.nvim")
    use("neovim/nvim-lspconfig")
    use("nvim-lua/completion-nvim")
    use({"folke/lsp-trouble.nvim", requires = "kyazdani42/nvim-web-devicons"})
    use("folke/lsp-colors.nvim")
    use("mbbill/undotree")
    return nil
  end
  packer.startup(packer_startup)
  require("fnl.plug-config.theme")
  require("fnl.plug-config.kommentary")
  require("fnl.plug-config.nvim-lsp")
  require("fnl.plug-config.hop")
  require("fnl.plug-config.treesitter")
  require("fnl.plug-config.gitsigns")
  require("fnl.plug-config.feline")
  require("fnl.plug-config.keys.fzf")
  require("fnl.plug-config.keys.lsp")
  require("fnl.plug-config.keys.vim-fugitive")
  require("fnl.plug-config.keys.lsp-trouble")
  require("fnl.plug-config.keys.hop")
  require("fnl.plug-config.keys.nvim-tree")
  return nil
end
vim.g["mapleader"] = ","
vim.g["python3_host_prog"] = "/usr/bin/python3"
require("fnl.plugins")
require("fnl.options")
require("fnl.keys")
return nil