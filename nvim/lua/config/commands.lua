function copy_path(abbr)
  local path = vim.fn.expand(abbr)
  vim.fn.setreg("+", path)
end

vim.api.nvim_create_user_command("CopyFileName", function() 
  copy_path("%")
end, {})

vim.api.nvim_create_user_command("CopyFullFileName", function() 
  copy_path("%:p")
end, {})
