-- Loader Library (@BizWiz03)
-- version 1.0.0
--!strict
--!native
--!optimize 2

local RunService = game:GetService("RunService")

if RunService:IsServer() then
	return require(script.ServerLoader)
else
	local ServerLoader = script.ServerLoader
	if ServerLoader and RunService:IsRunning() then
		ServerLoader:Destroy()
	end

	return require(script.ClientLoader)
end
