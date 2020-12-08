while wait() do
  for _, v in pairs(workspace:GetDescendants()) do
    coroutine.resume(coroutine.create(function()
          if not v:FindFirstChildOfClass("Dialog") then
            local d = Instance.new("Dialog", v)
            d.Tone = math.random(0, 2)
            d.Purpose = math.random(0, 2)
            d.TriggerDistance = 0.01
            d.ConversationDistance = 0.01
            spawn(function()
                d.Tone = math.random(0, 2)
                d.Purpose = math.random(0, 2)
            end)
          end
        end))
  end
end
