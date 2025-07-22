vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "alabaster"

local theme
---@diagnostic disable: undefined-global
if vim.o.background == "dark" then
    -- terminal colors
    vim.g.terminal_color_0 = "#000000"
    vim.g.terminal_color_1 = "#d2322d"
    vim.g.terminal_color_2 = "#6abf40"
    vim.g.terminal_color_3 = "#cd974b"
    vim.g.terminal_color_4 = "#217EBC"
    vim.g.terminal_color_5 = "#9B3596"
    vim.g.terminal_color_6 = "#178F79"
    vim.g.terminal_color_7 = "#cecece"
    vim.g.terminal_color_8 = "#333333"
    vim.g.terminal_color_9 = "#c33c33"
    vim.g.terminal_color_10 = "#95cb82"
    vim.g.terminal_color_11 = "#dfdf8e"
    vim.g.terminal_color_12 = "#71aed7"
    vim.g.terminal_color_13 = "#cc8bc9"
    vim.g.terminal_color_14 = "#47BEA9"
    vim.g.terminal_color_15 = "#ffffff"

    -- colors
    local bg = "#0B1722"
    local fg = "#cecece"
    local punct_fg = "#708b8d"
    local preproc_fg = "#54699C"
    local def_fg = "#71ade7"
    local const_fg = "#cc8bc9"
    local active = "#cd974b"
    local string_fg = "#95cb82"
    local darker_fg = "#7d7d7d"
    local diffadd = "#6abf40"
    local diffdelete = "#d2322d"
    local diffchange = "#ec8013"
    local statusline = "#162022"
    local comment = "#E0C590"
    local dim_comment = "#696969"
    local function_fg = "#7d718e"
    local mistake = {
        fg = "#c33c33",
        bg = "#2b1d1e",
    }
    local error = "#d13e23"
    local warn = "#f4b371"
    local hint = "#8ebeec"
    local info = "#88cc66"
    local ansi = {
        black = "#333333",
        blue = "#71aed7",
        brightyellow = "#dfdf8e",
        cyan = "#47bea9",
        green = "#95cb82",
        magenta = "#cc8bc9",
        red = "#c33c33",
        white = "#cecece",
        yellow = "#cd974b",
    }
    local comment_fg = vim.g.alabaster_dim_comments and dim_comment or comment
    local pmenu_bg = "#182325"
    local float_bg = vim.g.alabaster_floatborder and bg or pmenu_bg
    local floatborder = vim.g.alabaster_floatborder and { bg = bg, fg = "#333333" }
        or {
            bg = float_bg,
            fg = float_bg,
        }
    theme = {
        Comment = { fg = comment_fg },
        ColorColumn = { bg = "#182325" },
        Conceal = { fg = "#b0b0b0" },
        Cursor = { bg = active, fg = "#000000" },
        -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn = { bg = "#182325" },
        CursorLine = { bg = "#182325" },
        Directory = { fg = ansi.blue },
        DiffAdd = { bg = "#244032", fg = "#56d364" },
        DiffDelete = { bg = "#462c32", fg = "#f85149" },
        DiffText = { fg = "#341a00", bg = "#fff987" },
        DiffChange = { bg = "#341a00", fg = "#e3b341" },
        EndOfBuffer = { fg = "#354c50" },
        -- TermCursor   { }, -- cursor in a focused terminal
        TermCursorNC = { fg = bg, bg = fg },
        ErrorMsg = { fg = error, bg = mistake.bg },
        VertSplit = { fg = "#2b3d40" },
        Folded = { bg = "#182325", fg = "#7d7d7d" },
        FoldColumn = { bg = bg, fg = "#4d4d4d" },
        SignColumn = {},
        IncSearch = { bg = ansi.yellow, fg = bg },
        -- Substitute   { }, -- |:substitute| replacement text highlighting
        LineNr = { fg = "#5c5c5c" },
        CursorLineNr = { fg = ansi.blue, bold = 1 },
        MatchParen = { underline = 1, sp = active },
        -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea      { }, -- Area for messages and cmdline
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg = { fg = ansi.green, bold = 1 },
        NonText = { fg = "#696969" },
        Normal = { bg = bg, fg = fg },
        NormalFloat = { bg = float_bg },
        -- NormalNC     { }, -- normal text in non-current windows
        FloatBorder = floatborder,
        Pmenu = { bg = pmenu_bg },
        PmenuSel = { bg = "#354c50" },
        PmenuSbar = { bg = "#212f31" },
        PmenuThumb = { bg = "#47666b" },
        Question = { fg = diffadd },
        QuickFixLine = { bg = "#182325" },
        Search = { bg = "#354c50" },
        SpecialKey = { fg = ansi.cyan },
        SpellBad = { undercurl = 1, sp = ansi.red },
        SpellCap = { undercurl = 1, sp = ansi.blue },
        SpellLocal = { undercurl = 1, sp = ansi.cyan },
        SpellRare = { undercurl = 1, sp = ansi.magenta },
        StatusLine = { bg = statusline, fg = fg },
        StatusLineNC = { bg = statusline, fg = "#9f9f9f" },
        TabLine = { bg = statusline, fg = "#7d7d7d" },
        TabLineFill = { bg = statusline },
        TabLineSel = { bg = statusline, fg = ansi.blue },
        Title = { fg = const_fg },
        Visual = { bg = "#293334" },
        VisualNOS = { bg = "#293334" },
        WarningMsg = { fg = "#e1ad4c" },
        WildMenu = { bg = "#354c50" },
        WinBar = { bg = bg, fg = ansi.white, bold = true },
        WinBarNC = { bg = bg, fg = "#7d7d7d" },

        --- SYNTAX I: TS groups link to these
        Constant = { fg = const_fg },
        String = { fg = string_fg },
        Character = { fg = const_fg },
        Number = { fg = const_fg },
        Boolean = { fg = const_fg },
        Float = { fg = const_fg },
        Operator = { fg = def_fg, bold = true },

        --- SYNTAX II: TS groups have their own definition, the below are defined to have somewhat working hl w/o treesitter
        Identifier = { fg = ansi.white },
        Function = { fg = function_fg },
        Statement = { fg = def_fg, bold = true },
        Conditional = { fg = def_fg, bold = true },
        Repeat = { fg = def_fg, bold = true },
        Label = { fg = ansi.white },
        Keyword = { fg = def_fg, bold = true },
        Exception = { fg = ansi.white },
        PreProc = { fg = preproc_fg },
        Include = { fg = preproc_fg },
        Define = { fg = preproc_fg },
        Macro = { fg = preproc_fg },
        PreCondit = { fg = preproc_fg },
        Type = { fg = punct_fg },
        StorageClass = { fg = def_fg, bold = true },
        Structure = { fg = def_fg, bold = true },
        Typedef = { fg = ansi.white },

        Special = { fg = ansi.yellow },
        -- TODO better color than diffchange, try reddish
        -- SpecialChar = { fg = diffchange }, --  special character in a constant
        -- Tag            { }, --    you can use CTRL-] on this
        -- Delimiter      { },
        SpecialComment = { bg = "#1d292b", fg = ansi.blue },
        debugPc = { bg = "#0f2534" },
        debugBreakpoint = { bg = "#b33229" },
        helpHyperTextJump = { fg = ansi.magenta },
        helpSectionDelim = { fg = ansi.magenta },
        helpExample = { fg = ansi.cyan },
        helpCommand = { fg = ansi.cyan },
        helpHeadline = { fg = ansi.blue },
        helpHeader = { fg = ansi.magenta },

        Underlined = { underline = 1 }, -- (preferred) text that stands out, HTML links
        Italic = { italic = 1 },

        -- ("Ignore", below, may be invisible...)
        -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Error = { bg = mistake.bg, fg = mistake.fg },

        Todo = { bg = "#d0d058", fg = bg },

        --- Diagnostic
        LspReferenceText = { bg = "#253437" },
        LspReferenceRead = { bg = "#253437" },
        LspReferenceWrite = { bg = "#253437", underline = 1, sp = active },
        LspCodeLens = { fg = "#5c5c5c" },
        LspCodeLensSeparator = { fg = "#5c5c5c" },

        --- Diagnostic
        DiagnosticError = { fg = error },
        DiagnosticWarn = { fg = warn },
        DiagnosticHint = { fg = hint },
        DiagnosticInfo = { fg = info },
        DiagnosticVirtualTextError = { bg = "#350B0B", fg = "#D1503A" },
        DiagnosticVirtualTextWarn = { bg = "#3F240A", fg = "#C8935D" },
        DiagnosticVirtualTextHint = { bg = "#1D2B37", fg = "#7E9CB9" },
        DiagnosticVirtualTextInfo = { bg = "#162C0B", fg = "#7BAC62" },

        --- Treesitter
        TSAttribute = {},
        TSConstructor = { fg = ansi.white },
        TSConditional = { fg = def_fg, bold = true },
        TSConstBuiltin = { fg = const_fg },
        TSConstMacro = { fg = ansi.white },
        TSError = { bg = mistake.bg, fg = mistake.fg },
        TSException = { fg = ansi.white },
        TSField = { fg = ansi.white },
        TSFunction = { fg = ansi.white },
        TSFuncBuiltin = { fg = ansi.white },
        TSFuncMacro = { fg = ansi.white },
        TSKeyword = { fg = ansi.white, bold = true },
        TSKeywordFunction = { fg = ansi.white },
        TSLabel = { fg = ansi.white },
        TSMethod = { fg = ansi.white },
        TSNamespace = { fg = ansi.white },
        TSNone = { fg = const_fg },
        TSParameter = { fg = ansi.white },
        TSParameterReference = { fg = ansi.white },
        TSProperty = { fg = ansi.white },
        TSPunctDelimiter = { fg = punct_fg },
        TSPunctBracket = { fg = "#bababa" },
        TSPunctSpecial = { fg = punct_fg },
        TSRepeat = { fg = def_fg, bold = true },
        TSString = { fg = string_fg },
        TSStringRegex = { bg = "#1d292b", fg = const_fg },
        TSStringEscape = { bg = "#1d292b", fg = const_fg },
        TSSymbol = {},
        TSType = { fg = punct_fg },
        TSTypeBuiltin = { fg = ansi.white, bold = true },
        TSVariable = { fg = ansi.white },
        TSVariableBuiltin = { fg = ansi.white },
        TSTag = { fg = ansi.white },
        TSTagDelimiter = { fg = punct_fg },
        TSText = { fg = ansi.white },
        ["@attribute"] = {},
        ["@constructor"] = { fg = ansi.white },
        ["@conditional"] = { fg = ansi.white },
        ["@constant.builtin"] = { fg = const_fg },
        ["@constant.macro"] = { fg = ansi.white },
        ["@error"] = { bg = mistake.bg, fg = mistake.fg },
        ["@exception"] = { fg = ansi.white },
        ["@field"] = { fg = ansi.white },
        ["@function"] = { fg = ansi.white },
        ["@function.builtin"] = { fg = ansi.white },
        ["@function.macro"] = { fg = ansi.white },
        ["@keyword"] = { fg = ansi.white },
        ["@keyword.function"] = { fg = ansi.white },
        ["@label"] = { fg = ansi.white },
        ["@method"] = { fg = ansi.white },
        ["@module"] = { fg = ansi.white },
        ["@namespace"] = { fg = ansi.white },
        ["@none"] = { fg = const_fg },
        ["@parameter"] = { fg = ansi.white },
        ["@parameter.reference"] = { fg = ansi.white },
        ["@property"] = { fg = ansi.white },
        ["@punctuation.delimiter"] = { fg = punct_fg },
        ["@punctuation.bracket"] = { fg = "#bababa" },
        ["@punctuation.special"] = { fg = punct_fg },
        ["@repeat"] = { fg = ansi.white },
        ["@string"] = { fg = string_fg },
        ["@string.regex"] = { bg = "#1d292b", fg = const_fg },
        ["@string.escape"] = { bg = "#1d292b", fg = const_fg },
        ["@symbol"] = {},
        ["@type"] = { fg = ansi.white },
        ["@type.builtin"] = { fg = ansi.white },
        ["@variable"] = { fg = ansi.white },
        ["@variable.builtin"] = { fg = ansi.white },
        ["@tag"] = { fg = ansi.white },
        ["@tag.delimiter"] = { fg = punct_fg },
        ["@text"] = { fg = ansi.white },
        ["@text.note"] = { bg = "#1d292b", fg = ansi.blue },
        ["@text.warning"] = { bg = "#d0d058", fg = bg },

        --- Theme specific
        ["@AlabasterConstant"] = { fg = const_fg },
        ["@AlabasterDefinition"] = { fg = def_fg },
        ["@AlabasterPunct"] = { fg = punct_fg },
        ["@AlabasterString"] = { fg = string_fg },
        ["@AlabasterHashbang"] = { fg = dim_comment },
        --- Gitsigns
        GitSignsAdd = { fg = diffadd },
        GitSignsChange = { fg = diffchange },
        GitSignsDelete = { fg = diffdelete },
        --- Telescope
        TelescopeBorder = { fg = "#2b3d40" },
        TelescopeMatching = { fg = "#f09942" },
        TelescopeMultiSelection = { fg = ansi.magenta },
        TelescopePromptPrefix = { fg = ansi.blue },
        TelescopeSelectionCaret = { fg = mistake.fg },
        TelescopeTitle = { fg = ansi.brightyellow },
        TelescopeResultsTitle = { fg = ansi.yellow },
        --- fzf-lua
        FzfLuaBorder = { fg = "#2b3d40" },
        --- Neogit
        NeogitPopupActionDisabled = { fg = darker_fg },
        NeogitPopupActionKey = { fg = ansi.magenta },
        NeogitPopupOptionDisabled = { fg = darker_fg },
        NeogitPopupOptionKey = { fg = ansi.blue },
        NeogitPopupSwitchDisabled = { fg = darker_fg },
        NeogitPopupSwitchEnabled = { fg = ansi.cyan },
        NeogitPopupSwitchKey = { fg = ansi.magenta },
        --- Fugitive
        diffAdded = { link = "DiffAdd" },
        diffRemoved = { link = "DiffDelete" },
        --- Startify
        StartifyBracket = { fg = darker_fg },
        StartifyFile = { fg = ansi.white },
        StartifySection = { fg = ansi.green },
        StartifySlash = { fg = "#4e6e75" },
        StartifyPath = { fg = "#4e6e75" },
        --- Statusline
        StatuslineAdd = { fg = diffadd, bg = statusline },
        StatuslineErr = { fg = error, bg = statusline },
        StatuslineHint = { fg = hint, bg = statusline },
        StatuslineInfo = { fg = info, bg = statusline },
        StatuslineWarn = { fg = warn, bg = statusline },
        StatuslineBlue = { fg = ansi.blue, bg = statusline },
        StatuslineRed = { fg = ansi.red, bg = statusline },
        StatuslineGreen = { fg = ansi.green, bg = statusline },
        StatuslineCyan = { fg = ansi.cyan, bg = statusline },
        StatuslineMagenta = { fg = ansi.magenta, bg = statusline },
        --- ALE
        ALEWarningSign = { fg = warn },
        --- vim-matchup
        MatchupVirtualText = { fg = ansi.yellow },
        --- For `highlight link`
        AlabasterBlack = { fg = ansi.black },
        AlabasterBlue = { fg = ansi.blue },
        AlabasterBrightYellow = { fg = ansi.brightyellow },
        AlabasterCyan = { fg = ansi.cyan },
        AlabasterGreen = { fg = ansi.green },
        AlabasterDarkGreen = { fg = "#6abf40" },
        AlabasterMagenta = { fg = ansi.magenta },
        AlabasterRed = { fg = ansi.red },
        AlabasterWhite = { fg = ansi.white },
        AlabasterYellow = { fg = ansi.yellow },
        --- Hop
        HopNextKey = { fg = ansi.brightyellow },
        HopNextKey1 = { fg = ansi.cyan },
        HopNextKey2 = { fg = "#297567" },
        HopUnmatched = { fg = "#3d3d3d" },
        --- Lightspeed
        LightspeedGreyWash = { fg = "#3d3d3d" },
        --- checkhealth
        healthSuccess = { fg = ansi.green, bg = bg },
        --- cmp
        CmpItemMenuDefault = { fg = ansi.magenta },
        --- nvim-ts-rainbow
        rainbowcol1 = { fg = ansi.yellow },
        rainbowcol2 = { fg = ansi.magenta },
        rainbowcol3 = { fg = ansi.blue },
        rainbowcol4 = { fg = ansi.green },
        rainbowcol5 = { fg = ansi.brightyellow },
        rainbowcol6 = { fg = ansi.red },
        rainbowcol7 = { fg = ansi.cyan },
        --- Iswap
        ISwapSnipe = { bg = ansi.yellow, fg = bg },
        ISwapGrey = { fg = "#3d3d3d" },
        --- vim-dadbod-ui
        dbui_help = { fg = dim_comment },
        dbui_connection_source = { fg = dim_comment },
        --- nvim-dap-virtual-text
        NvimDapVirtualText = { bg = "#1d292b", fg = ansi.cyan },
        --- Noice
        NoiceCmdlineIcon = { link = "AlabasterDarkGreen" },
        NoiceCmdlinePopupBorder = { link = "AlabasterDarkGreen" },
        NoiceConfirmBorder = { link = "AlabasterDarkGreen" },
        NoiceCmdlinePopupBorderCmdline = { link = "AlabasterDarkGreen" },
        NoiceCmdlineIconCmdline = { link = "AlabasterDarkGreen" },
        NoiceCmdlinePopupBorderFilter = { link = "AlabasterDarkGreen" },
        NoiceCmdlineIconFilter = { link = "AlabasterDarkGreen" },
        NoiceCmdlinePopupBorderLua = { link = "AlabasterDarkGreen" },
        NoiceCmdlineIconLua = { link = "AlabasterDarkGreen" },
        NoiceCmdlinePopupBorderSearch = { link = "AlabasterYellow" },
        NoiceCmdlineIconSearch = { link = "AlabasterYellow" },
        -- Languages
        --- asm
        asmDirective = { fg = dim_comment },
        nasmLabel = { link = "@AlabasterDefinition" },
    }
