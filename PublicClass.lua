--[[
	Copyright © crixtt's Modules & Systems. All rights reserved.
	crixtt
]]
local function initiate(self, ...)
	if self.__init then
		self:__init(...)
	end
end
local methods = {"__add", "__call", "__concat", "__div", "__le", "__lt", "__mod", "__mul", "__pow", "__sub", "__tostring", "__unm"}
local function inherit(class, super)
	for _,method in pairs(methods) do
		class[method] = super[method]
	end
end
local function __tostring(self)
	return self.ClassName
end
return function(name, super)
	local class = {}
	class.__index = class
	class.__tostring = __tostring
	class.ClassName = name
	if super then
		class.Super = super
		setmetatable(class, super)
		inherit(class, super)
	end
	function class.new(...)
		local self = setmetatable({}, class)
		initiate(self, ...)
		return self
	end 
	return class, super
end
