vim.o.background = "dark"
vim.cmd("highlight clear")
vim.g.colors_name = "lukin"

local palette = {
    background = "#000000",
    foreground = "#F8F8F0",
    panel = "#1E1E1E",
    cursorline = "#101010",
    selection = "#404040",
    comment = "#666666",
    gray = "#696969",
    red = "#FF5252",
    pink = "#FF3366",
    green = "#49F571",
    mint = "#47FFA0",
    yellow = "#F3FF52",
    bright_yellow = "#FFFF00",
    orange = "#FFAB40",
    blue = "#40C4FF",
    bright_blue = "#61CAFF",
    cyan = "#2ECEFF",
    bright_cyan = "#47DDFF",
    purple = "#DE3CD6",
    bright_purple = "#E040FB",
    white = "#FFFFFF",
}

local highlights = {
    Normal = { fg = palette.foreground, bg = palette.background },
    NormalFloat = { fg = palette.foreground, bg = palette.panel },
    FloatBorder = { fg = palette.gray, bg = palette.panel },
    Cursor = { fg = palette.background, bg = palette.white },
    CursorLine = { bg = palette.cursorline },
    CursorLineNr = { fg = palette.white, bold = true },
    LineNr = { fg = palette.gray },
    SignColumn = { bg = palette.background },
    WinSeparator = { fg = palette.selection },
    Visual = { bg = palette.selection },
    Search = { fg = palette.background, bg = palette.blue },
    IncSearch = { fg = palette.background, bg = palette.orange },
    MatchParen = { fg = palette.bright_cyan, bold = true, underline = true },
    Pmenu = { link = "NormalFloat" },
    PmenuSel = { fg = palette.background, bg = palette.blue },
    StatusLine = { fg = palette.foreground, bg = palette.panel },
    StatusLineNC = { fg = palette.gray, bg = palette.panel },
    Title = { fg = palette.bright_cyan, bold = true },
    Directory = { fg = palette.blue },
    Comment = { fg = palette.comment },
    Constant = { fg = palette.orange },
    String = { fg = palette.yellow },
    Character = { link = "String" },
    Number = { link = "Constant" },
    Boolean = { link = "Constant" },
    Float = { link = "Number" },
    Identifier = { fg = palette.foreground },
    Function = { fg = palette.green },
    Statement = { fg = palette.pink },
    Operator = { link = "Statement" },
    Keyword = { link = "Statement" },
    PreProc = { fg = palette.bright_purple },
    Type = { fg = palette.bright_cyan },
    StorageClass = { fg = palette.purple },
    Special = { fg = palette.mint },
    Delimiter = { fg = palette.foreground },
    Todo = { fg = palette.background, bg = palette.yellow, bold = true },
    DiagnosticError = { fg = palette.red },
    DiagnosticWarn = { fg = palette.orange },
    DiagnosticInfo = { fg = palette.blue },
    DiagnosticHint = { fg = palette.mint },
    DiffAdd = { fg = palette.mint },
    DiffChange = { fg = palette.blue },
    DiffDelete = { fg = palette.red },
    DiffText = { fg = palette.blue, bold = true },
    ["@variable"] = { link = "Identifier" },
    ["@variable.builtin"] = { link = "Constant" },
    ["@variable.parameter"] = { fg = palette.orange },
    ["@variable.member"] = { fg = palette.bright_cyan },
    ["@function.call"] = { link = "Identifier" },
    ["@function.builtin"] = { link = "Special" },
    ["@keyword.type"] = { link = "StorageClass" },
    ["@string.escape"] = { link = "Special" },
}

for group, attributes in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, attributes)
end

local terminal_colors = {
    palette.background, palette.red, palette.green, palette.yellow,
    palette.blue, palette.purple, palette.cyan, palette.foreground,
    palette.gray, palette.pink, palette.mint, palette.bright_yellow,
    palette.bright_blue, palette.bright_purple, palette.bright_cyan, palette.white,
}

for index, color in ipairs(terminal_colors) do
    vim.g["terminal_color_" .. (index - 1)] = color
end
