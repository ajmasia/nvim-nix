---@diagnostic disable: undefined-global

function DefineSigns()
	local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
	for type, icon in pairs(signs) do
		local hl = "DiagnosticSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
	end
end

function DiagnosticSetup()
	vim.diagnostic.config({
		virtual_text = false,
		update_in_insert = false,
		float = {
			source = "if_many",
		},
		severity_sort = true,
	})
end

function ShowDiagnostics()
	local opts = {
		focusable = false,
		border = "rounded",
		padding = { 1, 1, 1, 1 },
	}

	vim.diagnostic.open_float(nil, opts)
end

DiagnosticSetup()
DefineSigns()
