local UIS = game:GetService("UserInputService")
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local garage = "Garage 10" -- change to your number on leaderboard
local fullAuto = true

if fullAuto == false then
   UIS.InputBegan:Connect(function(input)
       if input.UserInputType == Enum.UserInputType.MouseButton1 then
           print(Mouse.Target)

           local part = game.workspace.Garages:FindFirstChild(garage).Parts:FindFirstChild("BumperA")
           firetouchinterest(Mouse.Target, part, 0)
           wait(0.1)
           firetouchinterest(Mouse.Target, part, 1)
           print("yeah")
       end
   end)
end

if fullAuto == true then
   local firing = false
   
   Mouse.Button1Down:Connect(function()
       if not firing then
           firing = true
           while firing do
               print(Mouse.Target)
               local part = game.workspace.Garages:FindFirstChild(garage).Parts:FindFirstChild("BumperA")
               part:WaitForChild("TouchInterest")
               firetouchinterest(Mouse.Target, part, 0)
               wait(0.1)
               firetouchinterest(Mouse.Target, part, 1)
               print("yeah")
           end
       end
   end)
   
   Mouse.Button1Up:Connect(function()
       firing = false
   end)
end