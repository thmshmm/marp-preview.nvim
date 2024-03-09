local M = {}

local config = {
	command = 'marp',
	options = {
		'-w', '-s', '-p', '--html',
	},
	themes = {},
}

function M.setup(opts)
	config = vim.tbl_extend('force', config, opts or {})
end

function M.toggle()
	local cur_dir = vim.fn.expand('%:p:h')
	local cmd = config.command

	for _, option in ipairs(config.options) do
		cmd = cmd .. ' ' .. option
	end

	for _, theme in ipairs(config.themes) do
		cmd = cmd .. string.format(' --theme-set %s', theme)
	end

	cmd = cmd .. ' -I ' .. cur_dir

	local command = string.format('(cd %s && exec nohup %s > /dev/null 2>&1) &', cur_dir, cmd)

	vim.fn.system(command)
end

return M