else
    -- terminal colors
    vim.g.terminal_color_0 = "#000000"
    vim.g.terminal_color_1 = "#d2322d"
    vim.g.terminal_color_2 = "#6abf40"
    vim.g.terminal_color_3 = "#cd974b"
    vim.g.terminal_color_4 = "#217EBC"
    vim.g.terminal_color_5 = "#9B3596"
    vim.g.terminal_color_6 = "#178F79"
    vim.g.terminal_color_7 = "#cecece"
    vim.g.terminal_color_8 = "#333333"
    vim.g.terminal_color_9 = "#c33c33"
    vim.g.terminal_color_10 = "#95cb82"
    vim.g.terminal_color_11 = "#dfdf8e"
    vim.g.terminal_color_12 = "#71aed7"
    vim.g.terminal_color_13 = "#cc8bc9"
    vim.g.terminal_color_14 = "#47BEA9"
    vim.g.terminal_color_15 = "#ffffff"

    -- colors
    local bg = "#331a30" -- 
    local fg = "#cecece" 
    local punct_fg = "#655689" --
    local def_fg = "#ff7fc0" --
    local preproc_fg = "#723a6c"
    local const_fg = "#cc8bc9"
    local active = "#cd974b"
    local string_fg = "#95cb82"
    local darker_fg = "#7d7d7d"
    local diffadd = "#6abf40"
    local diffdelete = "#d2322d"
    local diffchange = "#ec8013"
    local statusline = "#482544" --
    local comment = "#9d45b3" --
    local dim_comment = "#696969"
    local function_fg = "#996a87"
    local mistake = {
        fg = "#c33c33",
        bg = "#2b1d1e",
    }
    local error = "#d13e23"
    local warn = "#f4b371"
    local hint = "#8ebeec"
    local info = "#88cc66"
    local ansi = {
        black = "#333333",
        blue = "#71aed7",
        brightyellow = "#dfdf8e",
        cyan = "#47bea9",
        green = "#95cb82",
        magenta = "#cc8bc9",
        red = "#c33c33",
        white = "#cecece",
        yellow = "#cd974b",
        mycolor = "#ff7fc0",
    }
    local comment_fg = vim.g.alabaster_dim_comments and dim_comment or comment
    local pmenu_bg = "#182325"
    local float_bg = vim.g.alabaster_floatborder and bg or pmenu_bg
    local floatborder = vim.g.alabaster_floatborder and { bg = bg, fg = "#333333" }
        or {
            bg = float_bg,
            fg = float_bg,
        }
    theme = {
        Comment = { fg = comment_fg },
        ColorColumn = { bg = "#3a283e" },
        Conceal = { fg = "#b0b0b0" },
        Cursor = { bg = active, fg = "#000000" },
        -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn = { bg = "#3a283e" },
        CursorLine = { bg = "#3a283e" },
        Directory = { fg = ansi.blue },
        DiffAdd = { bg = "#244032", fg = "#56d364" },
        DiffDelete = { bg = "#462c32", fg = "#f85149" },
        DiffText = { fg = "#341a00", bg = "#fff987" },
        DiffChange = { bg = "#341a00", fg = "#e3b341" },
        EndOfBuffer = { fg = "#354c50" },
        -- TermCursor   { }, -- cursor in a focused terminal
        TermCursorNC = { fg = bg, bg = fg },
        ErrorMsg = { fg = error, bg = mistake.bg },
        VertSplit = { fg = "#2b3d40" },
        Folded = { bg = "#182325", fg = "#7d7d7d" },
        FoldColumn = { bg = bg, fg = "#4d4d4d" },
        SignColumn = {},
        IncSearch = { bg = ansi.yellow, fg = bg },
        -- Substitute   { }, -- |:substitute| replacement text highlighting
        LineNr = { fg = "#5c5c5c" },
        CursorLineNr = { fg = ansi.mycolor, bold = 1 },
        MatchParen = { underline = 1, sp = active },
        -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea      { }, -- Area for messages and cmdline
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg = { fg = ansi.green, bold = 1 },
        NonText = { fg = "#696969" },
        Normal = { bg = bg, fg = fg },
        NormalFloat = { bg = float_bg },
        -- NormalNC     { }, -- normal text in non-current windows
        FloatBorder = floatborder,
        Pmenu = { bg = pmenu_bg },
        PmenuSel = { bg = "#354c50" },
        PmenuSbar = { bg = "#212f31" },
        PmenuThumb = { bg = "#47666b" },
        Question = { fg = diffadd },
        QuickFixLine = { bg = "#182325" },
        Search = { bg = "#354c50" },
        SpecialKey = { fg = ansi.cyan },
        SpellBad = { undercurl = 1, sp = ansi.red },
        SpellCap = { undercurl = 1, sp = ansi.blue },
        SpellLocal = { undercurl = 1, sp = ansi.cyan },
        SpellRare = { undercurl = 1, sp = ansi.magenta },
        StatusLine = { bg = statusline, fg = fg },
        StatusLineNC = { bg = statusline, fg = "#9f9f9f" },
        TabLine = { bg = statusline, fg = "#7d7d7d" },
        TabLineFill = { bg = statusline },
        TabLineSel = { bg = statusline, fg = ansi.blue },
        Title = { fg = const_fg },
        Visual = { bg = statusline },
        VisualNOS = { bg = statusline },
        WarningMsg = { fg = "#e1ad4c" },
        WildMenu = { bg = "#354c50" },
        WinBar = { bg = bg, fg = ansi.white, bold = true },
        WinBarNC = { bg = bg, fg = "#7d7d7d" },

        --- SYNTAX I: TS groups link to these
        Constant = { fg = const_fg },
        String = { fg = string_fg },
        Character = { fg = const_fg },
        Number = { fg = const_fg },
        Boolean = { fg = const_fg },
        Float = { fg = const_fg },
        Operator = { fg = def_fg, bold = true },

        --- SYNTAX II: TS groups have their own definition, the below are defined to have somewhat working hl w/o treesitter
        Identifier = { fg = ansi.white },
        Function = { fg = function_fg },
        Statement = { fg = def_fg, bold = true },
        Conditional = { fg = def_fg, bold = true },
        Repeat = { fg = def_fg, bold = true },
        Label = { fg = ansi.white },
        Keyword = { fg = def_fg, bold = true },
        Exception = { fg = ansi.white },
        PreProc = { fg = preproc_fg },
        Include = { fg = preproc_fg },
        Define = { fg = preproc_fg },
        Macro = { fg = preproc_fg },
        PreCondit = { fg = preproc_fg },
        Type = { fg = punct_fg },
        StorageClass = { fg = def_fg, bold = true },
        Structure = { fg = def_fg, bold = true },
        Typedef = { fg = ansi.white },

        Special = { fg = ansi.yellow },
        -- TODO better color than diffchange, try reddish
        -- SpecialChar = { fg = diffchange }, --  special character in a constant
        -- Tag            { }, --    you can use CTRL-] on this
        Delimiter  =  { fg = fg },
        SpecialComment = { bg = "#1d292b", fg = ansi.blue },
        debugPc = { bg = "#0f2534" },
        debugBreakpoint = { bg = "#b33229" },
        helpHyperTextJump = { fg = ansi.magenta },
        helpSectionDelim = { fg = ansi.magenta },
        helpExample = { fg = ansi.cyan },
        helpCommand = { fg = ansi.cyan },
        helpHeadline = { fg = ansi.blue },
        helpHeader = { fg = ansi.magenta },

        Underlined = { underline = 1 }, -- (preferred) text that stands out, HTML links
        Italic = { italic = 1 },

        -- ("Ignore", below, may be invisible...)
        -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Error = { bg = mistake.bg, fg = mistake.fg },

        Todo = { bg = "#d0d058", fg = bg },

        --- Diagnostic
        LspReferenceText = { bg = "#253437" },
        LspReferenceRead = { bg = "#253437" },
        LspReferenceWrite = { bg = "#253437", underline = 1, sp = active },
        LspCodeLens = { fg = "#5c5c5c" },
        LspCodeLensSeparator = { fg = "#5c5c5c" },

        --- Diagnostic
        DiagnosticError = { fg = error },
        DiagnosticWarn = { fg = warn },
        DiagnosticHint = { fg = hint },
        DiagnosticInfo = { fg = info },
        DiagnosticVirtualTextError = { bg = "#350B0B", fg = "#D1503A" },
        DiagnosticVirtualTextWarn = { bg = "#3F240A", fg = "#C8935D" },
        DiagnosticVirtualTextHint = { bg = "#1D2B37", fg = "#7E9CB9" },
        DiagnosticVirtualTextInfo = { bg = "#162C0B", fg = "#7BAC62" },

        --- Treesitter
        TSAttribute = {},
        TSConstructor = { fg = ansi.white },
        TSConditional = { fg = def_fg, bold = true },
        TSConstBuiltin = { fg = const_fg },
        TSConstMacro = { fg = ansi.white },
        TSError = { bg = mistake.bg, fg = mistake.fg },
        TSException = { fg = ansi.white },
        TSField = { fg = ansi.white },
        TSFunction = { fg = ansi.white },
        TSFuncBuiltin = { fg = ansi.white },
        TSFuncMacro = { fg = ansi.white },
        TSKeyword = { fg = ansi.white, bold = true },
        TSKeywordFunction = { fg = ansi.white },
        TSLabel = { fg = ansi.white },
        TSMethod = { fg = ansi.white },
        TSNamespace = { fg = ansi.white },
        TSNone = { fg = const_fg },
        TSParameter = { fg = ansi.white },
        TSParameterReference = { fg = ansi.white },
        TSProperty = { fg = ansi.white },
        TSPunctDelimiter = { fg = punct_fg },
        TSPunctBracket = { fg = "#bababa" },
        TSPunctSpecial = { fg = punct_fg },
        TSRepeat = { fg = def_fg, bold = true },
        TSString = { fg = string_fg },
        TSStringRegex = { bg = "#1d292b", fg = const_fg },
        TSStringEscape = { bg = "#1d292b", fg = const_fg },
        TSSymbol = {},
        TSType = { fg = punct_fg },
        TSTypeBuiltin = { fg = ansi.white, bold = true },
        TSVariable = { fg = ansi.white },
        TSVariableBuiltin = { fg = ansi.white },
        TSTag = { fg = ansi.white },
        TSTagDelimiter = { fg = punct_fg },
        TSText = { fg = ansi.white },
        ["@attribute"] = {},
        ["@constructor"] = { fg = ansi.white },
        ["@conditional"] = { fg = ansi.white },
        ["@constant.builtin"] = { fg = const_fg },
        ["@constant.macro"] = { fg = ansi.white },
        ["@error"] = { bg = mistake.bg, fg = mistake.fg },
        ["@exception"] = { fg = ansi.white },
        ["@field"] = { fg = ansi.white },
        ["@function"] = { fg = ansi.white },
        ["@function.builtin"] = { fg = ansi.white },
        ["@function.macro"] = { fg = ansi.white },
        ["@keyword"] = { fg = ansi.white },
        ["@keyword.function"] = { fg = ansi.white },
        ["@label"] = { fg = ansi.white },
        ["@method"] = { fg = ansi.white },
        ["@module"] = { fg = ansi.white },
        ["@namespace"] = { fg = ansi.white },
        ["@none"] = { fg = const_fg },
        ["@parameter"] = { fg = ansi.white },
        ["@parameter.reference"] = { fg = ansi.white },
        ["@property"] = { fg = ansi.white },
        ["@punctuation.delimiter"] = { fg = punct_fg },
        ["@punctuation.bracket"] = { fg = "#bababa" },
        ["@punctuation.special"] = { fg = punct_fg },
        ["@repeat"] = { fg = ansi.white },
        ["@string"] = { fg = string_fg },
        ["@string.regex"] = { bg = "#1d292b", fg = const_fg },
        ["@string.escape"] = { bg = "#1d292b", fg = const_fg },
        ["@symbol"] = {},
        ["@type"] = { fg = ansi.white },
        ["@type.builtin"] = { fg = ansi.white },
        ["@variable"] = { fg = ansi.white },
        ["@variable.builtin"] = { fg = ansi.white },
        ["@tag"] = { fg = ansi.white },
        ["@tag.delimiter"] = { fg = punct_fg },
        ["@text"] = { fg = ansi.white },
        ["@text.note"] = { bg = "#1d292b", fg = ansi.blue },
        ["@text.warning"] = { bg = "#d0d058", fg = bg },

        --- Theme specific
        ["@AlabasterConstant"] = { fg = const_fg },
        ["@AlabasterDefinition"] = { fg = def_fg },
        ["@AlabasterPunct"] = { fg = punct_fg },
        ["@AlabasterString"] = { fg = string_fg },
        ["@AlabasterHashbang"] = { fg = dim_comment },
        --- Gitsigns
        GitSignsAdd = { fg = diffadd },
        GitSignsChange = { fg = diffchange },
        GitSignsDelete = { fg = diffdelete },
        --- Telescope
        TelescopeBorder = { fg = "#2b3d40" },
        TelescopeMatching = { fg = "#f09942" },
        TelescopeMultiSelection = { fg = ansi.magenta },
        TelescopePromptPrefix = { fg = ansi.blue },
        TelescopeSelectionCaret = { fg = mistake.fg },
        TelescopeTitle = { fg = ansi.brightyellow },
        TelescopeResultsTitle = { fg = ansi.yellow },
        --- fzf-lua
        FzfLuaBorder = { fg = "#2b3d40" },
        --- Neogit
        NeogitPopupActionDisabled = { fg = darker_fg },
        NeogitPopupActionKey = { fg = ansi.magenta },
        NeogitPopupOptionDisabled = { fg = darker_fg },
        NeogitPopupOptionKey = { fg = ansi.blue },
        NeogitPopupSwitchDisabled = { fg = darker_fg },
        NeogitPopupSwitchEnabled = { fg = ansi.cyan },
        NeogitPopupSwitchKey = { fg = ansi.magenta },
        --- Fugitive
        diffAdded = { link = "DiffAdd" },
        diffRemoved = { link = "DiffDelete" },
        --- Startify
        StartifyBracket = { fg = darker_fg },
        StartifyFile = { fg = ansi.white },
        StartifySection = { fg = ansi.green },
        StartifySlash = { fg = "#4e6e75" },
        StartifyPath = { fg = "#4e6e75" },
        --- Statusline
        StatuslineAdd = { fg = diffadd, bg = statusline },
        StatuslineErr = { fg = error, bg = statusline },
        StatuslineHint = { fg = hint, bg = statusline },
        StatuslineInfo = { fg = info, bg = statusline },
        StatuslineWarn = { fg = warn, bg = statusline },
        StatuslineBlue = { fg = ansi.blue, bg = statusline },
        StatuslineRed = { fg = ansi.red, bg = statusline },
        StatuslineGreen = { fg = ansi.green, bg = statusline },
        StatuslineCyan = { fg = ansi.cyan, bg = statusline },
        StatuslineMagenta = { fg = ansi.magenta, bg = statusline },
        --- ALE
        ALEWarningSign = { fg = warn },
        --- vim-matchup
        MatchupVirtualText = { fg = ansi.yellow },
        --- For `highlight link`
        AlabasterBlack = { fg = ansi.black },
        AlabasterBlue = { fg = ansi.blue },
        AlabasterBrightYellow = { fg = ansi.brightyellow },
        AlabasterCyan = { fg = ansi.cyan },
        AlabasterGreen = { fg = ansi.green },
        AlabasterDarkGreen = { fg = "#6abf40" },
        AlabasterMagenta = { fg = ansi.magenta },
        AlabasterRed = { fg = ansi.red },
        AlabasterWhite = { fg = ansi.white },
        AlabasterYellow = { fg = ansi.yellow },
        --- Hop
        HopNextKey = { fg = ansi.brightyellow },
        HopNextKey1 = { fg = ansi.cyan },
        HopNextKey2 = { fg = "#297567" },
        HopUnmatched = { fg = "#3d3d3d" },
        --- Lightspeed
        LightspeedGreyWash = { fg = "#3d3d3d" },
        --- checkhealth
        healthSuccess = { fg = ansi.green, bg = bg },
        --- cmp
        CmpItemMenuDefault = { fg = ansi.magenta },
        --- nvim-ts-rainbow
        rainbowcol1 = { fg = ansi.yellow },
        rainbowcol2 = { fg = ansi.magenta },
        rainbowcol3 = { fg = ansi.blue },
        rainbowcol4 = { fg = ansi.green },
        rainbowcol5 = { fg = ansi.brightyellow },
        rainbowcol6 = { fg = ansi.red },
        rainbowcol7 = { fg = ansi.cyan },
        --- Iswap
        ISwapSnipe = { bg = ansi.yellow, fg = bg },
        ISwapGrey = { fg = "#3d3d3d" },
        --- vim-dadbod-ui
        dbui_help = { fg = dim_comment },
        dbui_connection_source = { fg = dim_comment },
        --- nvim-dap-virtual-text
        NvimDapVirtualText = { bg = "#1d292b", fg = ansi.cyan },
        --- Noice
        NoiceCmdlineIcon = { link = "AlabasterDarkGreen" },
        NoiceCmdlinePopupBorder = { link = "AlabasterDarkGreen" },
        NoiceConfirmBorder = { link = "AlabasterDarkGreen" },
        NoiceCmdlinePopupBorderCmdline = { link = "AlabasterDarkGreen" },
        NoiceCmdlineIconCmdline = { link = "AlabasterDarkGreen" },
        NoiceCmdlinePopupBorderFilter = { link = "AlabasterDarkGreen" },
        NoiceCmdlineIconFilter = { link = "AlabasterDarkGreen" },
        NoiceCmdlinePopupBorderLua = { link = "AlabasterDarkGreen" },
        NoiceCmdlineIconLua = { link = "AlabasterDarkGreen" },
        NoiceCmdlinePopupBorderSearch = { link = "AlabasterYellow" },
        NoiceCmdlineIconSearch = { link = "AlabasterYellow" },
        -- Languages
        --- asm
        asmDirective = { fg = dim_comment },
        nasmLabel = { link = "@AlabasterDefinition" },
    }
end

for group, hl in pairs(theme) do
    vim.api.nvim_set_hl(0, group, hl)
end

-- vi:nowrap
