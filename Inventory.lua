local Library = {}

function Library:ThemeInventory(options)
    local backpack = game:GetService("CoreGui").RobloxGui.Backpack
    local hotbar = backpack.Hotbar

    for i = 1, 3 do
        local button = hotbar[tostring(i)]

        if button then
            if options.Corner then
                local uiCorner = Instance.new("UICorner")
                uiCorner.CornerRadius = UDim.new(options.CornerRadius.X, options.CornerRadius.Y)
                uiCorner.Parent = button
            end

            button.ChildAdded:Connect(function(child)
                if child.Name == "Equipped" then
                    for _, edge in pairs(child:GetChildren()) do
                        if edge.Name == "Edge" then
                            edge:Destroy()
                        end
                    end

                    if options.Corner then
                        local equippedUiCorner = Instance.new("UICorner")
                        equippedUiCorner.CornerRadius = UDim.new(options.CornerRadius.X, options.CornerRadius.Y)
                        equippedUiCorner.Parent = child
                    end

                    local uiStroke = Instance.new("UIStroke")
                    uiStroke.Color = Color3.fromRGB(options.ColorStroke.R, options.ColorStroke.G, options.ColorStroke.B)
                    uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                    uiStroke.Parent = child
                end
            end)

            local numberLabel = button:FindFirstChild("Number")
            if numberLabel and options.Number then
                numberLabel.Position = UDim2.new(0, 25, 0, 0)
                numberLabel.TextSize = 20
                numberLabel.Font = Enum.Font.Fantasy
                numberLabel.Visible = true
            end

            for _, descendant in pairs(button:GetDescendants()) do
                if descendant:IsA("TextLabel") or descendant:IsA("TextButton") then
                    descendant.Font = Enum.Font.Fantasy
                    descendant.TextSize = 20
                end
            end
        end
    end
end

function Library:SetThemeInventory(theme)
    local themes = {
        Spring = {
            ColorStroke = {R = 255, G = 0, B = 0},
            Number = true,
            Corner = true,
            CornerRadius = {X = 0.2, Y = 0.1}
        },
        Summer = {
            ColorStroke = {R = 255, G = 165, B = 0},
            Number = false,
            Corner = false,
            CornerRadius = {X = 0, Y = 0}
        },
    }

    local selectedTheme = themes[theme]

    if selectedTheme then
        self:ThemeInventory({
            ColorStroke = selectedTheme.ColorStroke,
            Number = selectedTheme.Number,
            Corner = selectedTheme.Corner,
            CornerRadius = selectedTheme.CornerRadius,
        })
    else
        warn("Theme không tồn tại!")
    end
end

return Library
