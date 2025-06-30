local ServerLoader = {}

-- storage for all loaded modules from the server
local loadedModule = {}

--[[
	Load modules from a folder in the server

	@param modules: The folder containing the modules to load
]]
function ServerLoader.LoadDescendants(modules: Folder)
	for _, module in pairs(modules:GetDescendants()) do
		if module:IsA("ModuleScript") then
			
			task.spawn(function()
				local success, result = pcall(require, module)
				
				if success then
					loadedModule[module.Name] = result
					print(`Module Loaded: [{module.Name}]`)
				else
					warn(module.Name.." threw an error while loading")
				end
			end)
		end
	end
end

return ServerLoader
