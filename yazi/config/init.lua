-- plugin
-- starship.yazi
require("starship"):setup()


-- searchjump.yazi
require("searchjump"):setup {
	unmatch_fg = "#9ca0b0",
    match_str_fg = "#000000",
    match_str_bg = "#84c443",
    first_match_str_fg = "#000000",
    first_match_str_bg = "#84c443",
    lable_fg = "#eeeeee",
    lable_bg = "#b34607",
    only_current = false, -- only search the current window
    show_search_in_statusbar = true,
    auto_exit_when_unmatch = true,
    enable_capital_lable = false,
    search_patterns = {}  -- demo:{"%.e%d+","s%d+e%d+"}
}


-- smart-enter.yazi
require("smart-enter"):setup {
	open_multi = true,
}


-- git.yazi
require("git"):setup({
    show_branch = true
})


-- mime-ext.yazi
require("mime-ext"):setup {
	-- Expand the existing filename database (lowercase), for example:
	with_files = {
		makefile = "text/makefile",
	},
	with_exts = {
        m    = "text/m",
        org  = "text/plain",
        norg = "text/plain",
        ps1  = "text/plain",
        tex  = "text/plain",
	},
	fallback_file1 = false,
}


