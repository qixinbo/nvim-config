local status, nvim_comment = pcall(require, "nvim_comment")
if not status then
    vim.notify("没有找到 nvim_comment")
  return
end

nvim_comment.setup()