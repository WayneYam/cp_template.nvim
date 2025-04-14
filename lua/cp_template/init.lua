local setup = function()
  local getTemplate = function()
    local template_path = "~/Documents/Code/_template/"
    require("snacks.picker").files({
      cwd = template_path,
      title = "Competitive Programming Templates",
      confirm = function(picker, item)
        picker:close()
        if item then
          local last_search = vim.fn.getreg("/")
          local read_template = "<ESC>/TEMPLATE ENDS HERE<CR>kO<ESC>:r " .. template_path .. item.text .. "<CR><C-O>"
          local restore_search = '<ESC>:lua vim.fn.setreg("/","' .. last_search .. '")<CR>:echo ""<CR>'
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(read_template, true, false, true), "m", true)
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(restore_search, true, false, true), "m", true)
        end
      end,
    })
  end

  vim.api.nvim_create_user_command("GetTemplate", getTemplate, {})
end

return {
  setup = setup,
}
