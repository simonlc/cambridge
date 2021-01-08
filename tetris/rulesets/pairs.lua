local Ruleset = require 'tetris.rulesets.ruleset'

local PAIRS = Ruleset:extend()

PAIRS.name = "PAIRS"
PAIRS.hash = "PAIRS"
PAIRS.world = true

PAIRS.spawn_positions = {
    [1] = { x=4, y=4 },
    [2] = { x=4, y=6 },
    [3] = { x=4, y=6 },
    [4] = { x=4, y=6 },
    [5] = { x=5, y=5 },
    [6] = { x=5, y=5 },
    [7] = { x=5, y=5 },
    [8] = { x=5, y=5 },
    [9] = { x=5, y=5 },
    [10] = { x=5, y=5 },
    [11] = { x=4, y=5 },
    [12] = { x=4, y=5 },
    [13] = { x=4, y=5 },
    [14] = { x=4, y=6 },
    [15] = { x=4, y=6 },
    [16] = { x=4, y=6 },
    [17] = { x=4, y=6 },
    [18] = { x=4, y=6 },
}

PAIRS.big_spawn_positions = {
	[1] = { x=2, y=2 },
    [2] = { x=2, y=3 },
    [3] = { x=2, y=3 },
    [4] = { x=2, y=3 },
    [5] = { x=3, y=3 },
    [6] = { x=3, y=3 },
    [7] = { x=3, y=3 },
    [8] = { x=3, y=3 },
    [9] = { x=3, y=3 },
    [10] = { x=3, y=3 },
    [11] = { x=2, y=3 },
    [12] = { x=2, y=3 },
    [13] = { x=2, y=3 },
    [14] = { x=2, y=3 },
    [15] = { x=2, y=3 },
    [16] = { x=2, y=3 },
    [17] = { x=2, y=3 },
    [18] = { x=2, y=3 },
}

PAIRS.next_sounds = {
    [1] = "I",
    [2] = "O",
    [3] = "S",
    [4] = "Z",
    [5] = "L",
    [6] = "J",
    [7] = "Z",
    [8] = "S",
    [9] = "J",
    [10] = "L",
    [11] = "O",
    [12] = "O",
    [13] = "T",
    [14] = "L",
    [15] = "J",
    [16] = "T",
    [17] = "J",
    [18] = "I"
}

PAIRS.colourscheme = {
    [1] = "R",
    [2] = "C",
    [3] = "G",
    [4] = "M",
    [5] = "O",
    [6] = "C",
    [7] = "G",
    [8] = "M",
    [9] = "G",
    [10] = "M",
    [11] = "Y",
    [12] = "B",
    [13] = "M",
    [14] = "O",
    [15] = "B",
    [16] = "G",
    [17] = "C",
    [18] = "R"
}

PAIRS.pieces = 18

