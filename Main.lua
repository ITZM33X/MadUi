local UIVersion = "0.3.8"
local mouse = game.Players.LocalPlayer:GetMouse()	
local uis = game:GetService("UserInputService")
local tweenservice = game:GetService("TweenService")
local open = true

function Init()
	spawn(function()
		wait(0.3)
		local script = Instance.new("LocalScript")

		local gui = game.CoreGui.MadUI
		local tabs = gui.Main.TabHolder
		local navigation = gui.Main.Navigation

		local firstPage

		for i,v in pairs(tabs:GetChildren()) do
			if i == 1 then
				firstPage = v
				v.Visible = true
			else
				v.Visible = false
			end
		end		

		local pb = navigation.ButtonHolder:FindFirstChild(firstPage.Name.."Btn")
		pb.BackgroundColor3 = Color3.fromRGB(255, 120, 0)
		pb.ButtonHolderElementEdge.BackgroundColor3 = Color3.fromRGB(255, 120, 0)	
	end)
end


local Lib = {}
function Lib:CreateMain(Name)
	local MadUI = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local TopBar = Instance.new("Frame")
	local TopBarFix = Instance.new("Frame")
	local UIName = Instance.new("TextLabel")
	local UIPadding = Instance.new("UIPadding")
	local Exit = Instance.new("ImageButton")
	local TopBarCorner = Instance.new("UICorner")
	local Navigation = Instance.new("Frame")
	local GameFrame = Instance.new("Frame")
	local GameNAme = Instance.new("TextLabel")
	local UIPadding_2 = Instance.new("UIPadding")
	local GameImage = Instance.new("ImageLabel")
	local ButtonHolder = Instance.new("Frame")
	local ButtonHolderLayout = Instance.new("UIListLayout")
	local ButtonHolderPadding = Instance.new("UIPadding")
	local TabHolder = Instance.new("Frame")
	local TabHolderPadding = Instance.new("UIPadding")
	local TabHolderLayout = Instance.new("UIListLayout")
	
	MadUI.Name = "MadUI"
	MadUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = MadUI
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0.416666657, 0, 0.463392019, 0)

	TopBar.Name = "TopBar"
	TopBar.Parent = Main
	TopBar.AnchorPoint = Vector2.new(0.5, 0.5)
	TopBar.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	TopBar.BorderSizePixel = 0
	TopBar.Position = UDim2.new(0.499836564, 0, 0.0506085828, 0)
	TopBar.Size = UDim2.new(1, 0, 0.100000001, 0)

	TopBarFix.Name = "TopBarFix"
	TopBarFix.Parent = TopBar
	TopBarFix.AnchorPoint = Vector2.new(0.5, 0.5)
	TopBarFix.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	TopBarFix.BorderSizePixel = 0
	TopBarFix.Position = UDim2.new(0.499836564, 0, 0.869078398, 0)
	TopBarFix.Size = UDim2.new(1, 0, 0.239999995, 0)

	UIName.Name = "UIName"
	UIName.Parent = TopBar
	UIName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UIName.BackgroundTransparency = 1.000
	UIName.Position = UDim2.new(0, 0, 0.179999992, 0)
	UIName.Size = UDim2.new(0.5, 0, 0.629078388, 0)
	UIName.Font = Enum.Font.Gotham
	UIName.Text = tostring(Name).."<font color=\"#FF7800\"><font size=\"8\">"..UIVersion.."</font></font>"
	UIName.TextColor3 = Color3.fromRGB(226, 226, 226)
	UIName.TextScaled = true
	UIName.TextSize = 14.000
	UIName.TextWrapped = true
	UIName.TextXAlignment = Enum.TextXAlignment.Left
	UIName.RichText = true

	UIPadding.Parent = UIName
	UIPadding.PaddingLeft = UDim.new(0.0299999993, 0)

	Exit.Name = "Exit"
	Exit.Parent = TopBar
	Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Exit.BackgroundTransparency = 1.000
	Exit.Position = UDim2.new(0.941316724, 0, 0.0899999961, 0)
	Exit.Size = UDim2.new(0.0499333255, 0, 0.798933208, 0)
	Exit.Image = "rbxassetid://7072725342"
	Exit.MouseButton1Click:Connect(function()
		open = false
		Main:TweenPosition(UDim2.new(-0.25, 0,0.5, 0),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Sine,
			0.3,
			true
		)
	end)
	
	uis.InputBegan:Connect(function(Key)
		if Key.KeyCode == Enum.KeyCode.F5 then
			if open then
				open = false
				Main:TweenPosition(UDim2.new(-0.25, 0,0.5, 0),
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Sine,
					0.2,
					true
				)
			else
				open = true
				Main:TweenPosition(UDim2.new(0.5, 0,0.5, 0),
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Sine,
					0.2,
					true
				)
			end
		end
	end)
	
	
	
	
	
	TopBarCorner.CornerRadius = UDim.new(0.100000001, 0)
	TopBarCorner.Name = "TopBarCorner"
	TopBarCorner.Parent = TopBar
	
	
	Navigation.Name = "Navigation"
	Navigation.Parent = Main
	Navigation.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Navigation.BorderSizePixel = 0
	Navigation.Position = UDim2.new(0, 0, 0.0995164216, 0)
	Navigation.Size = UDim2.new(0.240022272, 0, 0.898483694, 0)

	GameFrame.Name = "GameFrame"
	GameFrame.Parent = Navigation
	GameFrame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	GameFrame.BorderSizePixel = 0
	GameFrame.Position = UDim2.new(0, 0, 0.853796422, 0)
	GameFrame.Size = UDim2.new(0.999907017, 0, 0.144203722, 0)

	GameNAme.Name = "GameNAme"
	GameNAme.Parent = GameFrame
	GameNAme.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GameNAme.BackgroundTransparency = 1.000
	GameNAme.Position = UDim2.new(0.371460021, 0, 0.0873813108, 0)
	GameNAme.Size = UDim2.new(0.576456666, 0, 0.819999933, 0)
	GameNAme.Font = Enum.Font.Gotham
	GameNAme.Text =  game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	GameNAme.TextColor3 = Color3.fromRGB(226, 226, 226)
	GameNAme.TextScaled = true
	GameNAme.TextSize = 14.000
	GameNAme.TextWrapped = true
	GameNAme.TextXAlignment = Enum.TextXAlignment.Left
	GameNAme.TextYAlignment = Enum.TextYAlignment.Top

	UIPadding_2.Parent = GameNAme
	UIPadding_2.PaddingLeft = UDim.new(0.0299999993, 0)
	
	local PLACEID = game.PlaceId

	local Product = game:GetService("MarketplaceService")

	local Details = Product:GetProductInfo(PLACEID)
	local IconID = Details.IconImageAssetId
	
	
	GameImage.Name = "GameImage"
	GameImage.Parent = GameFrame
	GameImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GameImage.BackgroundTransparency = 1.000
	GameImage.Position = UDim2.new(0.0448322371, 0, 0.087382257, 0)
	GameImage.Size = UDim2.new(0.275415391, 0, 0.819999933, 0)
	GameImage.Image = "rbxassetid://"..IconID
	GameImage.ScaleType = Enum.ScaleType.Fit

	ButtonHolder.Name = "ButtonHolder"
	ButtonHolder.Parent = Navigation
	ButtonHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ButtonHolder.BackgroundTransparency = 1.000
	ButtonHolder.ClipsDescendants = true
	ButtonHolder.Size = UDim2.new(1, 0, 0.853796363, 0)
	
	ButtonHolderLayout.Name = "ButtonHolderLayout"
	ButtonHolderLayout.Parent = ButtonHolder
	ButtonHolderLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	ButtonHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
	ButtonHolderLayout.Padding = UDim.new(0.00499999989, 0)

	ButtonHolderPadding.Name = "ButtonHolderPadding"
	ButtonHolderPadding.Parent = ButtonHolder
	ButtonHolderPadding.PaddingBottom = UDim.new(0.0299999993, 0)
	ButtonHolderPadding.PaddingLeft = UDim.new(0.0299999993, 0)
	ButtonHolderPadding.PaddingRight = UDim.new(0.0299999993, 0)
	ButtonHolderPadding.PaddingTop = UDim.new(0.0299999993, 0)

	TabHolder.Name = "TabHolder"
	TabHolder.Parent = Main
	TabHolder.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	TabHolder.BorderSizePixel = 0
	TabHolder.ClipsDescendants = true
	TabHolder.Position = UDim2.new(0.239999995, 0, 0.0975164771, 0)
	TabHolder.Size = UDim2.new(0.759673178, 0, 0.898483694, 0)
	
	
	local firstPage
	
	local Tab = {}
	function Tab:CreateTab(Name)	
		local TabHolderTabElement = Instance.new("ScrollingFrame")
		local TabHolderPadding = Instance.new("UIPadding")
		local TabHolderLayout = Instance.new("UIListLayout")
		
		TabHolderTabElement.Name = Name
		TabHolderTabElement.Parent = TabHolder
		TabHolderTabElement.Active = true
		TabHolderTabElement.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		TabHolderTabElement.BorderSizePixel = 0
		TabHolderTabElement.Size = UDim2.new(1, 0, 1, 0)
		TabHolderTabElement.CanvasSize = UDim2.new(0, 0, 0, 0)
		TabHolderTabElement.ScrollBarThickness = 0
		TabHolderTabElement.AutomaticCanvasSize = Enum.AutomaticSize.Y

		TabHolderPadding.Name = "TabHolderPadding"
		TabHolderPadding.Parent = TabHolderTabElement
		TabHolderPadding.PaddingLeft = UDim.new(0.0299999993, 0)
		TabHolderPadding.PaddingRight = UDim.new(0.0299999993, 0)

		TabHolderLayout.Name = "TabHolderLayout"
		TabHolderLayout.Parent = TabHolderTabElement
		TabHolderLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		TabHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
		TabHolderLayout.Padding = UDim.new(0.00499999989, 0)
		
		
		local ButtonHolderElement = Instance.new("Frame")
		local ElementUiCorne = Instance.new("UICorner")
		local ButtonHolderElementEdge = Instance.new("Frame")
		local ButtonHolderPage = Instance.new("TextButton")
		
		ButtonHolderElement.Name = Name.."Btn"
		ButtonHolderElement.Parent = ButtonHolder
		ButtonHolderElement.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
		ButtonHolderElement.Position = UDim2.new(-3.38150983e-07, 0, 0.105000019, 0)
		ButtonHolderElement.Size = UDim2.new(0.877995789, 0, 0.100000001, 0)
		
		if firstPage == nil then
			firstPage = ButtonHolderElement
		end

		ElementUiCorne.CornerRadius = UDim.new(0, 10)
		ElementUiCorne.Name = "ElementUiCorne"
		ElementUiCorne.Parent = ButtonHolderElement

		ButtonHolderElementEdge.Name = "ButtonHolderElementEdge"
		ButtonHolderElementEdge.Parent = ButtonHolderElement
		ButtonHolderElementEdge.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
		ButtonHolderElementEdge.BorderSizePixel = 0
		ButtonHolderElementEdge.Position = UDim2.new(-0.800000012, 0, 0, 0)
		ButtonHolderElementEdge.Size = UDim2.new(0.908738852, 0, 1, 0)

		ButtonHolderPage.Name = Name.."Page"
		ButtonHolderPage.Parent = ButtonHolderElement
		ButtonHolderPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ButtonHolderPage.BackgroundTransparency = 1.000
		ButtonHolderPage.Position = UDim2.new(-0.107478604, 0, 0, 0)
		ButtonHolderPage.Size = UDim2.new(1.10747862, 0, 1, 0)
		ButtonHolderPage.Font = Enum.Font.Gotham
		ButtonHolderPage.TextColor3 = Color3.fromRGB(226, 226, 226)
		ButtonHolderPage.TextScaled = true
		ButtonHolderPage.TextSize = 14.000
		ButtonHolderPage.TextWrapped = true
		ButtonHolderPage.Text = Name
		
		
		ButtonHolderPage.MouseButton1Click:Connect(function()
			for i,v in pairs(ButtonHolder:GetChildren()) do
				if v:IsA("Frame") then
					if v.Name == Name.."Btn" then
						v.BackgroundColor3 = Color3.fromRGB(255, 120, 0)
						v.ButtonHolderElementEdge.BackgroundColor3 = Color3.fromRGB(255, 120, 0)
					else
						v.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
						v.ButtonHolderElementEdge.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
					end
				end
			end
			
			for i,v in pairs(TabHolder:GetChildren()) do
				if v.Name == Name then
					v.Visible = true
					print("jgfjgjfd")
				else
					v.Visible = false
				end
			end
		end)
		
		local Elements = {}
		function Elements:Button(Text,Call)
			local SpaceBetween = Instance.new("TextLabel")
			SpaceBetween.Name = "SpaceBetween"
			SpaceBetween.Parent = TabHolderTabElement
			SpaceBetween.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SpaceBetween.BackgroundTransparency = 1.000
			SpaceBetween.Position = UDim2.new(0, 0, 0.111702241, 0)
			SpaceBetween.Size = UDim2.new(1, 0, 0.0177510343, 0)
			SpaceBetween.Font = Enum.Font.SourceSans
			SpaceBetween.TextColor3 = Color3.fromRGB(0, 0, 0)
			SpaceBetween.TextSize = 14.000
			SpaceBetween.Text = ""
			
			local ButtonElement = Instance.new("Frame")
			local ElementUiCorne_2 = Instance.new("UICorner")
			local ToggleText_2 = Instance.new("TextLabel")
			local UIPadding_2 = Instance.new("UIPadding")
			local ImageLabel = Instance.new("ImageLabel")
			local ButtonElementTrigger = Instance.new("TextButton")
			
			ButtonElement.Name = "ButtonElement"
			ButtonElement.Parent = TabHolderTabElement
			ButtonElement.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
			ButtonElement.Size = UDim2.new(1, 0, 0.100000001, 0)

			ElementUiCorne_2.CornerRadius = UDim.new(0, 10)
			ElementUiCorne_2.Name = "ElementUiCorne"
			ElementUiCorne_2.Parent = ButtonElement

			ToggleText_2.Name = "ToggleText"
			ToggleText_2.Parent = ButtonElement
			ToggleText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleText_2.BackgroundTransparency = 1.000
			ToggleText_2.Size = UDim2.new(0.705372334, 0, 1, 0)
			ToggleText_2.Font = Enum.Font.Gotham
			ToggleText_2.Text = Text
			ToggleText_2.TextColor3 = Color3.fromRGB(226, 226, 226)
			ToggleText_2.TextScaled = true
			ToggleText_2.TextSize = 14.000
			ToggleText_2.TextWrapped = true
			ToggleText_2.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_2.Parent = ToggleText_2
			UIPadding_2.PaddingLeft = UDim.new(0.0199999996, 0)

			ImageLabel.Parent = ButtonElement
			ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ImageLabel.BackgroundTransparency = 1.000
			ImageLabel.Position = UDim2.new(0.920000017, 0, 0.0756510049, 0)
			ImageLabel.Size = UDim2.new(0.0654499978, 0, 0.835310102, 0)
			ImageLabel.Image = "rbxassetid://7072706318"
			ImageLabel.ImageTransparency = 0.700
			ImageLabel.ScaleType = Enum.ScaleType.Fit

			ButtonElementTrigger.Name = "ButtonElementTrigger"
			ButtonElementTrigger.Parent = ButtonElement
			ButtonElementTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonElementTrigger.BackgroundTransparency = 1.000
			ButtonElementTrigger.Size = UDim2.new(1, 0, 1, 0)
			ButtonElementTrigger.Font = Enum.Font.SourceSans
			ButtonElementTrigger.Text = ""
			ButtonElementTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
			ButtonElementTrigger.TextSize = 14.000
			ButtonElementTrigger.MouseEnter:Connect(function()
				ButtonElement.BackgroundColor3 = Color3.fromRGB(33,33,33)
			end)
			ButtonElementTrigger.MouseLeave:Connect(function()
				ButtonElement.BackgroundColor3 = Color3.fromRGB(63,63,63)
			end)
			
			ButtonElementTrigger.MouseButton1Click:Connect(function()
				local success, error = pcall(Call)
				
				if success then				
					local goal = {}
					goal.ImageColor3 = Color3.fromRGB(29, 255, 67)
					
					local goal2 = {}
					goal2.ImageColor3 = Color3.fromRGB(255, 255, 255)
					
					
					local tweeninfo = TweenInfo.new(0.3)
					
					local tweenGiveColor = tweenservice:Create(ImageLabel, tweeninfo, goal)
					local tweenNormalColor = tweenservice:Create(ImageLabel, tweeninfo, goal2)
					
					tweenGiveColor:Play()
					
					tweenGiveColor.Completed:Connect(function()
						tweenNormalColor:Play()
					end)
				else
					warn(error)
					
					local goal = {}
					goal.ImageColor3 = Color3.fromRGB(255, 29, 67)

					local goal2 = {}
					goal2.ImageColor3 = Color3.fromRGB(255, 255, 255)


					local tweeninfo = TweenInfo.new(0.3)

					local tweenGiveColor = tweenservice:Create(ImageLabel, tweeninfo, goal)
					local tweenNormalColor = tweenservice:Create(ImageLabel, tweeninfo, goal2)

					tweenGiveColor:Play()

					tweenGiveColor.Completed:Connect(function()
						tweenNormalColor:Play()
					end)
				end
			end)
		end
		
		function Elements:Label(Text)
			local SpaceBetween = Instance.new("TextLabel")
			SpaceBetween.Name = "SpaceBetween"
			SpaceBetween.Parent = TabHolderTabElement
			SpaceBetween.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SpaceBetween.BackgroundTransparency = 1.000
			SpaceBetween.Position = UDim2.new(0, 0, 0.111702241, 0)
			SpaceBetween.Size = UDim2.new(1, 0, 0.0177510343, 0)
			SpaceBetween.Font = Enum.Font.SourceSans
			SpaceBetween.TextColor3 = Color3.fromRGB(0, 0, 0)
			SpaceBetween.TextSize = 14.000
			SpaceBetween.Text = ""
			
			local LabelElement = Instance.new("Frame")
			local ElementUiCorne_4 = Instance.new("UICorner")
			local LabelText = Instance.new("TextLabel")
			local UIPadding_4 = Instance.new("UIPadding")
			local LabelImage = Instance.new("ImageLabel")
			
			LabelElement.Name = "LabelElement"
			LabelElement.Parent = TabHolderTabElement
			LabelElement.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
			LabelElement.Size = UDim2.new(1, 0, 0.100000001, 0)

			ElementUiCorne_4.CornerRadius = UDim.new(0, 10)
			ElementUiCorne_4.Name = "ElementUiCorne"
			ElementUiCorne_4.Parent = LabelElement

			LabelText.Name = "LabelText"
			LabelText.Parent = LabelElement
			LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelText.BackgroundTransparency = 1.000
			LabelText.Size = UDim2.new(0.705372334, 0, 1, 0)
			LabelText.Font = Enum.Font.Gotham
			LabelText.Text = Text
			LabelText.TextColor3 = Color3.fromRGB(226, 226, 226)
			LabelText.TextScaled = true
			LabelText.TextSize = 14.000
			LabelText.TextWrapped = true
			LabelText.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_4.Parent = LabelText
			UIPadding_4.PaddingLeft = UDim.new(0.0199999996, 0)

			LabelImage.Name = "LabelImage"
			LabelImage.Parent = LabelElement
			LabelImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelImage.BackgroundTransparency = 1.000
			LabelImage.Position = UDim2.new(0.920000017, 0, 0.0756510049, 0)
			LabelImage.Size = UDim2.new(0.0654499978, 0, 0.835310102, 0)
			LabelImage.Image = "rbxassetid://7072717806"
			LabelImage.ImageTransparency = 0.700
			LabelImage.ScaleType = Enum.ScaleType.Fit
		end
		
		function Elements:TextBox(Text, Call)
			local SpaceBetween = Instance.new("TextLabel")
			SpaceBetween.Name = "SpaceBetween"
			SpaceBetween.Parent = TabHolderTabElement
			SpaceBetween.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SpaceBetween.BackgroundTransparency = 1.000
			SpaceBetween.Position = UDim2.new(0, 0, 0.111702241, 0)
			SpaceBetween.Size = UDim2.new(1, 0, 0.0177510343, 0)
			SpaceBetween.Font = Enum.Font.SourceSans
			SpaceBetween.TextColor3 = Color3.fromRGB(0, 0, 0)
			SpaceBetween.TextSize = 14.000
			SpaceBetween.Text = ""
			
			local TextBoxElement = Instance.new("Frame")
			local ElementUiCorne_3 = Instance.new("UICorner")
			local TextBoxImage = Instance.new("ImageLabel")
			local ToggleText_3 = Instance.new("TextBox")
			local UIPadding_3 = Instance.new("UIPadding")
			
			
			
			
			TextBoxElement.Name = "TextBoxElement"
			TextBoxElement.Parent = TabHolderTabElement
			TextBoxElement.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
			TextBoxElement.Size = UDim2.new(1, 0, 0.100000001, 0)

			ElementUiCorne_3.CornerRadius = UDim.new(0, 10)
			ElementUiCorne_3.Name = "ElementUiCorne"
			ElementUiCorne_3.Parent = TextBoxElement

			TextBoxImage.Name = "TextBoxImage"
			TextBoxImage.Parent = TextBoxElement
			TextBoxImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextBoxImage.BackgroundTransparency = 1.000
			TextBoxImage.Position = UDim2.new(0.920000017, 0, 0.0756510049, 0)
			TextBoxImage.Size = UDim2.new(0.0654499978, 0, 0.835310102, 0)
			TextBoxImage.Image = "rbxassetid://7072715962"
			TextBoxImage.ImageTransparency = 0.700
			TextBoxImage.ScaleType = Enum.ScaleType.Fit

			ToggleText_3.Name = "ToggleText"
			ToggleText_3.Parent = TextBoxElement
			ToggleText_3.Active = false
			ToggleText_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleText_3.BackgroundTransparency = 1.000
			ToggleText_3.Selectable = false
			ToggleText_3.Size = UDim2.new(0.705372334, 0, 1, 0)
			ToggleText_3.Font = Enum.Font.Gotham
			ToggleText_3.PlaceholderText = Text
			ToggleText_3.Text = ""
			ToggleText_3.TextColor3 = Color3.fromRGB(226, 226, 226)
			ToggleText_3.TextScaled = true
			ToggleText_3.TextSize = 14.000
			ToggleText_3.TextWrapped = true
			ToggleText_3.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_3.Parent = ToggleText_3
			UIPadding_3.PaddingLeft = UDim.new(0.0199999996, 0)
			
			ToggleText_3.FocusLost:Connect(function(EnterPressed)
				if EnterPressed then
					pcall(Call, ToggleText_3.Text)
					ToggleText_3.Text = ""
				end
			end)
			
		end
		
		function Elements:Slider(Text,minValue, maxValue, Call)
			local SpaceBetween = Instance.new("TextLabel")
			SpaceBetween.Name = "SpaceBetween"
			SpaceBetween.Parent = TabHolderTabElement
			SpaceBetween.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SpaceBetween.BackgroundTransparency = 1.000
			SpaceBetween.Position = UDim2.new(0, 0, 0.111702241, 0)
			SpaceBetween.Size = UDim2.new(1, 0, 0.0177510343, 0)
			SpaceBetween.Font = Enum.Font.SourceSans
			SpaceBetween.TextColor3 = Color3.fromRGB(0, 0, 0)
			SpaceBetween.TextSize = 14.000
			SpaceBetween.Text = ""
			
			local SliderElement = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local SliderBar = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local RealSlider = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local SliderValueName = Instance.new("TextLabel")
			local SliderValueMax = Instance.new("TextLabel")
			local SliderValueMin = Instance.new("TextLabel")
			
			
			
			
			SliderElement.Name = "SliderElement"
			SliderElement.Parent = TabHolderTabElement
			SliderElement.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
			SliderElement.Position = UDim2.new(0, 0, 0.406004131, 0)
			SliderElement.Size = UDim2.new(1, 0, 0.150000006, 0)

			UICorner.CornerRadius = UDim.new(0, 10)
			UICorner.Parent = SliderElement

			SliderBar.Name = "SliderBar"
			SliderBar.Parent = SliderElement
			SliderBar.Active = false
			SliderBar.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
			SliderBar.Position = UDim2.new(0.0203829035, 0, 0.134000003, 0)
			SliderBar.Selectable = false
			SliderBar.Size = UDim2.new(0.956490934, 0, 0.300000012, 0)
			SliderBar.Text = ""

			UICorner_2.CornerRadius = UDim.new(0, 10)
			UICorner_2.Parent = SliderBar

			RealSlider.Name = "RealSlider"
			RealSlider.Parent = SliderBar
			RealSlider.BackgroundColor3 = Color3.fromRGB(255, 120, 0)
			RealSlider.Size = UDim2.new(1, 0, 1, 0)

			UICorner_3.CornerRadius = UDim.new(0, 10)
			UICorner_3.Parent = RealSlider

			SliderValueName.Name = "SliderValueName"
			SliderValueName.Parent = SliderElement
			SliderValueName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderValueName.BackgroundTransparency = 1.000
			SliderValueName.Position = UDim2.new(0.248567164, 0, 0.490241945, 0)
			SliderValueName.Size = UDim2.new(0.5, 0, 0.509758115, 0)
			SliderValueName.Font = Enum.Font.Gotham
			SliderValueName.Text = Text
			SliderValueName.TextColor3 = Color3.fromRGB(226, 226, 226)
			SliderValueName.TextScaled = true
			SliderValueName.TextSize = 14.000
			SliderValueName.TextWrapped = true

			SliderValueMax.Name = "SliderValueMax"
			SliderValueMax.Parent = SliderElement
			SliderValueMax.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderValueMax.BackgroundTransparency = 1.000
			SliderValueMax.Position = UDim2.new(0.748567402, 0, 0.490241945, 0)
			SliderValueMax.Size = UDim2.new(0.228306383, 0, 0.396479517, 0)
			SliderValueMax.Font = Enum.Font.Gotham
			SliderValueMax.Text = tostring(maxValue)
			SliderValueMax.TextColor3 = Color3.fromRGB(226, 226, 226)
			SliderValueMax.TextScaled = true
			SliderValueMax.TextSize = 14.000
			SliderValueMax.TextWrapped = true
			SliderValueMax.TextXAlignment = Enum.TextXAlignment.Right

			SliderValueMin.Name = "SliderValueMin"
			SliderValueMin.Parent = SliderElement
			SliderValueMin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderValueMin.BackgroundTransparency = 1.000
			SliderValueMin.Position = UDim2.new(0.0203829035, 0, 0.490241945, 0)
			SliderValueMin.Size = UDim2.new(0.227548882, 0, 0.396479517, 0)
			SliderValueMin.Font = Enum.Font.Gotham
			SliderValueMin.Text = tostring(minValue)
			SliderValueMin.TextColor3 = Color3.fromRGB(226, 226, 226)
			SliderValueMin.TextScaled = true
			SliderValueMin.TextSize = 14.000
			SliderValueMin.TextWrapped = true
			SliderValueMin.TextXAlignment = Enum.TextXAlignment.Left
			
			
			
			local oldText = Text
			
			local Value
			print(SliderBar.Size.X.Scale)
			
			SliderBar.MouseButton1Down:Connect(function()
				Value = math.floor((((tonumber(maxValue) - tonumber(minValue)) / 550) * RealSlider.AbsoluteSize.X) + tonumber(minValue)) or 0
				pcall(function()
					Call(Value)
				end)
				RealSlider.Size = UDim2.new(0, math.clamp(mouse.X - RealSlider.AbsolutePosition.X, 0, 550), 1, 0)
				print(mouse.X, mouse.Y)
				moveconnection = mouse.Move:Connect(function()
					
					Value = math.floor((((tonumber(maxValue) - tonumber(minValue)) / 550) * RealSlider.AbsoluteSize.X) + tonumber(minValue))
					pcall(function()
						Call(Value)
					end)
					RealSlider.Size = UDim2.new(0, math.clamp(mouse.X - RealSlider.AbsolutePosition.X, 0, 550), 1, 0)
				end)
				releaseconnection = uis.InputEnded:Connect(function(Mouse)
					if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(maxValue) - tonumber(minValue)) / 550) * RealSlider.AbsoluteSize.X) + tonumber(minValue))
						pcall(function()
							Call(Value)
						end)
						RealSlider.Size = UDim2.new(0, math.clamp(mouse.X - RealSlider.AbsolutePosition.X, 0, 550), 1, 0)
						moveconnection:Disconnect()
						releaseconnection:Disconnect()
					end
				end)
			end)
			
		end
		
		function Elements:Toggle(Text,Call)
			local SpaceBetween = Instance.new("TextLabel")
			SpaceBetween.Name = "SpaceBetween"
			SpaceBetween.Parent = TabHolderTabElement
			SpaceBetween.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SpaceBetween.BackgroundTransparency = 1.000
			SpaceBetween.Position = UDim2.new(0, 0, 0.111702241, 0)
			SpaceBetween.Size = UDim2.new(1, 0, 0.0177510343, 0)
			SpaceBetween.Font = Enum.Font.SourceSans
			SpaceBetween.TextColor3 = Color3.fromRGB(0, 0, 0)
			SpaceBetween.TextSize = 14.000
			SpaceBetween.Text = ""
			
			local ToggleElement = Instance.new("Frame")
			local ElementUiCorne = Instance.new("UICorner")
			local ToggleMain = Instance.new("Frame")
			local ToggleUiCorner = Instance.new("UICorner")
			local ToggleButton = Instance.new("TextButton")
			local UICorner_4 = Instance.new("UICorner")
			local ToggleText = Instance.new("TextLabel")
			local UIPadding = Instance.new("UIPadding")
			
			ToggleElement.Name = "ToggleElement"
			ToggleElement.Parent = TabHolderTabElement
			ToggleElement.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
			ToggleElement.Size = UDim2.new(1, 0, 0.100000001, 0)

			ElementUiCorne.CornerRadius = UDim.new(0, 10)
			ElementUiCorne.Name = "ElementUiCorne"
			ElementUiCorne.Parent = ToggleElement

			ToggleMain.Name = "ToggleMain"
			ToggleMain.Parent = ToggleElement
			ToggleMain.AnchorPoint = Vector2.new(0, 0.5)
			ToggleMain.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
			ToggleMain.Position = UDim2.new(0.853710294, 0, 0.50000006, 0)
			ToggleMain.Size = UDim2.new(0.122371137, 0, 0.802566528, 0)

			ToggleUiCorner.CornerRadius = UDim.new(0, 10)
			ToggleUiCorner.Name = "ToggleUiCorner"
			ToggleUiCorner.Parent = ToggleMain

			ToggleButton.Name = "ToggleButton"
			ToggleButton.Parent = ToggleMain
			ToggleButton.Active = false
			ToggleButton.BackgroundColor3 = Color3.fromRGB(168, 69, 71)
			ToggleButton.Selectable = false
			ToggleButton.Size = UDim2.new(0.5, 0, 1, 0)
			ToggleButton.Font = Enum.Font.Gotham
			ToggleButton.Text = "Off"
			ToggleButton.TextColor3 = Color3.fromRGB(226, 226, 226)
			ToggleButton.TextScaled = true
			ToggleButton.TextWrapped = true

			UICorner_4.CornerRadius = UDim.new(0, 10)
			UICorner_4.Parent = ToggleButton

			ToggleText.Name = "ToggleText"
			ToggleText.Parent = ToggleElement
			ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleText.BackgroundTransparency = 1.000
			ToggleText.Size = UDim2.new(0.705372334, 0, 1, 0)
			ToggleText.Font = Enum.Font.Gotham
			ToggleText.Text = Text
			ToggleText.TextColor3 = Color3.fromRGB(226, 226, 226)
			ToggleText.TextScaled = true
			ToggleText.TextSize = 14.000
			ToggleText.TextWrapped = true
			ToggleText.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding.Parent = ToggleText
			UIPadding.PaddingLeft = UDim.new(0.0199999996, 0)
			
			local on = false
			ToggleButton.MouseButton1Click:Connect(function()
				if on == false then
					on = true
					ToggleButton:TweenPosition(UDim2.new(0.5, 0,0, 0),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Sine,
						0.3,
						true
					)				
					ToggleButton.BackgroundColor3 = Color3.new(0.278431, 0.658824, 0.239216)
					ToggleButton.Text = "On"
					pcall(Call, on)
				else
					on = false
					ToggleButton:TweenPosition(UDim2.new(0, 0,0, 0),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Sine,
						0.3,
						true
					)
					ToggleButton.BackgroundColor3 = Color3.new(0.658824, 0.270588, 0.278431)
					ToggleButton.Text = "Off"
					pcall(Call, on)
				end
			end)
			
		end
		
		function Elements:DestroyButton()
			local SpaceBetween = Instance.new("TextLabel")
			SpaceBetween.Name = "SpaceBetween"
			SpaceBetween.Parent = TabHolderTabElement
			SpaceBetween.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SpaceBetween.BackgroundTransparency = 1.000
			SpaceBetween.Position = UDim2.new(0, 0, 0.111702241, 0)
			SpaceBetween.Size = UDim2.new(1, 0, 0.0177510343, 0)
			SpaceBetween.Font = Enum.Font.SourceSans
			SpaceBetween.TextColor3 = Color3.fromRGB(0, 0, 0)
			SpaceBetween.TextSize = 14.000
			SpaceBetween.Text = ""

			local ButtonElement = Instance.new("TextButton")
			local UICorner = Instance.new("UICorner")

			ButtonElement.Name = "ButtonElement"
			ButtonElement.Parent = TabHolderTabElement
			ButtonElement.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
			ButtonElement.BorderSizePixel = 0
			ButtonElement.Position = UDim2.new(-7.08886816e-08, 0, 0, 0)
			ButtonElement.Size = UDim2.new(1.00000024, 0, 0.100000001, 0)
			ButtonElement.Font = Enum.Font.Gotham
			ButtonElement.TextColor3 = Color3.fromRGB(226, 226, 226)
			ButtonElement.TextScaled = true
			ButtonElement.TextSize = 14.000
			ButtonElement.TextWrapped = true
			ButtonElement.Text = "Destroy UI"
			ButtonElement.MouseButton1Click:Connect(function()
				MadUI:Destroy()
			end)

			UICorner.CornerRadius = UDim.new(0, 10)
			UICorner.Parent = ButtonElement
		end
		
		function Elements:Section(Text)
			local SpaceBetween = Instance.new("TextLabel")
			SpaceBetween.Name = "SpaceBetween"
			SpaceBetween.Parent = TabHolderTabElement
			SpaceBetween.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SpaceBetween.BackgroundTransparency = 1.000
			SpaceBetween.Position = UDim2.new(0, 0, 0.111702241, 0)
			SpaceBetween.Size = UDim2.new(1, 0, 0.02, 0)
			SpaceBetween.Font = Enum.Font.Gotham
			SpaceBetween.TextColor3 = Color3.fromRGB(226, 226, 226)
			SpaceBetween.TextScaled = true
			SpaceBetween.TextXAlignment = Enum.TextXAlignment.Left
			SpaceBetween.Text = ""
			
			
			local SectionElement = Instance.new("Frame")
			local ElementUiCorne = Instance.new("UICorner")
			local LabelText = Instance.new("TextLabel")
			local UIPadding = Instance.new("UIPadding")
			local LabelImage = Instance.new("ImageLabel")
			local UIStroke = Instance.new("UIStroke")
			
			SectionElement.Name = "SectionElement"
			SectionElement.Parent = TabHolderTabElement
			SectionElement.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
			SectionElement.BackgroundTransparency = 1.000
			SectionElement.Size = UDim2.new(1, 0, 0.0700000003, 0)

			ElementUiCorne.CornerRadius = UDim.new(0, 10)
			ElementUiCorne.Name = "ElementUiCorne"
			ElementUiCorne.Parent = SectionElement
			
			UIStroke.Thickness = 2.8
			UIStroke.Color = Color3.fromRGB(63,63,63)
			UIStroke.Parent = SectionElement

			LabelText.Name = "LabelText"
			LabelText.Parent = SectionElement
			LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelText.BackgroundTransparency = 1.000
			LabelText.Size = UDim2.new(0.705372334, 0, 1, 0)
			LabelText.Font = Enum.Font.Gotham
			LabelText.Text = Text
			LabelText.TextColor3 = Color3.fromRGB(226, 226, 226)
			LabelText.TextScaled = true
			LabelText.TextSize = 14.000
			LabelText.TextWrapped = true
			LabelText.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding.Parent = LabelText
			UIPadding.PaddingLeft = UDim.new(0.0199999996, 0)

			LabelImage.Name = "LabelImage"
			LabelImage.Parent = SectionElement
			LabelImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelImage.BackgroundTransparency = 1.000
			LabelImage.Position = UDim2.new(0.9381091, 0, 0.0756502226, 0)
			LabelImage.Size = UDim2.new(0.0473409779, 0, 0.835310102, 0)
			LabelImage.Image = "rbxassetid://7072980642"
			LabelImage.ImageTransparency = 0.700
			LabelImage.ScaleType = Enum.ScaleType.Fit
		
			
			
		end
		
		return Elements
	end
	
	if game.CoreGui:FindFirstChild("MadUI") then
		game.CoreGui.MadUI:Destroy()
	end
	
	MadUI.Parent = game.CoreGui
	
	
	return Tab
end



Init()
return Lib
