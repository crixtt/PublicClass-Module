local function initiate(self, ...)
	if self.__init__ then
		self:__init__(...)
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
