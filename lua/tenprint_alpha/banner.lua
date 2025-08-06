local M = {}

-- All available shape sets
local shape_sets = {
	pipes = { "╭", "╮", "╯", "╰", "┼", "─", "│" }, -- default
	triangles = { "◢", "◣", "◤", "◥" },
	blocks = { "█", "▓", "▒", "░" },
	corners = { "𜸢", "𜸪", "𜸫", "𜸬", "𜸸", "𜸻" },
	angles = { "┼", "─", "│", "┌", "┐", "┘", "└" },
	lines = { "╱", "╳", "╲" },
}

function M.generate_banner(opts)
	opts = opts or {}
	local width = opts.width or 60
	local rows = opts.rows or 7
	local shape_key = opts.shapes or "pipes"
	local shapes = shape_sets[shape_key] or shape_sets["pipes"]

	math.randomseed(os.time())
	local banner = {}

	for y = 1, rows do
		local line = ""
		for x = 1, width do
			line = line .. shapes[math.random(#shapes)]
		end
		table.insert(banner, line)
	end

	table.insert(banner, "")
	return banner
end

return M
