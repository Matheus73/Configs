local options = {
	mouse="a",
	cursorline=true;
	updatetime=50,
	autoread=true,
	-- relativenumber=true;
	number=true,
	bg="light",
	encoding="UTF-8",
	foldmethod="manual",
	showcmd=true,
	wrap=true,
	completeopt = {"menuone", "noinsert", "noselect"},
	expandtab=true,
	autoindent=true,
	incsearch=true,
	ignorecase=true,
	smartcase=true,
}

-- Avoid showing extra messages when using completion
vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end
