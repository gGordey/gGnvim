-- In cool_name/lua/lush_theme/cool_name.lua

-- require lush
local lush = require('lush')
local hsl = lush.hsl

local defaultBg = hsl("#0b0c11")
local condCol = hsl("#ff8aa5")
local keywordCol = hsl("#6456ff")
-- lush() will parse the spec and
-- return a table containing all color information.
-- We return it for use in other files.
return lush(function()
  return {
    -- Define Vim's Normal highlight group.
    -- You can provide values with hsl/hsluv or anything that responds to `tostring`
    -- but be aware if you don't "wrap" your color in a hsl/hsluv call you
    -- wont have chainable access to the color "operators" (darken, etc).
    Normal { bg = defaultBg, fg = hsl("#A3CFF5") },

    -- Make whitespace slightly darker than normal.
    -- you must define Normal before deriving from it.
    Whitespace { fg = Normal.fg.darken(40) },

    -- Make comments look the same as whitespace, but with italic text
    Comment { Whitespace, gui="italic" },
    

    Function { bg = Normal.bg, fg = hsl("#9479ff"), gui="italic bold" },     
    Type { bg = Normal.bg, fg = hsl("#ffbb00"), gui="bold" },
    Conditional { bg = Normal.bg, fg = condCol, gui="italic bold" },
    Typedef { bg = Normal.bg, fg = keywordCol }, 
    StructureTypedef { bg = Normal.bg, fg = keywordCol }, 
    StorageClass { bg = Normal.bg, fg = keywordCol }, 
    Keyword { bg = Normal.bg, fg = condCol },
    PreProc { bg = Normal.bg, fg = condCol },
    String { bg = Normal.bg, fg = hsl("#b5d074") },
    Character { bg = Normal.bg, fg = hsl("#2e97d3") },
    Number { bg = Normal.bg, fg = hsl("#f4d154") },
    Float { bg = Normal.bg, fg = hsl("#f4d154"), gui="italic" },
    -- Clear all highlighting for CursorLine
    CursorLine { },
  }
end)
