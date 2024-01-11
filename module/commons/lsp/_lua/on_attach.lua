---@diagnostic disable: undefined-global
--
-- TODO: it's possible move this keymats to the lsp keymaps config?

vim.api.nvim_set_keymap(
	"n",
	"<leader>cd",
	"<cmd>lua ShowDiagnostics()<cr>",
	{ noremap = true, silent = true, desc = "Show Line diagnostic" }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>ca",
	"<cmd>lua vim.lsp.buf.code_action()<cr>",
	{ noremap = true, silent = true, desc = "Code Actions" }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>cf",
	"<cmd>Format<cr>",
	{ noremap = true, silent = true, desc = "Format (conform)" }
)
