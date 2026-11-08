local c = require('embark_pro.colors')

return {
  normal = {
    a = { bg = c.blue, fg = c.black, gui = 'bold' },
    b = { bg = c.dark_gray, fg = c.fg },
    c = { bg = c.bg, fg = c.gray }
  },
  insert = { a = { bg = c.green, fg = c.black, gui = 'bold' }, b = { bg = c.dark_gray, fg = c.fg }, c = { bg = c.bg, fg = c.gray } },
  visual = { a = { bg = c.magenta, fg = c.black, gui = 'bold' }, b = { bg = c.dark_gray, fg = c.fg }, c = { bg = c.bg, fg = c.gray } },
  command = { a = { bg = c.yellow, fg = c.black, gui = 'bold' }, b = { bg = c.dark_gray, fg = c.fg }, c = { bg = c.bg, fg = c.gray } },
  inactive = { a = { bg = c.dark_gray, fg = c.gray }, b = { bg = c.dark_gray, fg = c.gray }, c = { bg = c.dark_gray, fg = c.gray } }
}
