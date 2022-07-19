local hsluv = require("nvimcode.hsluv")

local utils = {}

utils.colorsUsed = {}
utils.colorCache = {}

utils.bg = "#000000"
utils.fg = "#ffffff"
utils.day_brightness = 0.3

local function hexToRgb(hex_str)
  local hex = "[abcdef0-9][abcdef0-9]"
  local pat = "^#(" .. hex .. ")(" .. hex .. ")(" .. hex .. ")$"
  hex_str = string.lower(hex_str)

  assert(string.find(hex_str, pat) ~= nil, "hex_to_rgb: invalid hex_str: " .. tostring(hex_str))

  local r, g, b = string.match(hex_str, pat)
  return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

---@param fg string foreground color
---@param bg string background color
---@param alpha number number between 0 and 1. 0 results in bg, 1 results in fg
function utils.blend(fg, bg, alpha)
  bg = hexToRgb(bg)
  fg = hexToRgb(fg)

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format("#%02X%02X%02X", blendChannel(1), blendChannel(2), blendChannel(3))
end

function utils.darken(hex, amount, bg)
  return utils.blend(hex, bg or utils.bg, math.abs(amount))
end
function utils.lighten(hex, amount, fg)
  return utils.blend(hex, fg or utils.fg, math.abs(amount))
end

function utils.brighten(color, percentage)
  local hsl = hsluv.hex_to_hsluv(color)
  local larpSpace = 100 - hsl[3]
  if percentage < 0 then
    larpSpace = hsl[3]
  end
  hsl[3] = hsl[3] + larpSpace * percentage
  return hsluv.hsluv_to_hex(hsl)
end

function utils.invertColor(color)
  if color ~= "NONE" then
    local hsl = hsluv.hex_to_hsluv(color)
    hsl[3] = 100 - hsl[3]
    if hsl[3] < 40 then
      hsl[3] = hsl[3] + (100 - hsl[3]) * utils.day_brightness
    end
    return hsluv.hsluv_to_hex(hsl)
  end
  return color
end

function utils.randomColor(color)
  if color ~= "NONE" then
    local hsl = hsluv.hex_to_hsluv(color)
    hsl[1] = math.random(1, 360)
    return hsluv.hsluv_to_hex(hsl)
  end
  return color
end

function utils.getColor(color)
  if vim.o.background == "dark" then
    return color
  end
  if not utils.colorCache[color] then
    utils.colorCache[color] = utils.invertColor(color)
  end
  return utils.colorCache[color]
end

function utils.highlight(group, color)
  if color.fg then
    utils.colorsUsed[color.fg] = true
  end
  if color.bg then
    utils.colorsUsed[color.bg] = true
  end
  if color.sp then
    utils.colorsUsed[color.sp] = true
  end

  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. utils.getColor(color.fg) or "guifg=NONE"
  local bg = color.bg and "guibg=" .. utils.getColor(color.bg) or "guibg=NONE"
  local sp = color.sp and "guisp=" .. utils.getColor(color.sp) or ""

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

  if color.link then
    vim.cmd("highlight! link " .. group .. " " .. color.link)
  else
    -- local data = {}
    -- if color.fg then data.foreground = color.fg end
    -- if color.bg then data.background = color.bg end
    -- if color.sp then data.special = color.sp end
    -- if color.style then data[color.style] = true end
    -- vim.api.nvim_set_hl(ns, group, data)
    vim.cmd(hl)
  end
end

function utils.debug(colors)
  colors = colors or require("tokyonight.colors")
  -- Dump unused colors
  for name, color in pairs(colors) do
    if type(color) == "table" then
      utils.debug(color)
    else
      if utils.colorsUsed[color] == nil then
        print("not used: " .. name .. " : " .. color)
      end
    end
  end
end

--- Delete the autocmds when the theme changes to something else
function utils.onColorScheme()
  if vim.g.colors_name ~= "tokyonight" then
    vim.cmd([[autocmd! TokyoNight]])
    vim.cmd([[augroup! TokyoNight]])
  end
end

