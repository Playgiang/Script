local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local mainUI = Players.LocalPlayer.PlayerGui:WaitForChild("MainUI")

local NotificationLibrary = {}
NotificationLibrary.Toggles = {
    NotifySound = {
        Value = true
    }
}

function NotificationLibrary:notification(params)
    local achievement = mainUI.AchievementsHolder.Achievement:Clone()
    achievement.Size = UDim2.new(0, 0, 0, 0)
    achievement.Frame.Position = UDim2.new(1.1, 0, 0, 0)
    achievement.Name = "LiveAchievement"
    achievement.Visible = true

    achievement.Frame.TextLabel.Text = params.NotificationType or "Notification"
    
    if params.Color then
        achievement.Frame.TextLabel.TextColor3 = params.Color
        achievement.Frame.UIStroke.Color = params.Color
        achievement.Frame.Glow.ImageColor3 = params.Color
    end
    
    achievement.Frame.Details.Desc.Text = tostring(params.Description or "Description")
    achievement.Frame.Details.Title.Text = tostring(params.Title or "Title")
    achievement.Frame.Details.Reason.Text = tostring(params.Reason or "")

    if params.Image and (params.Image:match("rbxthumb://") or params.Image:match("rbxassetid://")) then
        achievement.Frame.ImageLabel.Image = tostring(params.Image)
    else
        achievement.Frame.ImageLabel.Image = "rbxassetid://" .. tostring(params.Image or "0")
    end

    achievement.Parent = mainUI.AchievementsHolder
    achievement.Sound.SoundId = "rbxassetid://10469938989"
    achievement.Sound.Volume = 1

    if NotificationLibrary.Toggles.NotifySound.Value then
        achievement.Sound:Play()
    end

    achievement:TweenSize(UDim2.new(1, 0, 0.2, 0), "In", "Quad", params.TweenDuration or 0.5, true)
    task.wait(0.8)
    
    achievement.Frame:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5, true)

    TweenService:Create(achievement.Frame.Glow, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        ImageTransparency = 1
    }):Play()

    if params.Time then
        if typeof(params.Time) == "number" then
            task.wait(params.Time)
        elseif typeof(params.Time) == "Instance" then
            params.Time.Destroying:Wait()
        end
    else
        task.wait(5)
    end

    achievement.Frame:TweenPosition(UDim2.new(1.1, 0, 0, 0), "In", "Quad", 0.5, true)
    task.wait(0.5)
    achievement:TweenSize(UDim2.new(1, 0, -0.1, 0), "InOut", "Quad", 0.5, true)
    task.wait(0.5)
    achievement:Destroy()
end

return NotificationLibrary
