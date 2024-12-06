local options = {
  transparent = true,
  styles = {
    keywords = 'italic',
  },
}
local specs = {
  duskfox = {
    syntax = {
      bracket = 'blue.light',
      builtin0 = 'red.bright',
      builtin2 = 'red.dim',
      builtin3 = 'yellow',
      preproc = 'magenta.dim',
      operator = 'pink.bright',
      keyword = 'magenta.bright',
      func = 'red',
      statement = 'red.bright',
      type = 'cyan',
      const = 'yellow.bright',
      variable = 'cyan.light',
      ident = 'pink.bright',
      field = 'blue.bright',
      conditional = 'pink',
      number = 'yellow.light',
    },
  },
}
return {
  {
    'EdenEast/nightfox.nvim',
    lazy = false,
    priority = 1000,
    init = function()
      local shade = require 'nightfox.lib.shade'
      local red = shade.new('#9044bd', '#b173cc', '#986FCC')
      local magenta = shade.new('#7d79d8', '#9490f2', '#5659be', '#9d7cd8')
      local pink = shade.new('#e754de', '#fa6bd7', '#ec5fff', '#bb9af7')
      local green = shade.new('#69bf7a', '#a9ec98', '#32a46f', '#b2ebbd')
      local cyan = shade.new('#4fd6be', '#41a6b5', '#07b6aa', '#b4f9f8')

      local yellow = shade.new('#ff9e64', '#FF9a3a', '#ff757f', '#ffc777')
      local blue = shade.new('#2871bc', '#4581c3', '#7dcfff', '#94bbe7')
      local palettes = {
        duskfox = {
          black = '#473e59',
          red = red,
          green = green,
          yellow = yellow,
          cyan = cyan,
          magenta = magenta,
          blue = blue,
          white = '#2871bc',
          pink = pink,
          bg1 = '#0e111d',
        },
      }
      require('nightfox').setup {
        options = options,
        palettes = palettes,
        specs = specs,
      }
    end,
  },
}
