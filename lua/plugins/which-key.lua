return function()
  require('which-key').setup()

  local wk = require('which-key')
  wk.register({
    f = {
      name = 'Find By Telescope & Format',
      i = {name = 'Buildin & Reloader'},
      m = {name = 'Mark & Man & Format'},
      h = {name = 'History & Help'},
      t = {name = 'TreeSitter & FileTypes'},
      w = {name = 'Workspace & LSP Action'},
      g = {name = 'Git Action'},
      s = {name = 'Spectre'},
      d = {name = 'DAP Telescope Action'},
      p = {name = 'Plug Action'}
    },
    b = {name = 'Buffer Operate'},
    c = {name = 'Code Action', j = {name = 'Java Code Action'}},
    d = {name = 'DAP Action'},
    x = {name = 'Close Current Buffer'},
    l = {name = 'List Of Trouble'},
    m = {name = 'Markdown'},
    o = {name = 'Operate Dashboard Action'},
    r = {name = 'Ranger & Rename & Rest'},
    s = {name = 'Session & Spectre Action'},
    t = {name = 'Translate'},
    w = {name = 'Workspace'},
    p = {name = 'Paste System Clipboard'},
    g = {name = 'Git Action'}
  }, {prefix = '<leader>'})
end
