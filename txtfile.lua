
-- note: i like spacing out code because it makes it easier for me to read
game.Players.PlayerAdded:Connect(function(plr)
	-- small pause
	task.wait(0.5)
	
	
	
	-- parts that give quests wow
	local funniblock = game.Workspace.Part
 
 -- get guis
 local plrgui = plr:FindFirstChild("PlayerGui")
-- tried to get quest gui from here but it kept erroring
 
-- variable thingsssssssessessssssdjsadjhnasdbwejqnhjqjajjjjjjk
local questcd = false

 
 -- make folder for quest contents
 local questfolder = Instance.new("Folder")
 questfolder.Name = "questcomponents"
 questfolder.Parent = plr
 
 
 -- make a table
 local questtable = {
   "die",
   "interactpursuer",
"completeobby",
	"sayhi",
	"findme",
	"emote",
	"wait6s"
	"nineplusten"
}
 
 
 -- BEST table EVER
 local table = {
		
-- get quest from table thing
		
		die = function()
			local textframe = plrgui.quest.questholder.template:Clone()
			textframe.Visible = true
			textframe.Name = "die"
			textframe.Parent = plrgui.quest.questholder

			local int = Instance.new("IntValue")
			int.Name = "questprogress"
			int.Parent = questfolder
			
			
			textframe.Text = "perish. | "..int.Value.."/1"

plr.Character.Humanoid.Died:Connect(function()
	
				print("COUNT!!!")
				int.Value += 1
				textframe.Text = "perish. | "..int.Value.."/1"
				print(tostring(int.Value))

				if int.Value >= 1 then
					textframe.Text = "YAYY!! COMPLETE WOOHOO CONGRATULATIONES"
					task.wait(2.5)
					textframe:Remove()
				end
			end)
		end,
		
		
		interactpursuer = function()
			local touchycd = false
			local textframe = plrgui.quest.questholder.template:Clone()
			textframe.Visible = true
			textframe.Name = "interactpursuer"
			textframe.Parent = plrgui.quest.questholder

			local int = Instance.new("IntValue")
			int.Name = "questprogress"
			int.Parent = questfolder
			
			textframe.Text = "touch pursuer part.rbmx. | "..int.Value.."/1"

			game.Workspace.Handle.Touched:Connect(function(touchy)
				
				if touchycd == true then
					return
				end
				
				if touchy.Parent.Name == plr.Character.Name then
					touchycd = true
					game.Workspace.Handle.fresh:Play()
					print("COUNT!!!")
					int.Value += 1
					textframe.Text = "touch pursuer part.rbmx. | "..int.Value.."/1"
					print(tostring(int.Value))

					if int.Value >= 1 then
						textframe.Text = "YAYY!! COMPLETE WOOHOO CONGRATULATIONES"
						task.wait(2.5)
						textframe:Remove()
					end
				end

		
			end)
		end,
		
		completeobby = function()
			local touchycd = false
			local textframe = plrgui.quest.questholder.template:Clone()
			textframe.Visible = true
			textframe.Name = "completeobby"
			textframe.Parent = plrgui.quest.questholder

			local int = Instance.new("IntValue")
			int.Name = "questprogress"
			int.Parent = questfolder

			textframe.Text = "complete the obby. | "..int.Value.."/1"

			game.Workspace.victori.Touched:Connect(function(touchy)

				if touchycd == true then
					return
				end

				if touchy.Parent.Name == plr.Character.Name then
					touchycd = true
					print("COUNT!!!")
					int.Value += 1
					textframe.Text = "complete the obby i put together in 30s. | "..int.Value.."/1"
					print(tostring(int.Value))

					if int.Value >= 1 then
						textframe.Text = "YAYY!! COMPLETE WOOHOO CONGRATULATIONES"
						task.wait(2.5)
						textframe:Remove()
					end
				end


			end)
		end,
		
		sayhi = function()
			local textframe = plrgui.quest.questholder.template:Clone()
			textframe.Visible = true
			textframe.Name = "sayhi"
			textframe.Parent = plrgui.quest.questholder


			local int = Instance.new("IntValue")
			int.Name = "questprogress"
			int.Parent = questfolder

			textframe.Text = "say hi in chat!! | "..int.Value.."/1"

-- detects if player says hi in chat
			plr.Chatted:Connect(function(msg)
				if msg == "hi" or msg == "Hi" or msg == "Hello" or msg == "hello" then
					print("COUNT!!!")
					int.Value += 1
				textframe.Text = "say hi in chat!! | "..int.Value.."/1"
					print(tostring(int.Value))

					if int.Value >= 1 then
						textframe.Text = "YAYY!! COMPLETE WOOHOO CONGRATULATIONES"
						task.wait(2.5)
						textframe:Remove()
					end
				

end
				end)
			
		end,
		
		findme = function()
			local touchycd = false
			local textframe = plrgui.quest.questholder.template:Clone()
			textframe.Visible = true
			textframe.Name = "findme"
			textframe.Parent = plrgui.quest.questholder

			local int = Instance.new("IntValue")
			int.Name = "questprogress"
			int.Parent = questfolder

			textframe.Text = "find me........ | "..int.Value.."/1"

			game.Workspace.Genio221.Torso.Touched:Connect(function(touchy)

				if touchycd == true then
					return
				end

				if touchy.Parent.Name == plr.Character.Name then
					touchycd = true
					print("COUNT!!!")
					int.Value += 1
					textframe.Text = "find me......... | "..int.Value.."/1"
					print(tostring(int.Value))

					if int.Value >= 1 then
						textframe.Text = "YAYY!! COMPLETE WOOHOO CONGRATULATIONES"
						task.wait(2.5)
						textframe:Remove()
					end
				end


			end)
		end,
		
		
		emote = function()
			local textframe = plrgui.quest.questholder.template:Clone()
			textframe.Visible = true
			textframe.Name = "emote"
			textframe.Parent = plrgui.quest.questholder


			local int = Instance.new("IntValue")
			int.Name = "questprogress"
			int.Parent = questfolder

			textframe.Text = "emote!! (/e dance) | "..int.Value.."/1"


			plr.Chatted:Connect(function(msg)
				if msg == "/e dance" then
	
		
					print("COUNT!!!")
					int.Value += 1
					textframe.Text = "emote!! (/e) | "..int.Value.."/1"
					print(tostring(int.Value))

					if int.Value >= 1 then
						textframe.Text = "YAYY!! COMPLETE WOOHOO CONGRATULATIONES"
						task.wait(2.5)
						textframe:Remove()
					end


				end
			end)
		end,
		
		
		wait6s = function()
			local textframe = plrgui.quest.questholder.template:Clone()
			textframe.Visible = true
			textframe.Name = "wait6s"
			textframe.Parent = plrgui.quest.questholder

			local int = Instance.new("IntValue")
			int.Name = "questprogress"
			int.Parent = questfolder

			textframe.Text = "play for 6 seconds | "..int.Value.."/6"

for i = 1,6 do



					print("COUNT!!!")
					int.Value += 1
					textframe.Text = "play for 6 seconds | "..int.Value.."/6"
					print(tostring(int.Value))

					if int.Value >= 6 then
						textframe.Text = "YAYY!! COMPLETE WOOHOO CONGRATULATIONES"
						task.wait(2.5)
						textframe:Remove()
					end
				end


			
		end,
		
		nineplusten = function()
			local textframe = plrgui.quest.questholder.template:Clone()
			textframe.Visible = true
			textframe.Name = "nineplusten"
			textframe.Parent = plrgui.quest.questholder


			local int = Instance.new("IntValue")
			int.Name = "questprogress"
			int.Parent = questfolder

			textframe.Text = "whats 9+10? (spoiler its 21) | "..int.Value.."/1"


			plr.Chatted:Connect(function(msg)
				if msg == "21" then


					print("COUNT!!!")
					int.Value += 1
					textframe.Text = "whats 9+10? | "..int.Value.."/1"
					print(tostring(int.Value))

					if int.Value >= 1 then
						textframe.Text = "YAYY!! COMPLETE WOOHOO CONGRATULATIONES"
						task.wait(2.5)
						textframe:Remove()
					end


				end
			end)
		end,
		
		
		binary = function()
			local textframe = plrgui.quest.questholder.template:Clone()
			textframe.Visible = true
			textframe.Name = "sayhi"
			textframe.Parent = plrgui.quest.questholder


			local int = Instance.new("IntValue")
			int.Name = "questprogress"
			int.Parent = questfolder

			textframe.Text = "what does this say? : 01101000 01101001 (spoiler its 2 letters (UTF-8 btw)) | "..int.Value.."/1"

			-- detects if player says hi in chat
			plr.Chatted:Connect(function(msg)
				if msg == "hi" or msg == "Hi" then
					print("COUNT!!!")
					int.Value += 1
					textframe.Text = "what does this say? : 01101000 01101001 (spoiler its 2 letters (UTF-8 btw)) (check desc if youre lazy to look it up) | "..int.Value.."/1"
					print(tostring(int.Value))

					if int.Value >= 1 then
						textframe.Text = "YAYY!! COMPLETE WOOHOO CONGRATULATIONES"
						task.wait(2.5)
						textframe:Remove()
					end


				end
			end)

		end,
		
 }
 
 -- givequest function that gives quests
 
 local function givequest(questname)
		if plrgui.quest.questholder:FindFirstChild(questname) then
			return
		end
		
		table[questname]()
 end
 
 -- give quest when funniblock is touched
 funniblock.Touched:Connect(function(touched)
		if touched.Parent.Name == plr.Character.Name and questcd == false then
	questcd = true
	-- get random quest from quest table
			local quest = questtable[math.random(1,#questtable)]
			givequest(quest)
	
	
			
task.wait(1)
questcd = false
			
		end
		
 end)
 
 
end)