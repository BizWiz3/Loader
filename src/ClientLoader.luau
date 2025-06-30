local RunService = game:GetService("RunService")

local ClientLoader = {}

-- storage for all loaded modules from the client
local loadedModule = {}

--[[
	Load modules from a folder in the client
	@param modules: The folder containing the modules to load
]]
function ClientLoader.LoadDescendants(modules: Folder)
	for _, module in pairs(modules:GetDescendants()) do
		if module:IsA("ModuleScript") then

			task.spawn(function()
				local success, result = pcall(require, module)

				if success then
					loadedModule[module.Name] = result
					
					if RunService:IsStudio() then
						print(`Module Loaded: [{module.Name}]`)
					end
				else
					warn(module.Name.." threw an error while loading")
				end
			end)
		end
	end
end

return ClientLoader