PAIRS.block_offsets = {
    [1]={
        { {x=-2, y=0}, {x=-1, y=0}, {x=0, y=0}, {x=1, y=0}, {x=2, y=0} },
        { {x=0, y=-2}, {x=0, y=-1}, {x=0, y=0}, {x=0, y=1}, {x=0, y=2} },
        { {x=-2, y=0}, {x=-1, y=0}, {x=0, y=0}, {x=1, y=0}, {x=2, y=0} },
        { {x=0, y=-2}, {x=0, y=-1}, {x=0, y=0}, {x=0, y=1}, {x=0, y=2} },
    },
    [2]={
        { {x=0, y=-1}, {x=0, y=-2}, {x=0, y=0}, {x=1, y=-1}, {x=-1, y=-1} },
        { {x=0, y=-1}, {x=0, y=-2}, {x=0, y=0}, {x=1, y=-1}, {x=-1, y=-1} },
        { {x=0, y=-1}, {x=0, y=-2}, {x=0, y=0}, {x=1, y=-1}, {x=-1, y=-1} },
        { {x=0, y=-1}, {x=0, y=-2}, {x=0, y=0}, {x=1, y=-1}, {x=-1, y=-1} },
    },
    [3]={
        { {x=0, y=-1}, {x=0, y=-2}, {x=0, y=0}, {x=1, y=-2}, {x=-1, y=0} },
        { {x=0, y=-1}, {x=-1, y=-1}, {x=1, y=-1}, {x=1, y=0}, {x=-1, y=-2} },
        { {x=0, y=-1}, {x=0, y=-2}, {x=0, y=0}, {x=1, y=-2}, {x=-1, y=0} },
        { {x=0, y=-1}, {x=-1, y=-1}, {x=1, y=-1}, {x=1, y=0}, {x=-1, y=-2} },
    },
    [4]={
        { {x=0, y=-1}, {x=0, y=-2}, {x=0, y=0}, {x=1, y=0}, {x=-1, y=-2} },
        { {x=0, y=-1}, {x=-1, y=-1}, {x=1, y=-1}, {x=-1, y=0}, {x=1, y=-2} },
        { {x=0, y=-1}, {x=0, y=-2}, {x=0, y=0}, {x=1, y=0}, {x=-1, y=-2} },
        { {x=0, y=-1}, {x=-1, y=-1}, {x=1, y=-1}, {x=-1, y=0}, {x=1, y=-2} },
    },
    [5]={
        { {x=1, y=-1}, {x=-2, y=0}, {x=-1, y=0}, {x=0, y=0}, {x=1, y=0} },
        { {x=0, y=0}, {x=-1, y=-3}, {x=-1, y=-2}, {x=-1, y=-1}, {x=-1, y=0} },
        { {x=-2, y=0}, {x=-2, y=-1}, {x=-1, y=-1}, {x=0, y=-1}, {x=1, y=-1} },
        { {x=-1, y=-3}, {x=0, y=-3}, {x=0, y=-2}, {x=0, y=-1}, {x=0, y=0} },
    },
    [6]={
        { {x=-2, y=-1}, {x=-2, y=0}, {x=-1, y=0}, {x=0, y=0}, {x=1, y=0} },
        { {x=0, y=-3}, {x=-1, y=-3}, {x=-1, y=-2}, {x=-1, y=-1}, {x=-1, y=0} },
        { {x=1, y=0}, {x=-2, y=-1}, {x=-1, y=-1}, {x=0, y=-1}, {x=1, y=-1} },
        { {x=-1, y=0}, {x=0, y=-3}, {x=0, y=-2}, {x=0, y=-1}, {x=0, y=0} },
    },
    [7]={
        { {x=-2, y=-1}, {x=-1, y=-1}, {x=-1, y=0}, {x=0, y=0}, {x=1, y=0} },
        { {x=0, y=-3}, {x=0, y=-2}, {x=-1, y=-2}, {x=-1, y=-1}, {x=-1, y=0} },
        { {x=-2, y=-1}, {x=-1, y=-1}, {x=0, y=-1}, {x=0, y=0}, {x=1, y=0} },
        { {x=-1, y=0}, {x=0, y=-3}, {x=0, y=-2}, {x=0, y=-1}, {x=-1, y=-1} },
    },
    [8]={
        { {x=1, y=-1}, {x=-2, y=0}, {x=-1, y=0}, {x=0, y=0}, {x=0, y=-1} },
        { {x=0, y=0}, {x=-1, y=-3}, {x=-1, y=-2}, {x=-1, y=-1}, {x=0, y=-1} },
        { {x=-2, y=0}, {x=-1, y=0}, {x=-1, y=-1}, {x=0, y=-1}, {x=1, y=-1} },
        { {x=-1, y=-3}, {x=-1, y=-2}, {x=0, y=-2}, {x=0, y=-1}, {x=0, y=0} },
    },
    [9]={
        { {x=-1, y=-1}, {x=-2, y=0}, {x=-1, y=0}, {x=0, y=0}, {x=1, y=0} },
        { {x=0, y=-2}, {x=-1, y=-3}, {x=-1, y=-2}, {x=-1, y=-1}, {x=-1, y=0} },
        { {x=0, y=0}, {x=-2, y=-1}, {x=-1, y=-1}, {x=0, y=-1}, {x=1, y=-1} },
        { {x=-1, y=-1}, {x=0, y=-3}, {x=0, y=-2}, {x=0, y=-1}, {x=0, y=0} },
    },
    [10]={
        { {x=0, y=-1}, {x=-2, y=0}, {x=-1, y=0}, {x=0, y=0}, {x=1, y=0} },
        { {x=0, y=-1}, {x=-1, y=-3}, {x=-1, y=-2}, {x=-1, y=-1}, {x=-1, y=0} },
        { {x=-1, y=0}, {x=-2, y=-1}, {x=-1, y=-1}, {x=0, y=-1}, {x=1, y=-1} },
        { {x=-1, y=-2}, {x=0, y=-3}, {x=0, y=-2}, {x=0, y=-1}, {x=0, y=0} },
    },
    [11]={
        { {x=0, y=0}, {x=-1, y=0}, {x=1, y=0}, {x=0, y=-1}, {x=-1, y=-1} },
        { {x=0, y=0}, {x=0, y=-1}, {x=0, y=-2}, {x=1, y=-1}, {x=1, y=-2} },
        { {x=0, y=0}, {x=1, y=-1}, {x=1, y=0}, {x=0, y=-1}, {x=-1, y=-1} },
        { {x=0, y=0}, {x=0, y=-1}, {x=0, y=-2}, {x=-1, y=-1}, {x=-1, y=0} },
    },
    [12]={
        { {x=0, y=0}, {x=1, y=-1}, {x=1, y=0}, {x=0, y=-1}, {x=-1, y=0} },
        { {x=0, y=0}, {x=0, y=-1}, {x=0, y=-2}, {x=1, y=-1}, {x=1, y=0} },
        { {x=0, y=0}, {x=-1, y=0}, {x=1, y=-1}, {x=0, y=-1}, {x=-1, y=-1} },
        { {x=0, y=0}, {x=0, y=-1}, {x=0, y=-2}, {x=-1, y=-1}, {x=-1, y=-2} },
    },
    [13]={
        { {x=0, y=0}, {x=-1, y=0}, {x=1, y=0}, {x=-1, y=-1}, {x=1, y=-1} },
        { {x=0, y=0}, {x=0, y=-1}, {x=0, y=-2}, {x=1, y=0}, {x=1, y=-2} },
        { {x=0, y=-1}, {x=-1, y=0}, {x=1, y=0}, {x=-1, y=-1}, {x=1, y=-1} },
        { {x=0, y=0}, {x=0, y=-1}, {x=0, y=-2}, {x=-1, y=0}, {x=-1, y=-2} },
    },
    [14]={
        { {x=0, y=-1}, {x=0, y=0}, {x=0, y=-2}, {x=-1, y=-1}, {x=1, y=0} },
        { {x=0, y=-1}, {x=-1, y=-1}, {x=1, y=-1}, {x=0, y=-2}, {x=-1, y=0} },
		{ {x=0, y=-1}, {x=0, y=-2}, {x=0, y=0}, {x=1, y=-1}, {x=-1, y=-2} },
		{ {x=0, y=-1}, {x=1, y=-1}, {x=-1, y=-1}, {x=0, y=0}, {x=1, y=-2} },
    },
    [15]={
        { {x=0, y=-1}, {x=0, y=0}, {x=0, y=-2}, {x=-1, y=0}, {x=1, y=-1} },
        { {x=0, y=-1}, {x=-1, y=-1}, {x=1, y=-1}, {x=-1, y=-2}, {x=0, y=0} },
		{ {x=0, y=-1}, {x=0, y=-2}, {x=0, y=0}, {x=1, y=-2}, {x=-1, y=-1} },
		{ {x=0, y=-1}, {x=1, y=-1}, {x=-1, y=-1}, {x=1, y=0}, {x=0, y=-2} },
    },
    [16]={
        { {x=0, y=0}, {x=0, y=-1}, {x=0, y=-2}, {x=-1, y=0}, {x=1, y=0} },
        { {x=-1, y=0}, {x=0, y=-1}, {x=-1, y=-2}, {x=-1, y=-1}, {x=1, y=-1} },
        { {x=0, y=0}, {x=0, y=-1}, {x=0, y=-2}, {x=-1, y=-2}, {x=1, y=-2} },
        { {x=1, y=0}, {x=0, y=-1}, {x=1, y=-2}, {x=-1, y=-1}, {x=1, y=-1} },
    },
    [17]={
        { {x=0, y=0}, {x=1, y=0}, {x=-1, y=0}, {x=-1, y=-1}, {x=-1, y=-2} },
        { {x=0, y=-2}, {x=1, y=-2}, {x=-1, y=0}, {x=-1, y=-1}, {x=-1, y=-2} },
        { {x=0, y=-2}, {x=1, y=0}, {x=-1, y=-2}, {x=1, y=-1}, {x=1, y=-2} },
        { {x=0, y=0}, {x=1, y=0}, {x=-1, y=0}, {x=1, y=-1}, {x=1, y=-2} },
    },
    [18]={
        { {x=1, y=0}, {x=0, y=0}, {x=0, y=-1}, {x=-1, y=-1}, {x=-1, y=-2} },
        { {x=-1, y=0}, {x=-1, y=-1}, {x=0, y=-1}, {x=0, y=-2}, {x=1, y=-2} },
        { {x=-1, y=-2}, {x=0, y=-2}, {x=0, y=-1}, {x=1, y=-1}, {x=1, y=0} },
		{ {x=1, y=-2}, {x=1, y=-1}, {x=0, y=-1}, {x=0, y=0}, {x=-1, y=0} },
    },
}

PAIRS.wallkicks = {
	{x=1, y=0}, {x=-1, y=0}, {x=2, y=0}, {x=-2, y=0}, {x=0, y=-1}
}

function PAIRS:attemptWallkicks(piece, new_piece, rot_dir, grid)
    if (piece.shape == 2) then return end
    
    local kicks = PAIRS.wallkicks

	assert(piece.rotation ~= new_piece.rotation)

	for idx, offset in pairs(kicks) do
		kicked_piece = new_piece:withOffset(offset)
		if grid:canPlacePiece(kicked_piece) then
			self:onPieceRotate(piece, grid)
			piece:setRelativeRotation(rot_dir)
			piece:setOffset(offset)
			return
		end
	end
end

function PAIRS:onPieceDrop(piece, grid)
    piece.lock_delay = 0
end

function PAIRS:get180RotationValue() 
	if config.gamesettings.world_reverse == 1 then
		return 1
	else
		return 3
	end
end

return PAIRS