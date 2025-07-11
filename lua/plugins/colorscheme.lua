return {
  'https://github.com/ramojus/mellifluous.nvim.git',
  priority = 1000,
  config = function ()
    vim.cmd [[colorscheme mellifluous]]
  end
}
