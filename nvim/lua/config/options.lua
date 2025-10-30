
local options = {
    laststatus = 3,            --needed if global statusline used 
    ruler = false,             --disable extra numbering
    showmode = false,          --no need due to statusline
    showcmd = false,           --hides the command being typed in bottom right 
    wrap = true,               --toggle bound to leader W
    mouse = "a",               --enable mouse
    clipboard = "unnamedplus", --system clipboard integration
    history = 100,             --command line history
    swapfile = false,          --swap just gets in the way, usually
    backup = false,            --disables backup file
    undofile = true,           --undos are saved to file
    cursorline = true,         --highlight line
    title = true,              --automatic window titlebar
    virtualedit = 'onemore',   --allow cursor to move one more position past end of line
    number = true,             
    relativenumber = true, 
    numberwidth = 4,
    smarttab = true,           --indentation stuff
    cindent = true,            --enables C style indent
    tabstop = 4,               --visual width of tab
    termguicolors = true,      --fix terminal colors
    ignorecase = true,         --ignore case while searching
    smartcase = true,          --but do not ignore if caps are used
    splitkeep = 'screen',      --stablizie window open/close

}

--needed for easy mappings
for k, v in pairs(options) do
    vim.opt[k] = v
end


