local status, lualine = pcall(require, "lualine")

if not status then
    return
end

if not status then
    return
end

local lualine_nightfly = require("lualine.themes.nightfly")

local new_color = {
    blue = "#65D1FF",    
    green = "#3EFFDC",
    violet = "#FF61EF",
    yellow = "#FFDA7B",
    black = "#000000",
}

lualine_nightfly.normal.a.bg = new_color.blue
lualine_nightfly.insert.a.bg = new_color.green
lualine_nightfly.visual.a.bg = new_color.violet
lualine_nightfly.command = {
    a = {
        gui = "bold",
        bg = new_color.yellow,
        fg = new_color.black,
    },
}

lualine.setup({
    options = {
        theme = lualine_nightfly
    }
})

