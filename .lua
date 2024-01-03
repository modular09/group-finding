function DoSearch(SearchLoop: number)
	local group

	for id = 1, SearchLoop do
		local success = pcall(function()
			group = game:GetService("GroupService"):GetGroupInfoAsync(id)
		end)

		if success then
			print(id, group.Name, not group.Owner)
		end
	end
end
