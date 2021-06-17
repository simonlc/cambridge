local ReplayScene = Scene:extend()
local binser = require 'libs.binser'

ReplayScene.title = "Replays"

function dump(o)
  if type(o) == 'table' then
    local s = '{ '
    for k,v in pairs(o) do
      if type(k) ~= 'number' then k = '"'..k..'"' end
      s = s .. '['..k..'] = ' .. dump(v) .. ','
    end
    return s .. '} '
  else
    return tostring(o)
  end
end

function slice(tbl, first, last, step)
  local sliced = {}

  for i = first or 1, last or #tbl, step or 1 do
    sliced[#sliced + 1] = tbl[i]
  end

  return sliced
end

function filter(t, filterIter)
  local out = {}

  for k, v in ipairs(t) do
    if filterIter(v, k, t) then table.insert(out,v) end
  end

  return out
end

-- TODO
-- delete - popup to confirm (backspace or x or delete key?)
-- sort by score/grade/mode?
-- favorites
-- how many views
-- load replays from filesystem (check multiple paths
-- save directory
-- padded 0 on game time

-- TODO Truncate long names
-- local replaysMock = {
--   {
--     title = "Survival A1",
--     rule = "Classic ARS",
--     stat = "100",
--     time = "10:30.04",
--     date = 0,
--     cleared = false
--   },
--   {
--     title = "Survival A2",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A3",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A4",
--     rule = "Classic ARS",
--     stat = "100",
--     time = "10:30.04",
--     date = 0,
--     cleared = false
--   },
--   {
--     title = "Survival A5",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A6",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A7",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A8",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A9",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A10",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A11",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A12",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A13",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A14",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A15",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A16",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A17",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A18",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A19",
--     rule = "Classic ARS",
--     stat = "100",
--     time = "10:30.04",
--     date = 0,
--     cleared = false
--   },
--   {
--     title = "Survival A20",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A21",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A22",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A23",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A24",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A25",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A26",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A27",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A28",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A29",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A30",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A31",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A32",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   },
--   {
--     title = "Survival A33",
--     rule = "Ti-ARS",
--     stat = "500",
--     time = "2:30.04",
--     date = 30,
--     cleared = true
--   }
-- }

-- Feb 13, '21 - 21:04
local dateformat = "%b %d, '%y - %H:%M"

function ReplayScene:new()
  self.paddingLeft = 40
  self.menuState = 1
  self.menuDAS = 16
  self.upDAS = 0
  self.downDAS = 0

  self.pageSize = 15
  self.page = 0

  -- TODO Put somewhere else
  -- local success = love.filesystem.createDirectory('replays')

  local appData = love.filesystem.getAppdataDirectory()
  -- for i, replay in pairs(replaysMock) do
  --   binser.writeFile(appData .. '/LOVE/cambridge/replays/' .. replay.title:lower() .. '-' .. replay.rule:lower() .. '-' .. os.date('!%Y-%m-%dT%TZ', replay.date) .. '.replay', replay)
  -- end

  local replaysPath = appData .. '/LOVE/'..love.filesystem.getIdentity()..'/replays/'
  local files = love.filesystem.getDirectoryItems('replays')
  -- io.write(table.concat(files, ''))
  -- love.graphics.print(table.concat(files, ' '), self.paddingLeft, 120)
  -- TODO Filter dirs, replays ending in .replay and invalid replays
  files = filter(files, function (item)
    local ending = '.replay'
    return item:sub(-#ending) == ending
  end)


  self.replays = {}
  for i, filePath in pairs(files) do
    -- TODO local replay = love.filesystem.read(filePath)
    -- local replay = binser.readFile(filePath)
    io.write(replaysPath .. filePath..'\n')
    local file, size = binser.readFile(replaysPath..filePath)
    table.insert(self.replays, file[1])
  end

  table.sort(self.replays, function (itemA, itemB)
    return itemA.date > itemB.date
  end)

end

function ReplayScene:update()
end

function ReplayScene:render()
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.draw(backgrounds["replays"], 0, 0, 0, 0.5, 0.5)

  love.graphics.setFont(font_3x5_4)
  love.graphics.print(self.title:upper(), self.paddingLeft, 40)

  if (self.upDAS > 0) then
    self.upDAS = self.upDAS + 1
  end
  if (self.upDAS > self.menuDAS and self.upDAS % 2 == 0) then
    self:changeOption(-1)
    playSE("cursor")
  end

  if (self.downDAS > 0) then
    self.downDAS = self.downDAS + 1
  end
  if (self.downDAS > self.menuDAS and self.downDAS % 2 == 0) then
    self:changeOption(1)
    playSE("cursor")
  end

  -- self.printRow()

  local rowStart = 100
  local textPadding = 2
  -- Show selected item

  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.setFont(font_3x5_2)
  if #self.replays == 0 then
    love.graphics.print('No replays', self.paddingLeft, rowStart)
  else
    love.graphics.setColor(1, 1, 1, 0.5)
    love.graphics.rectangle("fill", 20, rowStart - textPadding + 20 * self.menuState, 600, 22)
    for i, replay in pairs(
        slice(
          self.replays,
          self.page * self.pageSize + (self.page == 0 and 0 or 1),
          self.page * self.pageSize + self.pageSize
        )
      ) do
      local topOffset = rowStart + i * 20
      love.graphics.setFont(font_3x5_2)
      if (replay.cleared) then
        love.graphics.setColor(1, 1, 0, 1)
      else
        love.graphics.setColor(1, 1, 1, 1)
      end
      -- io.write(dump(replay))
      love.graphics.print(replay.title, self.paddingLeft, topOffset)
      love.graphics.print(replay.rule, self.paddingLeft + 120, topOffset)
      love.graphics.print(replay.stat, self.paddingLeft + 240, topOffset)
      love.graphics.print(replay.time, self.paddingLeft + 280, topOffset)
      love.graphics.print(os.date(dateformat, replay.date), self.paddingLeft + 380, topOffset)
    end
  end

  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.setFont(font_3x5_2)

  local pageLength = math.ceil(#self.replays / 15)
  love.graphics.print("Page " .. self.page + 1 .. "/" .. pageLength, self.paddingLeft, rowStart + 340)
end

function ReplayScene:changePage(rel)
  -- local len = table.getn(self.replays)
  -- TODO Get actual page size
  local len = math.ceil(#self.replays / 15)
  -- self.page = (self.page + len + rel - 1) % len + rel
  self.page = ((self.page + rel) % len + len) % len
  if (len > 1) then
    playSE("cursor_lr")
  end
end

function ReplayScene:changeOption(rel)
  -- local len = table.getn(self.replays)
  -- TODO Get actual page size
  local len = table.getn(slice(
  self.replays,
  self.page * self.pageSize + (self.page == 0 and 0 or 1),
  self.page * self.pageSize + self.pageSize
  ))
  self.menuState = (self.menuState + len + rel - 1) % len + 1
  if (len > 1) then
    playSE("cursor")
  end
end

function ReplayScene:onInputPress(e)
  if e.input == "menu_decide" or e.scancode == "return" then
    -- TODO play demo
  elseif e.input == "up" or e.scancode == "up" then
    -- Cycle list up
    self:changeOption(-1)
    -- TODO Only play sound on success
    self.upDAS = self.upDAS + 1
  elseif e.input == "down" or e.scancode == "down" then
    -- Cycle list down
    self:changeOption(1)
    self.downDAS = self.downDAS + 1
  elseif e.input == "left" or e.scancode == "left" then
    -- Change page backward
    self.menuState = 1
    self:changePage(-1)
  elseif e.input == "right" or e.scancode == "right" then
    -- Change page forward
    self.menuState = 1
    self:changePage(1)
  elseif e.input == "menu_back" or e.scancode == "backspace" or e.scancode == "delete" then
    scene = TitleScene()
  end
end

function Scene:onInputRelease(e)
  if e.input == "up" or e.scancode == "up" then
    self.upDAS = 0
  elseif e.input == "down" or e.scancode == "down" then
    self.downDAS = 0
  end
end

return ReplayScene
