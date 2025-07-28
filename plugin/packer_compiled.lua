-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\User\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?.lua;C:\\Users\\User\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\User\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\User\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\User\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  harpoon = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["hydra.nvim"] = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\hydra.nvim",
    url = "https://github.com/nvimtools/hydra.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  lushtheme = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lushtheme",
    url = "C:\\Users\\User\\AppData\\Local\\nvim\\lushtheme"
  },
  ["multiple-cursors.nvim"] = {
    config = { "\27LJ\2\n©\n\0\0\a\0000\0_6\0\0\0'\2\1\0B\0\2\0029\1\2\0004\3\0\0B\1\2\0016\1\3\0009\1\4\0019\1\5\0015\3\6\0'\4\a\0'\5\b\0005\6\t\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3\n\0'\4\v\0'\5\f\0005\6\r\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3\14\0'\4\15\0'\5\f\0005\6\16\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3\17\0'\4\18\0'\5\b\0005\6\19\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3\20\0'\4\21\0'\5\22\0005\6\23\0B\1\5\0016\1\3\0009\1\4\0019\1\5\1'\3\24\0'\4\25\0'\5\26\0005\6\27\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3\28\0'\4\29\0'\5\30\0005\6\31\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3 \0'\4!\0'\5\"\0005\6#\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3$\0'\4%\0'\5&\0005\6'\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3(\0'\4)\0'\5*\0005\6+\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3,\0'\4-\0'\5.\0005\6/\0B\1\5\1K\0\1\0\1\0\1\tdesc\25Lock virtual cursors!<Cmd>MultipleCursorsLock<CR>\14<Leader>l\1\3\0\0\6n\6x\1\0\1\tdesc\23Jump to next cword*<Cmd>MultipleCursorsJumpNextMatch<CR>\14<Leader>D\1\3\0\0\6n\6x\1\0\1\tdesc&Add cursor and jump to next cword-<Cmd>MultipleCursorsAddJumpNextMatch<CR>\14<Leader>d\1\3\0\0\6n\6x\1\0\1\tdesc*Add cursors to cword in previous area(<Cmd>MultipleCursorsAddMatchesV<CR>\14<Leader>A\1\3\0\0\6n\6x\1\0\1\tdesc\25Add cursors to cword'<Cmd>MultipleCursorsAddMatches<CR>\14<Leader>a\1\3\0\0\6n\6x\1\0\1\tdesc0Add cursors to the lines of the visual area*<Cmd>MultipleCursorsAddVisualArea<CR>\14<Leader>m\6x\1\0\1\tdesc\25Add or remove cursor+<Cmd>MultipleCursorsMouseAddDelete<CR>\18<C-LeftMouse>\1\3\0\0\6n\6i\1\0\1\tdesc\29Add cursor and move down\r<C-Down>\1\4\0\0\6n\6i\6x\1\0\1\tdesc\27Add cursor and move up\v<C-Up>\1\4\0\0\6n\6i\6x\1\0\1\tdesc\27Add cursor and move up\"<Cmd>MultipleCursorsAddUp<CR>\n<C-k>\1\3\0\0\6n\6x\1\0\1\tdesc\29Add cursor and move down$<Cmd>MultipleCursorsAddDown<CR>\n<C-j>\1\3\0\0\6n\6x\bset\vkeymap\bvim\nsetup\21multiple-cursors\frequire\0" },
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\multiple-cursors.nvim",
    url = "https://github.com/brenton-leighton/multiple-cursors.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["scratch.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fscratch\frequire\0" },
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\scratch.nvim",
    url = "https://github.com/swaits/scratch.nvim"
  },
  ["startup.nvim"] = {
    config = { "\27LJ\2\nQ\0\0\5\0\4\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0A\0\0\1K\0\1\0\20plugins.startup\nsetup\fstartup\frequire\0" },
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\startup.nvim",
    url = "https://github.com/startup-nvim/startup.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "C:\\Users\\User\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\undotree",
    url = "https://github.com/mbbill/undotree"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: startup.nvim
time([[Config for startup.nvim]], true)
try_loadstring("\27LJ\2\nQ\0\0\5\0\4\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0A\0\0\1K\0\1\0\20plugins.startup\nsetup\fstartup\frequire\0", "config", "startup.nvim")
time([[Config for startup.nvim]], false)
-- Config for: scratch.nvim
time([[Config for scratch.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fscratch\frequire\0", "config", "scratch.nvim")
time([[Config for scratch.nvim]], false)
-- Config for: multiple-cursors.nvim
time([[Config for multiple-cursors.nvim]], true)
try_loadstring("\27LJ\2\n©\n\0\0\a\0000\0_6\0\0\0'\2\1\0B\0\2\0029\1\2\0004\3\0\0B\1\2\0016\1\3\0009\1\4\0019\1\5\0015\3\6\0'\4\a\0'\5\b\0005\6\t\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3\n\0'\4\v\0'\5\f\0005\6\r\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3\14\0'\4\15\0'\5\f\0005\6\16\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3\17\0'\4\18\0'\5\b\0005\6\19\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3\20\0'\4\21\0'\5\22\0005\6\23\0B\1\5\0016\1\3\0009\1\4\0019\1\5\1'\3\24\0'\4\25\0'\5\26\0005\6\27\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3\28\0'\4\29\0'\5\30\0005\6\31\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3 \0'\4!\0'\5\"\0005\6#\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3$\0'\4%\0'\5&\0005\6'\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3(\0'\4)\0'\5*\0005\6+\0B\1\5\0016\1\3\0009\1\4\0019\1\5\0015\3,\0'\4-\0'\5.\0005\6/\0B\1\5\1K\0\1\0\1\0\1\tdesc\25Lock virtual cursors!<Cmd>MultipleCursorsLock<CR>\14<Leader>l\1\3\0\0\6n\6x\1\0\1\tdesc\23Jump to next cword*<Cmd>MultipleCursorsJumpNextMatch<CR>\14<Leader>D\1\3\0\0\6n\6x\1\0\1\tdesc&Add cursor and jump to next cword-<Cmd>MultipleCursorsAddJumpNextMatch<CR>\14<Leader>d\1\3\0\0\6n\6x\1\0\1\tdesc*Add cursors to cword in previous area(<Cmd>MultipleCursorsAddMatchesV<CR>\14<Leader>A\1\3\0\0\6n\6x\1\0\1\tdesc\25Add cursors to cword'<Cmd>MultipleCursorsAddMatches<CR>\14<Leader>a\1\3\0\0\6n\6x\1\0\1\tdesc0Add cursors to the lines of the visual area*<Cmd>MultipleCursorsAddVisualArea<CR>\14<Leader>m\6x\1\0\1\tdesc\25Add or remove cursor+<Cmd>MultipleCursorsMouseAddDelete<CR>\18<C-LeftMouse>\1\3\0\0\6n\6i\1\0\1\tdesc\29Add cursor and move down\r<C-Down>\1\4\0\0\6n\6i\6x\1\0\1\tdesc\27Add cursor and move up\v<C-Up>\1\4\0\0\6n\6i\6x\1\0\1\tdesc\27Add cursor and move up\"<Cmd>MultipleCursorsAddUp<CR>\n<C-k>\1\3\0\0\6n\6x\1\0\1\tdesc\29Add cursor and move down$<Cmd>MultipleCursorsAddDown<CR>\n<C-j>\1\3\0\0\6n\6x\bset\vkeymap\bvim\nsetup\21multiple-cursors\frequire\0", "config", "multiple-cursors.nvim")
time([[Config for multiple-cursors.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
