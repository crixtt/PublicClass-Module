--[[
	Copyright © crixtt's Modules & Systems. All rights reserved.
	crixtt
]]
local function initiate(self, ...)
	if self.__init then
		self:__init(...)
	end
end
return function(name, component)
	local class = {}
	class.__index = class
	class.ClassName = name
	if component then
		setmetatable(class, component)
	end
	function class.new(...)
		local self = setmetatable({}, class)
		initiate(self, ...)
		return self
	end
	return class, component
end 