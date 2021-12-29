# PublicClass-Module
A simple class module for roblox lua.

Simply drop the module into ReplicatedStorage.

# Example Code in ModuleScript
 ```lua
local PublicClass = require(game.ReplicatedStorage.PublicClass)
local NewClass = PublicClass("NewClass")

function NewClass.__init(self)
  self.pet = "Cat"
end

function NewClass.sleep(self)
  print("Put pets to sleep")
end

return NewClass
```
# Note
Note you can also join other metatables to the class by doing:
```lua
NewClass = Public("NewClass")("AnotherClass")
```