---@param config Config
function utils.autocmds(config)
  vim.cmd([[augroup TokyoNight]])
  vim.cmd([[  autocmd!]])
  vim.cmd([[  autocmd ColorScheme * lua require("tokyonight.utils").onColorScheme()]])
  if config.dev then
    vim.cmd([[  autocmd BufWritePost */lua/tokyonight/** nested colorscheme tokyonight]])
  end
  for _, sidebar in ipairs(config.sidebars) do
    if sidebar == "terminal" then
      vim.cmd([[  autocmd TermOpen * setlocal winhighlight=Normal:NormalSB,SignColumn:SignColumnSB]])
    else
      vim.cmd([[  autocmd FileType ]] .. sidebar .. [[ setlocal winhighlight=Normal:NormalSB,SignColumn:SignColumnSB]])
    end
  end
  vim.cmd([[augroup end]])
end

-- Simple string interpolation.
--
-- Example template: "${name} is ${value}"
--
---@param str string template string
---@param table table key value pairs to replace in the string
function utils.template(str, table)
  return (str:gsub("($%b{})", function(w)
    return table[w:sub(3, -2)] or w
  end))
end

function utils.syntax(syntax)
  for group, colors in pairs(syntax) do
    utils.highlight(group, colors)
  end
end

---@param colors ColorScheme
function utils.terminal(colors)
  -- dark
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_8 = colors.terminal_black

  -- light
  vim.g.terminal_color_7 = colors.fg_dark
  vim.g.terminal_color_15 = colors.fg

  -- colors
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_9 = colors.red

  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_10 = colors.green

  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_11 = colors.yellow

  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_12 = colors.blue

  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_13 = colors.magenta

  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_14 = colors.cyan

  if vim.o.background == "light" then
    for i = 0, 15, 1 do
      vim.g["terminal_color_" .. i] = utils.getColor(vim.g["terminal_color_" .. i])
    end
  end
end

function utils.light_colors(colors)
  if type(colors) == "string" then
    return utils.getColor(colors)
  end
  local ret = {}
  for key, value in pairs(colors) do
    ret[key] = utils.light_colors(value)
  end
  return ret
end

---@param theme Theme
function utils.load(theme)
  -- only needed to clear when not the default colorscheme
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  -- if vim.fn.exists("syntax_on") then
  --   vim.cmd("syntax reset")
  -- end

  vim.o.termguicolors = true
  vim.g.colors_name = "tokyonight"
  -- vim.api.nvim__set_hl_ns(ns)
  -- load base theme
  utils.syntax(theme.base)
  utils.syntax(theme.plugins)
  utils.terminal(theme.colors)
  utils.autocmds(theme.config)

  vim.defer_fn(function()
    utils.syntax(theme.defer)
  end, 100)
end

---@param config Config
---@param colors ColorScheme
function utils.color_overrides(colors, config)
  if type(config.colors) == "table" then
    for key, value in pairs(config.colors) do
      if not colors[key] then
        error("Color " .. key .. " does not exist")
      end

      -- Patch: https://github.com/ful1e5/onedark.nvim/issues/6
      if type(colors[key]) == "table" then
        utils.color_overrides(colors[key], { colors = value })
      else
        if value:lower() == "none" then
          -- set to none
          colors[key] = "NONE"
        elseif string.sub(value, 1, 1) == "#" then
          -- hex override
          colors[key] = value
        else
          -- another group
          if not colors[value] then
            error("Color " .. value .. " does not exist")
          end
          colors[key] = colors[value]
        end
      end
    end
  end
end

function utils.light(brightness)
  for hl_name, hl in pairs(vim.api.nvim__get_hl_defs(0)) do
    local def = {}
    for key, def_key in pairs({ foreground = "fg", background = "bg", special = "sp" }) do
      if type(hl[key]) == "number" then
        local hex = string.format("#%06x", hl[key])
        local color = utils.invertColor(hex)
        if brightness then
          color = utils.brighten(hex, brightness)
        end
        table.insert(def, "gui" .. def_key .. "=" .. color)
      end
    end
    if hl_name ~= "" and #def > 0 then
      for _, style in pairs({ "bold", "italic", "underline", "undercurl", "reverse" }) do
        if hl[style] then
          table.insert(def, "gui=" .. style)
        end
      end

      vim.cmd("highlight! " .. hl_name .. " " .. table.concat(def, " "))
    end
  end
end

function utils.random()
  local colors = {}
  for hl_name, hl in pairs(vim.api.nvim__get_hl_defs(0)) do
    local def = {}
    for key, def_key in pairs({ foreground = "fg", background = "bg", special = "sp" }) do
      if type(hl[key]) == "number" then
        local hex = string.format("#%06x", hl[key])
        local color = colors[hex] and colors[hex] or utils.randomColor(hex)
        colors[hex] = color
        table.insert(def, "gui" .. def_key .. "=" .. color)
      end
    end
    if hl_name ~= "" and #def > 0 then
      for _, style in pairs({ "bold", "italic", "underline", "undercurl", "reverse" }) do
        if hl[style] then
          table.insert(def, "gui=" .. style)
        end
      end

      vim.cmd("highlight! " .. hl_name .. " " .. table.concat(def, " "))
    end
  end
end

return utils
