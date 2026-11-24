-- theme choice is saved in a file for persistence on restart
-- could use a plugin instead, but hey, this is more fun
-- lualine follows the active colorscheme automatically

local theme_file = vim.fn.stdpath("config") .. "/lua/config/saved_theme"

_G.load_theme = function()
	local file = io.open(theme_file, "r")
	if file then
		local theme = file:read("*l")
		file:close()
		if theme and theme ~= "" then
			vim.cmd("colorscheme " .. theme)
		end
	end
end
