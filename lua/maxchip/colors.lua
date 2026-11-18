vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end
vim.g.colors_name = "custom_theme"
--#region
local palette = {
    bg = "#444444",
    fg = "#ffffff",
    surface = "#333333",
    overlay = "#595959",
    muted = "#888888",
    accent1 = "#97cc55",
    accent2 = "#44aaff",
    accent3 = "#f28f3b",
    error = "#ff3355",
    warning = "#ddbb22",
}

local hl = vim.api.nvim_set_hl

-- nvim
hl(0, "Normal", { fg = palette.fg, bg = palette.bg })
hl(0, "CursorLine", { bg = palette.overlay })
hl(0, "CursorLineNr", { fg = palette.accent3, bold = true })
hl(0, "LineNr", { fg = palette.muted })
hl(0, "Visual", { bg = palette.overlay })
hl(0, "WinSeparator", { fg = palette.overlay })
hl(0, "SignColumn", { bg = palette.bg })

-- syntax/treesitter
hl(0, "Comment", { fg = palette.muted, italic = true })
hl(0, "Keyword", { fg = palette.accent2, bold = true })
hl(0, "Function", { fg = palette.accent3, bold = true })
hl(0, "String", { fg = palette.accent1 })
hl(0, "Constant", { fg = palette.accent3 })
hl(0, "Type", { fg = palette.accent2 })
hl(0, "Identifier", { fg = palette.fg })

hl(0, "@comment", { fg = palette.muted, italic = true })
hl(0, "@keyword", { fg = palette.accent2, bold = true })
hl(0, "@keyword.return", { fg = palette.accent2, bold = true })
hl(0, "@function", { fg = palette.accent3, bold = true })
hl(0, "@function.builtin", { fg = palette.accent3 })
hl(0, "@function.method", { fg = palette.accent3 })
hl(0, "@string", { fg = palette.accent1 })
hl(0, "@number", { fg = palette.accent2 })
hl(0, "@number.float", { fg = palette.accent2 })
hl(0, "@boolean", { fg = palette.accent2 })
hl(0, "@character", { fg = palette.accent3 })
hl(0, "@constant", { fg = palette.accent2 })
hl(0, "@constant.builtin", { fg = palette.accent2 })
hl(0, "@variable", { fg = palette.fg })
hl(0, "@variable.builtin", { fg = palette.accent2 })
hl(0, "@punctuation.bracket", { fg = palette.fg })
hl(0, "@punctuation.delimiter", { fg = palette.fg })
hl(0, "@property", { fg = palette.accent3 })
hl(0, "@variable.member", { fg = palette.accent3 })
hl(0, "@operator", { fg = palette.accent2 })
hl(0, "@type", { fg = palette.accent2, bold = true })
hl(0, "@type.builtin", { fg = palette.accent2 })
hl(0, "@punctuation.delimiter", { fg = palette.muted })
hl(0, "@punctuation.bracket", { fg = palette.fg })
hl(0, "@attribute", { fg = palette.accent2 })

local lsp_links = {
    ["@lsp.type.namespace"] = "@namespace",
    ["@lsp.type.type"] = "@type",
    ["@lsp.type.class"] = "@type",
    ["@lsp.type.enum"] = "@type",
    ["@lsp.type.interface"] = "@type",
    ["@lsp.type.struct"] = "@type",
    ["@lsp.type.parameter"] = "@variable",
    ["@lsp.type.variable"] = "@variable",
    ["@lsp.type.property"] = "@property",
    ["@lsp.type.enumMember"] = "@constant",
    ["@lsp.type.function"] = "@function",
    ["@lsp.type.method"] = "@function.method",
    ["@lsp.type.macro"] = "@macro",
    ["@lsp.type.keyword"] = "@keyword",
    ["@lsp.type.comment"] = "@comment",
    ["@lsp.type.string"] = "@string",
    ["@lsp.type.number"] = "@number",
    ["@lsp.type.operator"] = "@operator",
}

for lsp_group, target_group in pairs(lsp_links) do
    hl(0, lsp_group, { link = target_group, default = true })
end

hl(0, "@lsp.type.builtin", { fg = palette.accent2, bold = true })

-- telescope
hl(0, "Pmenu", { fg = palette.fg, bg = palette.surface })
hl(0, "PmenuSel", { fg = palette.bg, bg = palette.accent2, bold = true })
hl(0, "PmenuSbar", { bg = palette.surface })
hl(0, "PmenuThumb", { bg = palette.overlay })
hl(0, "NormalFloat", { bg = palette.surface })
hl(0, "FloatBorder", { fg = palette.accent2, bg = palette.surface })
hl(0, "FloatTitle", { fg = palette.accent3, bg = palette.surface, bold = true })

-- diagnostic
hl(0, "DiagnosticError", { fg = palette.error })
hl(0, "DiagnosticWarn", { fg = palette.warning })
hl(0, "DiagnosticInfo", { fg = palette.accent2 })
hl(0, "DiagnosticHint", { fg = palette.accent1 })
hl(0, "DiagnosticUnderlineError", { sp = palette.error, undercurl = true })
hl(0, "DiagnosticUnderlineWarn", { sp = palette.warning, undercurl = true })

-- 5. Git Indications
hl(0, "DiffAdd", { fg = palette.accent1 })
hl(0, "DiffChange", { fg = palette.warning })
hl(0, "DiffDelete", { fg = palette.error })
