local lush = require('lush')
local c = require('embark_pro.colors')

local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    Normal { bg = c.bg, fg = c.fg },
    NormalFloat { bg = c.black, fg = c.fg },
    CursorLine { bg = c.dark_gray },
    Visual { bg = c.selection },
    Search { bg = c.yellow, fg = c.black, gui = "bold" },
    
    Pmenu { bg = c.dark_gray, fg = c.fg },
    PmenuSel { bg = c.selection, fg = c.yellow, gui = "bold" },
    PmenuSbar { bg = c.black },
    PmenuThumb { bg = c.bright_black },

    CmpItemAbbrMatch { fg = c.blue, gui = "bold" },
    CmpItemAbbrMatchFuzzy { fg = c.blue, gui = "bold" },
    CmpItemKind { fg = c.magenta },
    CmpItemMenu { fg = c.bright_black, gui = "italic" },

    Comment { fg = c.bright_black, gui = "italic" },
    Constant { fg = c.magenta },
    String { fg = c.yellow },
    Number { fg = c.yellow },
    Boolean { fg = c.yellow },
    Float { fg = c.yellow },
    Function { fg = c.red },
    Statement { fg = c.green },
    Keyword { fg = c.green },
    PreProc { fg = c.green },
    Include { fg = c.green },
    Define { fg = c.green },
    Type { fg = c.magenta },
    Structure { fg = c.bright_magenta },
    Operator { fg = c.cyan },
    Identifier { fg = c.fg },
    Special { fg = c.cyan },
    Underlined { gui = "underline" },
    Error { fg = c.error },
    Todo { fg = c.yellow, gui = "bold" },

    htmlTag { fg = c.fg },
    htmlEndTag { fg = c.fg },
    htmlTagName { fg = c.green },
    htmlArg { fg = c.yellow },
    htmlSpecialTagName { fg = c.red },
    htmlLink { fg = c.fg },

    phpVarSelector { fg = c.blue },
    phpIdentifier { fg = c.fg },
    phpParent { fg = c.cyan },
    phpMemberSelector { fg = c.cyan },
    phpRegion { fg = c.fg },

    sym("@variable") { fg = c.fg },
    sym("@variable.builtin") { fg = c.blue, gui = "italic" },
    sym("@variable.parameter") { fg = c.cyan },
    sym("@variable.member") { fg = c.bright_blue },
    
    sym("@module") { fg = c.magenta },
    sym("@module.builtin") { fg = c.magenta },
    sym("@namespace") { fg = c.magenta },
    
    sym("@type") { fg = c.bright_magenta },
    sym("@type.builtin") { fg = c.bright_magenta },
    sym("@type.qualifier") { fg = c.bright_magenta },
    sym("@class") { fg = c.bright_magenta },
    
    sym("@function") { fg = c.red },
    sym("@function.builtin") { fg = c.red, gui = "italic" },
    sym("@function.method") { fg = c.red },
    sym("@function.call") { fg = c.blue },
    sym("@function.method.call") { fg = c.blue },
    sym("@method.call") { fg = c.blue },
    
    sym("@constructor") { fg = c.bright_cyan },
    
    sym("@keyword") { fg = c.green },
    sym("@keyword.function") { fg = c.green },
    sym("@keyword.import") { fg = c.green },
    sym("@keyword.repeat") { fg = c.green },
    sym("@keyword.return") { fg = c.magenta },
    sym("@keyword.operator") { fg = c.cyan },
    
    sym("@operator") { fg = c.cyan },
    sym("@punctuation.bracket") { fg = c.cyan },
    sym("@punctuation.delimiter") { fg = c.cyan },
    sym("@punctuation.separator") { fg = c.cyan },

    sym("@lsp.type.class") { fg = c.bright_magenta },
    sym("@lsp.type.type") { fg = c.bright_magenta },
    sym("@lsp.type.method") { fg = c.blue },
    sym("@lsp.type.function") { fg = c.blue },
    sym("@lsp.type.parameter") { fg = c.cyan },
    sym("@lsp.type.variable") { fg = c.fg },
    sym("@lsp.type.namespace") { fg = c.magenta },
    sym("@lsp.type.decorator") { fg = c.green },
    sym("@lsp.type.property") { fg = c.bright_blue },
    
    sym("@lsp.typemod.method.defaultLibrary") { fg = c.blue },
    sym("@lsp.typemod.function.defaultLibrary") { fg = c.blue },
    sym("@lsp.typemod.class.defaultLibrary") { fg = c.bright_magenta },
    sym("@lsp.typemod.variable.defaultLibrary") { fg = c.blue },

    sym("@tag") { fg = c.green },
    sym("@tag.attribute") { fg = c.blue },
    sym("@tag.delimiter") { fg = c.cyan },
    sym("@property.css") { fg = c.cyan },
    sym("@tag.twig") { fg = c.green, gui = "bold" },
    sym("@variable.twig") { fg = c.blue },
    sym("@keyword.twig") { fg = c.magenta },
    sym("@comment.twig") { fg = c.bright_black, gui = "italic" },

    DiagnosticError { fg = c.error },
    DiagnosticWarn { fg = c.warning },
    DiagnosticInfo { fg = c.info },
    DiagnosticHint { fg = c.hint },

    NvimTreeNormal { bg = c.bg, fg = c.fg },
    NvimTreeFolderName { fg = c.magenta },
    NvimTreeOpenedFolderName { fg = c.magenta, gui = "bold" },
    NvimTreeFolderIcon { fg = c.magenta },
    NvimTreeRootFolder { fg = c.green, gui = "bold" },
    NvimTreeIndentMarker { fg = c.gray },
  }
end)

return theme
