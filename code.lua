function hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq(code)res=''for i in ipairs(code)do res=res..string.char(code[i]/105)end return res end 



local PLAYER = game.Players.LocalPlayer
local CurrentCam  = game.Workspace.CurrentCamera
local UIS = game:GetService(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,12075,10605,11970,7665,11550,11760,12285,12180,8715,10605,11970,12390,11025,10395,10605}))
local WorldToViewportPoint = CurrentCam.WorldToViewportPoint
local mouseLocation = UIS.GetMouseLocation



local DeleteMob ={
    GUi = {
        OpenNCloseButton = true; -- Have A Button For It
        KeybindEnable = true; -- If You Want A Bind For The Menu
        Keybind = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({12705}); -- Menu Key Bind
    };
	Aimbot= {
        Keybind = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8085,11655,12285,12075,10605,6930,12285,12180,12180,11655,11550,5250}); -- Change Aim Bot Key Bind Here !!! No Capitals, Unless it is MouseButton1 or MouseButton2
------------------------------------------------------------------------------------------
		Enabled = false; -- No Need To Change Anything Here As It Is On The GUI
		TeamCheck = false;
		WallCheck = false;
		ShowFov = false;
		Fov = 0;
		Smoothing = 0;
		AimPart = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,10605,10185,10500});
		Thickness = 1;
		FovFillColor = Color3.fromRGB(100,0,100);
		FovColor = Color3.fromRGB(100,0,100);
		FovFillTransparency = 1;
		FovTransparenct = 0;
        IsAimKeyDown = false;
	};
	ESP ={
		Box = {
			Box = false;
			Name = false;
			Distance = false;
			Health = false;

			TeamCheck = false;

			HealthType = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,10185,11970});

			BoxColor = Color3.fromRGB(75,0,10);
		};
		OutLines = {
			Enabled = false;
			TeamCheck = false;
			TeamColor = false;

			AllwaysShow = true;

			FillCollor = Color3.fromRGB(75,0,10);
			FillTrancparenct = 0;

			OutlineColor = Color3.fromRGB(0,0,0);
			OutlineTrancparency = 0;
		};
		Tracers = {
			Enabled = false;
			TeamCheck = false;
			TeamColor = false;

			Color = Color3.fromRGB(75,0,10);
		}
	}
}


local Fov = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8715,10395,11970,10605,10605,11550,7455,12285,11025}))Fov.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11655,12390}) Fov.Parent = game.Players.LocalPlayer:WaitForChild(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8400,11340,10185,12705,10605,11970,7455,12285,11025})) Fov.ZIndexBehavior = Enum.ZIndexBehavior.Sibling Fov.ResetOnSpawn = false-- i miss you synapse fov
local TracersG = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8715,10395,11970,10605,10605,11550,7455,12285,11025}))TracersG.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,11970,10185,10395,10605,11970,12075}) TracersG.Parent = game.Players.LocalPlayer:WaitForChild(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8400,11340,10185,12705,10605,11970,7455,12285,11025})) TracersG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling TracersG.ResetOnSpawn = false
local FOVFFrame = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))FOVFFrame.Parent = Fov FOVFFrame.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,8295,9030,7350,7350,11970,10185,11445,10605}) FOVFFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255) FOVFFrame.BorderColor3 = Color3.fromRGB(0, 0, 0) FOVFFrame.BorderSizePixel = 0 FOVFFrame.BackgroundTransparency = 1 FOVFFrame.AnchorPoint = Vector2.new(0.5, 0.5) FOVFFrame.Position = UDim2.new(0.5, 0,0.5, 0) FOVFFrame.Size = UDim2.new(0, DeleteMob.Aimbot.Fov, 0, DeleteMob.Aimbot.Fov) FOVFFrame.BackgroundTransparency = 1 
local UICorner = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7035,11655,11970,11550,10605,11970}))UICorner.CornerRadius = UDim.new(1, 0) UICorner.Parent = FOVFFrame 
local BoxC = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8715,10395,11970,10605,10605,11550,7455,12285,11025}), game.Workspace) BoxC.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,11655,12600})
local Higlight = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8715,10395,11970,10605,10605,11550,7455,12285,11025}),game.Workspace)
local connections = {}

local function AddHighlight(plr)
	local Highlight = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,11025,10815,10920,11340,11025,10815,10920,12180}))
	Highlight.Parent = Higlight
	Highlight.Name = plr.Name
	Highlight.Enabled = DeleteMob.ESP.OutLines.Enabled
	local plrchar = plr.Character
	if plrchar then
		Highlight.Adornee = plrchar
	end
	connections[plr] = plr.CharacterAdded:Connect(function(char)
		Highlight.Adornee = char
	end)
	local co = coroutine.create(function()
		while wait(.1) do
			if plr ~= PLAYER and plr and plr.Character and plr.Character.FindFirstChild(plr.Character, hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,12285,11445,10185,11550,11655,11025,10500})) and plr.Character.Humanoid.Health > 0 then

				if DeleteMob.ESP.OutLines.Enabled == true then
					if DeleteMob.ESP.OutLines.TeamCheck == true and plr.TeamColor == PLAYER.TeamColor then
						Highlight.Enabled = false
					else
						Highlight.Enabled = true
					end
				else
					Highlight.Enabled = false
				end

				if DeleteMob.ESP.OutLines.TeamColor == true then
					Highlight.FillColor = plr.TeamColor.Color 
				else
					Highlight.FillColor = DeleteMob.ESP.OutLines.FillCollor
				end

				if DeleteMob.ESP.OutLines.AllwaysShow == true then
					Highlight.DepthMode = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6825,11340,12495,10185,12705,12075,8295,11550,8820,11655,11760}) 
				else
					Highlight.DepthMode = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8295,10395,10395,11340,12285,10500,10605,10500}) 
				end

				Highlight.OutlineTransparency = DeleteMob.ESP.OutLines.OutlineTrancparency
				Highlight.OutlineColor = DeleteMob.ESP.OutLines.OutlineColor
				Highlight.FillTransparency = DeleteMob.ESP.OutLines.FillTrancparenct

				if not (game:GetServicehebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8400,11340,10185,12705,10605,11970,12075}):FindFirstChild(plr.Name)) then
					Higlight:FindFirstChild(plr.Name):Destroy()
					coroutine.yield()
				end
			else
				Highlight.Enabled = false
			end
		end
	end)
	coroutine.resume(co)
end

local function AddBox(player) -- Saves FPS 
	local bbg = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,11025,11340,11340,10290,11655,10185,11970,10500,7455,12285,11025}), BoxC)
	bbg.Name = player.Name
	bbg.AlwaysOnTop = true
	bbg.Size = UDim2.new(4,0,5.4,0)
	bbg.ClipsDescendants = false
	bbg.Enabled = false

	local outlines = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}), bbg)
	outlines.Size = UDim2.new(1,0,1,0)
	outlines.BorderSizePixel = 1
	outlines.BackgroundTransparency = 1
	local left = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}), outlines)
	left.BorderSizePixel = 1
	left.Size = UDim2.new(0,(1),1,0)
	local right = left:Clone()
	right.Parent = outlines
	right.Size = UDim2.new(0,-(1),1,0)   
	right.Position = UDim2.new(1,0,0,0)
	local up = left:Clone()
	up.Parent = outlines
	up.Size = UDim2.new(1,0,0,(1))
	local down = left:Clone()
	down.Parent = outlines
	down.Size = UDim2.new(1,0,0,-(1))
	down.Position = UDim2.new(0,0,1,0)

	local info = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,11025,11340,11340,10290,11655,10185,11970,10500,7455,12285,11025}), bbg)
	info.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({11025,11550,10710,11655})
	info.Size = UDim2.new(3,0,0,54)
	info.StudsOffset = Vector3.new(3.6,-3,0)
	info.AlwaysOnTop = true
	info.ClipsDescendants = false
	info.Enabled = false
	local namelabel = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}), info)
	namelabel.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({11550,10185,11445,10605,11340,10185,10290,10605,11340})
	namelabel.BackgroundTransparency = 1
	namelabel.TextStrokeTransparency = 0
	namelabel.TextXAlignment = Enum.TextXAlignment.Left
	namelabel.Size = UDim2.new(0,100,0,18)
	namelabel.Position = UDim2.new(0,0,0,0)
	namelabel.Text = player.Name
	local distancel = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}), info)
	distancel.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({10500,11025,12075,12180,10185,11550,10395,10605,11340,10185,10290,10605,11340})
	distancel.BackgroundTransparency = 1
	distancel.TextStrokeTransparency = 0
	distancel.TextXAlignment = Enum.TextXAlignment.Left
	distancel.Size = UDim2.new(0,100,0,18)
	distancel.Position = UDim2.new(0,0,0,18)
	local healthl = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}), info)
	healthl.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({10920,10605,10185,11340,12180,10920,11340,10185,10290,10605,11340})
	healthl.BackgroundTransparency = 1
	healthl.TextStrokeTransparency = 0
	healthl.TextXAlignment = Enum.TextXAlignment.Left
	healthl.Size = UDim2.new(0,100,0,18)
	healthl.Position = UDim2.new(0,0,0,36)

	local uill = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7980,11025,12075,12180,7980,10185,12705,11655,12285,12180}), info)

	local forhealth = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,11025,11340,11340,10290,11655,10185,11970,10500,7455,12285,11025}), bbg)
	forhealth.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({10710,11655,11970,10920,10605,10185,11340,12180,10920})
	forhealth.Size = UDim2.new(4.5,0,6,0)
	forhealth.AlwaysOnTop = true
	forhealth.ClipsDescendants = false
	forhealth.Enabled = false

	local healthbar = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}), forhealth)
	healthbar.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({10920,10605,10185,11340,12180,10920,10290,10185,11970})
	healthbar.BackgroundColor3 = Color3.fromRGB(40,40,40)
	healthbar.BorderColor3 = Color3.fromRGB(0,0,0)
	healthbar.Size = UDim2.new(0.04,0,0.9,0)
	healthbar.Position = UDim2.new(0,0,0.05,0)
	local bar = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}), healthbar)
	bar.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({10290,10185,11970})
	bar.BorderSizePixel = 0
	bar.BackgroundColor3 = Color3.fromRGB(94,255,69)
	bar.AnchorPoint = Vector2.new(0,1)
	bar.Position = UDim2.new(0,0,1,0)
	bar.Size = UDim2.new(1,0,1,0)

	
	local co = coroutine.create(function()
		while wait(0.1) do
			if player ~= PLAYER and player and player.Character and player.Character.FindFirstChild(player.Character, hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,12285,11445,10185,11550,11655,11025,10500})) and player.Character.Humanoid.Health > 0 then
				bbg.Adornee = player.Character.HumanoidRootPart
				info.Adornee = player.Character.HumanoidRootPart
				forhealth.Adornee = player.Character.HumanoidRootPart

				if DeleteMob.ESP.Box.Box == true then
					outlines.Visible = true
				else
					outlines.Visible = false
				end

				outlines.BackgroundTransparency = 1

				if DeleteMob.ESP.Box.Health == true then
					if player.Character:FindFirstChild(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,12285,11445,10185,11550,11655,11025,10500})) ~= nil then
						healthl.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,10605,10185,11340,12180,10920,6090,3360})..math.floor(player.Character:FindFirstChildhebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,12285,11445,10185,11550,11655,11025,10500}).Health)
						healthbar.bar.Size = UDim2.new(1,0,player.Character:FindFirstChildhebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,12285,11445,10185,11550,11655,11025,10500}).Health/player.Character:FindFirstChildhebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,12285,11445,10185,11550,11655,11025,10500}).MaxHealth,0)
					end
					if DeleteMob.ESP.Box.HealthType == hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180}) then
						healthbar.Visible = false
						healthl.Visible = true
					end
					if DeleteMob.ESP.Box.HealthType == hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,10185,11970}) then
						healthl.Visible = false
						healthbar.Visible = true
					end
					if DeleteMob.ESP.Box.HealthType == hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,11655,12180,10920}) then
						healthl.Visible = true
						healthbar.Visible = true
					end
				else
					healthl.Visible = false
					healthbar.Visible = false
				end


				if DeleteMob.ESP.Box.Name then
					namelabel.Visible = true
				else
					namelabel.Visible = false
				end

				
				if DeleteMob.ESP.Box.Distance == true then
					distancel.Visible = true
					if PLAYER.Character and PLAYER.Character:FindFirstChild(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,12285,11445,10185,11550,11655,11025,10500,8610,11655,11655,12180,8400,10185,11970,12180})) ~= nil then
						distancel.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7140,11025,12075,12180,10185,11550,10395,10605,6090,3360})..math.floor(0.5+(PLAYER.Character:FindFirstChildhebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,12285,11445,10185,11550,11655,11025,10500,8610,11655,11655,12180,8400,10185,11970,12180}).Position - player.Character:FindFirstChildhebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,12285,11445,10185,11550,11655,11025,10500,8610,11655,11655,12180,8400,10185,11970,12180}).Position).magnitude)
					end
				else
					distancel.Visible = false
				end


				if DeleteMob.ESP.Box.TeamCheck == true and player.TeamColor == PLAYER.TeamColor then
					bbg.Enabled = false
					info.Enabled = false
					forhealth.Enabled = false
				else
					bbg.Enabled = true
					info.Enabled = true
					forhealth.Enabled = true
				end
				

				if DeleteMob.ESP.Box.TeamColor == true then
					left.BackgroundColor3 = player.TeamColor.Color
					right.BackgroundColor3 = player.TeamColor.Color
					up.BackgroundColor3 = player.TeamColor.Color
					down.BackgroundColor3 = player.TeamColor.Color
					outlines.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
				else
					outlines.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
					left.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
					right.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
					up.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
					down.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
					healthl.TextColor3 = DeleteMob.ESP.Box.BoxColor
					distancel.TextColor3 = DeleteMob.ESP.Box.BoxColor
					namelabel.TextColor3 = DeleteMob.ESP.Box.BoxColor
				end

				if not (game:GetServicehebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8400,11340,10185,12705,10605,11970,12075}):FindFirstChild(player.Name)) then
					BoxC:FindFirstChild(player.Name):Destroy()
					coroutine.yield()
				end
			else
				bbg.Enabled = false
				bbg.Adornee = nil
				info.Adornee = nil
				info.Enabled = false
				forhealth.Adornee = nil
				forhealth.Enabled = false
			end
		end 
	end)
	coroutine.resume(co)
end


local function AddTracers(Player) -- Tracers Without Lib OMG !!!!
	local tracer = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605})) 
	tracer.Parent = TracersG
	tracer.Name = Player.Name
	tracer.Active = false
	tracer.AnchorPoint = Vector2.new(.5, .5)
	tracer.Visible = false

	local co = coroutine.create(function()
		game:GetService(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8610,12285,11550,8715,10605,11970,12390,11025,10395,10605})).RenderStepped:Connect(function()
			if Player ~= PLAYER and Player and Player.Character and Player.Character.FindFirstChild(Player.Character, hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,12285,11445,10185,11550,11655,11025,10500})) and Player.Character.Humanoid.Health > 0 then
				local TargetPart = Player.Character:FindFirstChild(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,12285,11445,10185,11550,11655,11025,10500,8610,11655,11655,12180,8400,10185,11970,12180}))
				local ScreenPoint, OnScreen = CurrentCam:WorldToScreenPoint(TargetPart.Position)
				local distance 
				
				distance = math.floor(0.5+(game.Workspace.CurrentCamera.CFrame.Position - Player.Character:WaitForChild(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,12285,11445,10185,11550,11655,11025,10500,8610,11655,11655,12180,8400,10185,11970,12180})).Position).magnitude)

				local screenpointmain = Vector2.new(ScreenPoint.X, ScreenPoint.Y + (2500 / distance)) --  / distance so it can be at the bottom of the box.
				local posd = UIS:GetMouseLocation()
				local MouseOrigin = Vector2.new(posd.X, posd.Y - 36)
				local Origin = Vector2.new(CurrentCam.ViewportSize.X/2, CurrentCam.ViewportSize.Y - 1)
				local Position = (Origin + screenpointmain) / 2
				local Length = (Origin - screenpointmain).Magnitude
				tracer.Rotation = math.deg(math.atan2(screenpointmain.Y - Origin.Y, screenpointmain.X - Origin.X))


				Position = (Origin + screenpointmain) / 2
				Length = (Origin - screenpointmain).Magnitude
				tracer.Rotation = math.deg(math.atan2(screenpointmain.Y - Origin.Y, screenpointmain.X - Origin.X))


				if OnScreen then
					if DeleteMob.ESP.Tracers.Enabled == true and OnScreen then
						if DeleteMob.ESP.Tracers.TeamCheck == true then
							if Player.TeamColor == PLAYER.TeamColor then
								tracer.Visible = false
							else
								tracer.Visible = true
							end
						else 
							tracer.Visible = true
						end
					else
						tracer.Visible = false
					end

					if DeleteMob.ESP.Tracers.TeamColor == true then
						tracer.BackgroundColor3 = Player.TeamColor.Color
					else
						tracer.BackgroundColor3 = DeleteMob.ESP.Tracers.Color
					end

					tracer.BorderColor3 = Color3.fromRGB(27, 42, 53)
					tracer.Position = UDim2.new(0, Position.X, 0, Position.Y)
					tracer.Size = UDim2.new(0, Length, 0, 2)
				else
					tracer.Visible = false
				end

				if not (game:GetServicehebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8400,11340,10185,12705,10605,11970,12075}):FindFirstChild(Player.Name)) then
					Fov:FindFirstChild(Player.Name):Destroy()
					coroutine.yield()
				end
			else
				tracer.Visible = false
			end
		end)
	end)
	coroutine.resume(co)
end

function isVisible(p, ...)
	
	if not (DeleteMob.Aimbot.WallCheck == true) then
		return true
	end
	
	return #CurrentCam:GetPartsObscuringTarget({ p }, { CurrentCam, PLAYER.Character, ... }) == 0 
end

function CameraGetClosestToMouse(Fov)
	local AimFov = Fov
	local targetPos = nil

	for i,v in pairs (game:GetService(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8400,11340,10185,12705,10605,11970,12075})):GetPlayers()) do
		if v ~= PLAYER then
			if DeleteMob.Aimbot.TeamCheck == true then
				if v.Character and v.Character:FindFirstChild(DeleteMob.Aimbot.AimPart) and v.Character.Humanoid and v.Character.Humanoid.Health > 0 and not (v.Team == PLAYER.Team) then
					local screen_pos, on_screen = WorldToViewportPoint(CurrentCam, v.Character[DeleteMob.Aimbot.AimPart].Position)
					local screen_pos_2D = Vector2.new(screen_pos.X, screen_pos.Y)
					local new_magnitude = (screen_pos_2D - mouseLocation(UIS)).Magnitude
					if on_screen and new_magnitude < AimFov and isVisible(v.Character[DeleteMob.Aimbot.AimPart].Position, v.Character.Head.Parent) then
						AimFov = new_magnitude
						targetPos = v
					end
				end
			else
				if v.Character and v.Character:FindFirstChild(DeleteMob.Aimbot.AimPart) and v.Character.Humanoid and v.Character.Humanoid.Health > 0 then
					local screen_pos, on_screen = WorldToViewportPoint(CurrentCam, v.Character[DeleteMob.Aimbot.AimPart].Position)
					local screen_pos_2D = Vector2.new(screen_pos.X, screen_pos.Y)
					local new_magnitude = (screen_pos_2D - mouseLocation(UIS)).Magnitude
					if on_screen and new_magnitude < AimFov and isVisible(v.Character[DeleteMob.Aimbot.AimPart].Position, v.Character.Head.Parent) then
						AimFov = new_magnitude
						targetPos = v
					end
				end
			end
		end
	end
	return targetPos
end


local function aimAt(pos, smooth)
	local AimPart = pos.Character:FindFirstChild(DeleteMob.Aimbot.AimPart)
	if AimPart then
		local LookAt = nil
		local Distance = math.floor(0.5+(PLAYER.Character:FindFirstChildhebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,12285,11445,10185,11550,11655,11025,10500,8610,11655,11655,12180,8400,10185,11970,12180}).Position - pos.Character:FindFirstChildhebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,12285,11445,10185,11550,11655,11025,10500,8610,11655,11655,12180,8400,10185,11970,12180}).Position).magnitude)
		if Distance > 100  then
			local distChangeBig = Distance / 10
			LookAt = CurrentCam.CFrame:PointToWorldSpace(Vector3.new(0,0,-smooth * distChangeBig)):Lerp(AimPart.Position,.01) -- No one esle do camera smoothing ? tf
		else
			local distChangeSmall = Distance / 10
			LookAt = CurrentCam.CFrame:PointToWorldSpace(Vector3.new(0,0,-smooth * distChangeSmall)):Lerp(AimPart.Position,.01) -- No one esle do camera smoothing ? tf
		end
		CurrentCam.CFrame = CFrame.lookAt(CurrentCam.CFrame.Position, LookAt)
	end
end

-- Cant Be Botherd To Clean This Up
local CheatEngineDeleteMob = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8715,10395,11970,10605,10605,11550,7455,12285,11025}))
local DeleteMobF = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local TextBox = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,11655,12600}))
local Name = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local Line = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local Line_2 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local AimBotSection = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UIListLayout = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7980,11025,12075,12180,7980,10185,12705,11655,12285,12180}))
local ABE = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local ABWC = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local ABTC = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local ABSF = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local Frame = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local Slider3 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UICorner = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7035,11655,11970,11550,10605,11970}))
local Fill1 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UICorner_2 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7035,11655,11970,11550,10605,11970}))
local UIGradient = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7455,11970,10185,10500,11025,10605,11550,12180}))
local TriggerFov = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local Numbers = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local TextLabel = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local Frame_2 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local Slider4 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UICorner_3 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7035,11655,11970,11550,10605,11970}))
local Fill2 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UICorner_4 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7035,11655,11970,11550,10605,11970}))
local UIGradient_2 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7455,11970,10185,10500,11025,10605,11550,12180}))
local TriggerSmoothing = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local Numbers_2 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local TextLabel_2 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local TextLabel_3 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local Allways_Show = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local TextLabel_4 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local ESPSection = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UIListLayout_2 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7980,11025,12075,12180,7980,10185,12705,11655,12285,12180}))
local BBE = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local BTC = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local BBN = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local BBD = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local BBH = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local TextLabel_5 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local BBHT = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local TextLabel_6 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local TextLabel_7 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local Frame_3 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UIListLayout_3 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7980,11025,12075,12180,7980,10185,12705,11655,12285,12180}))
local Box_R = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,11655,12600}))
local Box_G = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,11655,12600}))
local Box_B = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,11655,12600}))
local TextLabel_8 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local ESPSection_2 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UIListLayout_4 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7980,11025,12075,12180,7980,10185,12705,11655,12285,12180}))
local OE = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local OTC = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local Frame_4 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local Slider1 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UICorner_5 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7035,11655,11970,11550,10605,11970}))
local Fill3 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UICorner_6 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7035,11655,11970,11550,10605,11970}))
local UIGradient_3 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7455,11970,10185,10500,11025,10605,11550,12180}))
local TriggerOutTans = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local Numbers_3 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local TextLabel_9 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local Frame_5 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local Slider2 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UICorner_7 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7035,11655,11970,11550,10605,11970}))
local Fill4 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UICorner_8 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7035,11655,11970,11550,10605,11970}))
local UIGradient_4 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7455,11970,10185,10500,11025,10605,11550,12180}))
local TriggerFill = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local Numbers_4 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local TextLabel_10 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local TextLabel_11 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local Frame_6 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UIListLayout_5 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7980,11025,12075,12180,7980,10185,12705,11655,12285,12180}))
local Outlines_R = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,11655,12600}))
local Outlines_G = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,11655,12600}))
local Outlines_B = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,11655,12600}))
local TextLabel_12 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local Frame_7 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UIListLayout_6 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7980,11025,12075,12180,7980,10185,12705,11655,12285,12180}))
local FillOutlines_R = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,11655,12600}))
local FillOutlines_G = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,11655,12600}))
local FillOutlines_B = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,11655,12600}))
local Tracerssection = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UIListLayout_7 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7980,11025,12075,12180,7980,10185,12705,11655,12285,12180}))
local TE = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local TTC = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local TTCOlor = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local Frame_8 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UIListLayout_8 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7980,11025,12075,12180,7980,10185,12705,11655,12285,12180}))
local Tracers_R = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,11655,12600}))
local Tracers_G = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,11655,12600}))
local Tracers_B = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,11655,12600}))
local Unknown = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local UIListLayout_9 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,7665,7980,11025,12075,12180,7980,10185,12705,11655,12285,12180}))
local TextLabel_13 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local TextLabel_14 = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local Open = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11970,10185,11445,10605}))
local TextButton = Instance.new(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))

--Properties:

CheatEngineDeleteMob.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7035,10920,10605,10185,12180,7245,11550,10815,11025,11550,10605,7140,10605,11340,10605,12180,10605,8085,11655,10290})
CheatEngineDeleteMob.Parent = game.Players.LocalPlayer:WaitForChild(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8400,11340,10185,12705,10605,11970,7455,12285,11025}))
CheatEngineDeleteMob.Enabled = true
CheatEngineDeleteMob.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CheatEngineDeleteMob.DisplayOrder = 10
CheatEngineDeleteMob.ResetOnSpawn = false

DeleteMobF.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7140,10605,11340,10605,12180,10605,8085,11655,10290,7350})
DeleteMobF.Parent = CheatEngineDeleteMob
DeleteMobF.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
DeleteMobF.BorderColor3 = Color3.fromRGB(255, 255, 255)
DeleteMobF.Position = UDim2.new(0.144998878, 0, 0.328040659, 0)
DeleteMobF.Size = UDim2.new(0, 1213, 0, 398)
DeleteMobF.ZIndex = 10
DeleteMobF.Draggable = true
DeleteMobF.Active = true


Name.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8190,10185,11445,10605})
Name.Parent = DeleteMobF
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.0178597774, 0, 0.00456260797, 0)
Name.Size = UDim2.new(0, 200, 0, 31)
Name.Font = Enum.Font.Gotham
Name.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11340,12285,12600,12705,3360,7560,12285,10290,3360,4935,3360,6825,11025,11445,10290,11655,12180,3360,3990,3360,7245,8715,8400})
Name.TextColor3 = Color3.fromRGB(255, 0, 255)
Name.TextSize = 19.000

Line.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7980,11025,11550,10605})
Line.Parent = DeleteMobF
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0, 0, 0.0804020092, 0)
Line.Size = UDim2.new(0, 1213, 0, 1)

Line_2.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7980,11025,11550,10605})
Line_2.Parent = DeleteMobF
Line_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line_2.BorderSizePixel = 0
Line_2.Position = UDim2.new(0.205276027, 0, 0.0828348249, 0)
Line_2.Size = UDim2.new(0, 1, 0, 365)

AimBotSection.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6825,11025,11445,6930,11655,12180,8715,10605,10395,12180,11025,11655,11550})
AimBotSection.Parent = DeleteMobF
AimBotSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AimBotSection.BackgroundTransparency = 1.000
AimBotSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
AimBotSection.BorderSizePixel = 0
AimBotSection.Position = UDim2.new(0.0604648069, 0, 0.160724282, 0)
AimBotSection.Size = UDim2.new(0, 100, 0, 334)

UIListLayout.Parent = AimBotSection
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

ABE.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6825,6930,7245})
ABE.Parent = AimBotSection
ABE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
ABE.BorderColor3 = Color3.fromRGB(255, 255, 255)
ABE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
ABE.Size = UDim2.new(0, 164, 0, 29)
ABE.Font = Enum.Font.Gotham
ABE.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7245,11550,10185,10290,11340,10605})
ABE.TextColor3 = Color3.fromRGB(255, 255, 255)
ABE.TextSize = 16.000

ABWC.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6825,6930,9135,7035})
ABWC.Parent = AimBotSection
ABWC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
ABWC.BorderColor3 = Color3.fromRGB(255, 255, 255)
ABWC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
ABWC.Size = UDim2.new(0, 164, 0, 29)
ABWC.Font = Enum.Font.Gotham
ABWC.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({9135,10185,11340,11340,3360,7035,10920,10605,10395,11235})
ABWC.TextColor3 = Color3.fromRGB(255, 255, 255)
ABWC.TextSize = 16.000

ABTC.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6825,6930,8820,7035})
ABTC.Parent = AimBotSection
ABTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
ABTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
ABTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
ABTC.Size = UDim2.new(0, 164, 0, 29)
ABTC.Font = Enum.Font.Gotham
ABTC.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,10185,11445,3360,7035,10920,10605,10395,11235})
ABTC.TextColor3 = Color3.fromRGB(255, 255, 255)
ABTC.TextSize = 16.000

ABSF.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6825,6930,8715,7350})
ABSF.Parent = AimBotSection
ABSF.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
ABSF.BorderColor3 = Color3.fromRGB(255, 255, 255)
ABSF.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
ABSF.Size = UDim2.new(0, 164, 0, 29)
ABSF.Font = Enum.Font.Gotham
ABSF.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8715,10920,11655,12495,3360,7350,11655,12390})
ABSF.TextColor3 = Color3.fromRGB(255, 255, 255)
ABSF.TextSize = 16.000

Frame.Parent = AimBotSection
Frame.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame.BackgroundTransparency = 0.700
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
Frame.Size = UDim2.new(0, 230, 0, 50)

Slider3.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8715,11340,11025,10500,10605,11970,5355})
Slider3.Parent = Frame
Slider3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Slider3.BorderSizePixel = 0
Slider3.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
Slider3.Size = UDim2.new(0, 200, 0, 15)

UICorner.Parent = Slider3

Fill1.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11025,11340,11340,5145})
Fill1.Parent = Slider3
Fill1.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Fill1.BackgroundTransparency = 0.200
Fill1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fill1.BorderSizePixel = 0
Fill1.Size = UDim2.new(0, 100, 0, 15)

UICorner_2.Parent = Fill1

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
UIGradient.Parent = Fill1

TriggerFov.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,11970,11025,10815,10815,10605,11970,7350,11655,12390})
TriggerFov.Parent = Slider3
TriggerFov.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerFov.BackgroundTransparency = 1.000
TriggerFov.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerFov.BorderSizePixel = 0
TriggerFov.Size = UDim2.new(1, 0, 1, 0)
TriggerFov.Font = Enum.Font.SourceSans
TriggerFov.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({})
TriggerFov.TextColor3 = Color3.fromRGB(0, 0, 0)
TriggerFov.TextSize = 14.000

Numbers.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8190,12285,11445,10290,10605,11970,12075})
Numbers.Parent = Frame
Numbers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Numbers.BackgroundTransparency = 1.000
Numbers.BorderColor3 = Color3.fromRGB(255, 255, 255)
Numbers.BorderSizePixel = 0
Numbers.Position = UDim2.new(0.79130435, 0, 0, 0)
Numbers.Size = UDim2.new(0, 50, 0, 23)
Numbers.Font = Enum.Font.Gotham
Numbers.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5355,5565,5040})
Numbers.TextColor3 = Color3.fromRGB(255, 255, 255)
Numbers.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0608695634, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 50, 0, 23)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11655,12390})
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

Frame_2.Parent = AimBotSection
Frame_2.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame_2.BackgroundTransparency = 0.700
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
Frame_2.Size = UDim2.new(0, 230, 0, 50)

Slider4.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8715,11340,11025,10500,10605,11970,5460})
Slider4.Parent = Frame_2
Slider4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Slider4.BorderSizePixel = 0
Slider4.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
Slider4.Size = UDim2.new(0, 200, 0, 15)

UICorner_3.Parent = Slider4

Fill2.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11025,11340,11340,5250})
Fill2.Parent = Slider4
Fill2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Fill2.BackgroundTransparency = 0.200
Fill2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fill2.BorderSizePixel = 0
Fill2.Size = UDim2.new(0, 0, 0, 15)

UICorner_4.Parent = Fill2

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
UIGradient_2.Parent = Fill2

TriggerSmoothing.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,11970,11025,10815,10815,10605,11970,8715,11445,11655,11655,12180,10920,11025,11550,10815})
TriggerSmoothing.Parent = Slider4
TriggerSmoothing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerSmoothing.BackgroundTransparency = 1.000
TriggerSmoothing.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerSmoothing.BorderSizePixel = 0
TriggerSmoothing.Size = UDim2.new(1, 0, 1, 0)
TriggerSmoothing.Font = Enum.Font.SourceSans
TriggerSmoothing.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({})
TriggerSmoothing.TextColor3 = Color3.fromRGB(0, 0, 0)
TriggerSmoothing.TextSize = 14.000

Numbers_2.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8190,12285,11445,10290,10605,11970,12075})
Numbers_2.Parent = Frame_2
Numbers_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Numbers_2.BackgroundTransparency = 1.000
Numbers_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
Numbers_2.BorderSizePixel = 0
Numbers_2.Position = UDim2.new(0.79130435, 0, 0, 0)
Numbers_2.Size = UDim2.new(0, 50, 0, 23)
Numbers_2.Font = Enum.Font.Gotham
Numbers_2.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5040})
Numbers_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Numbers_2.TextSize = 14.000

TextLabel_2.Parent = Frame_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0608695634, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0, 50, 0, 23)
TextLabel_2.Font = Enum.Font.Gotham
TextLabel_2.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8715,11445,11655,11655,12180,10920,11025,11550,10815})
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000

TextLabel_3.Parent = AimBotSection
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
TextLabel_3.Size = UDim2.new(0, 100, 0, 17)
TextLabel_3.Font = Enum.Font.Gotham
TextLabel_3.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6825,11025,11445,3360,8400,10185,11970,12180})
TextLabel_3.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_3.TextSize = 21.000

Allways_Show.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6825,11340,11340,12495,10185,12705,12075,9975,8715,10920,11655,12495})
Allways_Show.Parent = AimBotSection
Allways_Show.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Allways_Show.BorderColor3 = Color3.fromRGB(255, 255, 255)
Allways_Show.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
Allways_Show.Size = UDim2.new(0, 164, 0, 29)
Allways_Show.Font = Enum.Font.Gotham
Allways_Show.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,7245,6825,7140,4620,3360,12180,11655,11970,12075,11655})
Allways_Show.TextColor3 = Color3.fromRGB(255, 255, 255)
Allways_Show.TextSize = 16.000

TextLabel_4.Parent = DeleteMobF
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.00569662312, 0, 0.100655407, 0)
TextLabel_4.Size = UDim2.new(0, 100, 0, 17)
TextLabel_4.Font = Enum.Font.Gotham
TextLabel_4.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6825,11025,11445,3360,6930,11655,12180})
TextLabel_4.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_4.TextSize = 18.000
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

ESPSection.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7245,8715,8400,8715,10605,10395,12180,11025,11655,11550})
ESPSection.Parent = DeleteMobF
ESPSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPSection.BackgroundTransparency = 1.000
ESPSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPSection.BorderSizePixel = 0
ESPSection.Position = UDim2.new(0.26986298, 0, 0.160724282, 0)
ESPSection.Size = UDim2.new(0, 100, 0, 334)

UIListLayout_2.Parent = ESPSection
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

BBE.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,6930,7245})
BBE.Parent = ESPSection
BBE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
BBE.BorderColor3 = Color3.fromRGB(255, 255, 255)
BBE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
BBE.Size = UDim2.new(0, 164, 0, 29)
BBE.Font = Enum.Font.Gotham
BBE.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,11655,12600})
BBE.TextColor3 = Color3.fromRGB(255, 255, 255)
BBE.TextSize = 16.000

BBN.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,6930,8190})
BBN.Parent = ESPSection
BBN.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
BBN.BorderColor3 = Color3.fromRGB(255, 255, 255)
BBN.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
BBN.Size = UDim2.new(0, 164, 0, 29)
BBN.Font = Enum.Font.Gotham
BBN.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8190,10185,11445,10605})
BBN.TextColor3 = Color3.fromRGB(255, 255, 255)
BBN.TextSize = 16.000

BBD.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,6930,7140})
BBD.Parent = ESPSection
BBD.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
BBD.BorderColor3 = Color3.fromRGB(255, 255, 255)
BBD.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
BBD.Size = UDim2.new(0, 164, 0, 29)
BBD.Font = Enum.Font.Gotham
BBD.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7140,11025,12075,12180,10185,11550,10395,10605})
BBD.TextColor3 = Color3.fromRGB(255, 255, 255)
BBD.TextSize = 16.000

BBH.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,6930,7560})
BBH.Parent = ESPSection
BBH.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
BBH.BorderColor3 = Color3.fromRGB(255, 255, 255)
BBH.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
BBH.Size = UDim2.new(0, 164, 0, 29)
BBH.Font = Enum.Font.Gotham
BBH.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,10605,10185,11340,12180,10920})
BBH.TextColor3 = Color3.fromRGB(255, 255, 255)
BBH.TextSize = 16.000

BTC.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,6930,7245})
BTC.Parent = ESPSection
BTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
BTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
BTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
BTC.Size = UDim2.new(0, 164, 0, 29)
BTC.Font = Enum.Font.Gotham
BTC.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,10185,11445,3360,7035,10920,10605,10395,11235})
BTC.TextColor3 = Color3.fromRGB(255, 255, 255)
BTC.TextSize = 16.000

TextLabel_5.Parent = ESPSection
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
TextLabel_5.Size = UDim2.new(0, 100, 0, 17)
TextLabel_5.Font = Enum.Font.Gotham
TextLabel_5.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,10605,10185,11340,12180,10920,3360,8820,12705,11760,10605})
TextLabel_5.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_5.TextSize = 21.000

BBHT.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,6930,7560,8820})
BBHT.Parent = ESPSection
BBHT.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
BBHT.BorderColor3 = Color3.fromRGB(255, 255, 255)
BBHT.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
BBHT.Size = UDim2.new(0, 164, 0, 29)
BBHT.Font = Enum.Font.Gotham
BBHT.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,6825,8610,4620,3360,12180,10605,12600,12180,4620,3360,10290,11655,12180,10920})
BBHT.TextColor3 = Color3.fromRGB(255, 255, 255)
BBHT.TextSize = 16.000

TextLabel_6.Parent = ESPSection
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
TextLabel_6.Size = UDim2.new(0, 100, 0, 17)
TextLabel_6.Font = Enum.Font.Gotham
TextLabel_6.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,11655,12600,3360,7035,11655,11340,11655,11970})
TextLabel_6.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_6.TextSize = 21.000

TextLabel_7.Parent = ESPSection
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
TextLabel_7.Size = UDim2.new(0, 100, 0, 17)
TextLabel_7.Font = Enum.Font.Gotham
TextLabel_7.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8610,4620,7455,4620,6930})
TextLabel_7.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_7.TextSize = 21.000

Frame_3.Parent = ESPSection
Frame_3.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
Frame_3.Size = UDim2.new(0, 100, 0, 30)

UIListLayout_3.Parent = Frame_3
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_3.Padding = UDim.new(0, 5)

Box_R.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,11655,12600,9975,8610})
Box_R.Parent = Frame_3
Box_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Box_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
Box_R.Size = UDim2.new(0, 75, 0, 24)
Box_R.ClearTextOnFocus = false
Box_R.Font = Enum.Font.Gotham
Box_R.PlaceholderText = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565,3360,4725,3360,5040})
Box_R.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5775,5565})
Box_R.TextColor3 = Color3.fromRGB(255, 255, 255)
Box_R.TextSize = 14.000

Box_G.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,11655,12600,9975,7455})
Box_G.Parent = Frame_3
Box_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Box_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
Box_G.Size = UDim2.new(0, 75, 0, 24)
Box_G.ClearTextOnFocus = false
Box_G.Font = Enum.Font.Gotham
Box_G.PlaceholderText = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565,3360,4725,3360,5040})
Box_G.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5040}) 
Box_G.TextColor3 = Color3.fromRGB(255, 255, 255)
Box_G.TextSize = 14.000

Box_B.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,11655,12600,9975,6930})
Box_B.Parent = Frame_3
Box_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Box_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
Box_B.Size = UDim2.new(0, 75, 0, 24)
Box_B.ClearTextOnFocus = false
Box_B.Font = Enum.Font.Gotham
Box_B.PlaceholderText = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565,3360,4725,3360,5040})
Box_B.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5145,5040})
Box_B.TextColor3 = Color3.fromRGB(255, 255, 255)
Box_B.TextSize = 14.000

TextLabel_8.Parent = DeleteMobF
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.215919182, 0, 0.100655407, 0)
TextLabel_8.Size = UDim2.new(0, 100, 0, 17)
TextLabel_8.Font = Enum.Font.Gotham
TextLabel_8.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7245,8715,8400})
TextLabel_8.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_8.TextSize = 18.000
TextLabel_8.TextXAlignment = Enum.TextXAlignment.Left

ESPSection_2.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7245,8715,8400,8715,10605,10395,12180,11025,11655,11550})
ESPSection_2.Parent = DeleteMobF
ESPSection_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPSection_2.BackgroundTransparency = 1.000
ESPSection_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPSection_2.BorderSizePixel = 0
ESPSection_2.Position = UDim2.new(0.475963563, 0, 0.160724282, 0)
ESPSection_2.Size = UDim2.new(0, 100, 0, 334)

UIListLayout_4.Parent = ESPSection_2
UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_4.Padding = UDim.new(0, 5)

OE.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8295,7245})
OE.Parent = ESPSection_2
OE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
OE.BorderColor3 = Color3.fromRGB(255, 255, 255)
OE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
OE.Size = UDim2.new(0, 164, 0, 29)
OE.Font = Enum.Font.Gotham
OE.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8295,12285,12180,11340,11025,11550,10605,12075})
OE.TextColor3 = Color3.fromRGB(255, 255, 255)
OE.TextSize = 16.000

OTC.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8295,8820,7035})
OTC.Parent = ESPSection_2
OTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
OTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
OTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
OTC.Size = UDim2.new(0, 164, 0, 29)
OTC.Font = Enum.Font.Gotham
OTC.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,10185,11445,3360,7035,10920,10605,10395,11235})
OTC.TextColor3 = Color3.fromRGB(255, 255, 255)
OTC.TextSize = 16.000

Frame_4.Parent = ESPSection_2
Frame_4.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame_4.BackgroundTransparency = 0.700
Frame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
Frame_4.Size = UDim2.new(0, 230, 0, 50)

Slider1.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8715,11340,11025,10500,10605,11970,5145})
Slider1.Parent = Frame_4
Slider1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Slider1.BorderSizePixel = 0
Slider1.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
Slider1.Size = UDim2.new(0, 200, 0, 15)

UICorner_5.Parent = Slider1

Fill3.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11025,11340,11340,5355})
Fill3.Parent = Slider1
Fill3.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Fill3.BackgroundTransparency = 0.200
Fill3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fill3.BorderSizePixel = 0
Fill3.Size = UDim2.new(0, 100, 0, 15)

UICorner_6.Parent = Fill3

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
UIGradient_3.Parent = Fill3

TriggerOutTans.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,11970,11025,10815,10815,10605,11970,8295,12285,12180,8820,10185,11550,12075})
TriggerOutTans.Parent = Slider1
TriggerOutTans.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerOutTans.BackgroundTransparency = 1.000
TriggerOutTans.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerOutTans.BorderSizePixel = 0
TriggerOutTans.Size = UDim2.new(1, 0, 1, 0)
TriggerOutTans.Font = Enum.Font.SourceSans
TriggerOutTans.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({})
TriggerOutTans.TextColor3 = Color3.fromRGB(0, 0, 0)
TriggerOutTans.TextSize = 14.000

Numbers_3.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8190,12285,11445,10290,10605,11970,12075})
Numbers_3.Parent = Frame_4
Numbers_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Numbers_3.BackgroundTransparency = 1.000
Numbers_3.BorderColor3 = Color3.fromRGB(255, 255, 255)
Numbers_3.BorderSizePixel = 0
Numbers_3.Position = UDim2.new(0.79130435, 0, 0, 0)
Numbers_3.Size = UDim2.new(0, 50, 0, 23)
Numbers_3.Font = Enum.Font.Gotham
Numbers_3.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5565,5040})
Numbers_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Numbers_3.TextSize = 14.000

TextLabel_9.Parent = Frame_4
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0.0608695634, 0, 0, 0)
TextLabel_9.Size = UDim2.new(0, 125, 0, 23)
TextLabel_9.Font = Enum.Font.Gotham
TextLabel_9.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8295,12285,12180,11340,11025,11550,10605,12075,3360,8820,11970,10185,11550,12075,11760,10185,11970,10605,11550,10395,12705})
TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.TextSize = 14.000

Frame_5.Parent = ESPSection_2
Frame_5.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame_5.BackgroundTransparency = 0.700
Frame_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_5.BorderSizePixel = 0
Frame_5.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
Frame_5.Size = UDim2.new(0, 230, 0, 50)

Slider2.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8715,11340,11025,10500,10605,11970,5250})
Slider2.Parent = Frame_5
Slider2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slider2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Slider2.BorderSizePixel = 0
Slider2.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
Slider2.Size = UDim2.new(0, 200, 0, 15)

UICorner_7.Parent = Slider2

Fill4.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11025,11340,11340,5460})
Fill4.Parent = Slider2
Fill4.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Fill4.BackgroundTransparency = 0.200
Fill4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fill4.BorderSizePixel = 0
Fill4.Size = UDim2.new(0, 100, 0, 15)

UICorner_8.Parent = Fill4

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
UIGradient_4.Parent = Fill4

TriggerFill.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,11970,11025,10815,10815,10605,11970,7350,11025,11340,11340})
TriggerFill.Parent = Slider2
TriggerFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerFill.BackgroundTransparency = 1.000
TriggerFill.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerFill.BorderSizePixel = 0
TriggerFill.Size = UDim2.new(1, 0, 1, 0)
TriggerFill.Font = Enum.Font.SourceSans
TriggerFill.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({})
TriggerFill.TextColor3 = Color3.fromRGB(0, 0, 0)
TriggerFill.TextSize = 14.000

Numbers_4.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8190,12285,11445,10290,10605,11970,12075})
Numbers_4.Parent = Frame_5
Numbers_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Numbers_4.BackgroundTransparency = 1.000
Numbers_4.BorderColor3 = Color3.fromRGB(255, 255, 255)
Numbers_4.BorderSizePixel = 0
Numbers_4.Position = UDim2.new(0.79130435, 0, 0, 0)
Numbers_4.Size = UDim2.new(0, 50, 0, 23)
Numbers_4.Font = Enum.Font.Gotham
Numbers_4.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5565,5040})
Numbers_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Numbers_4.TextSize = 14.000

TextLabel_10.Parent = Frame_5
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0.104347825, 0, 0, 0)
TextLabel_10.Size = UDim2.new(0, 133, 0, 23)
TextLabel_10.Font = Enum.Font.Gotham
TextLabel_10.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11025,11340,11340,3360,8295,12285,12180,11340,11025,11550,10605,12075,3360,8820,11970,10185,11550,12075,11760,10185,11970,10605,11550,10395,12705})
TextLabel_10.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.TextSize = 14.000

TextLabel_11.Parent = ESPSection_2
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
TextLabel_11.Size = UDim2.new(0, 100, 0, 17)
TextLabel_11.Font = Enum.Font.Gotham
TextLabel_11.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8295,12285,12180,11340,11025,11550,10605,12075})
TextLabel_11.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_11.TextSize = 21.000

Frame_6.Parent = ESPSection_2
Frame_6.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_6.BorderSizePixel = 0
Frame_6.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
Frame_6.Size = UDim2.new(0, 100, 0, 30)

UIListLayout_5.Parent = Frame_6
UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_5.Padding = UDim.new(0, 5)

Outlines_R.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8295,12285,12180,11340,11025,11550,10605,12075,9975,8610})
Outlines_R.Parent = Frame_6
Outlines_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Outlines_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
Outlines_R.Size = UDim2.new(0, 75, 0, 24)
Outlines_R.ClearTextOnFocus = false
Outlines_R.Font = Enum.Font.Gotham
Outlines_R.PlaceholderText = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565,3360,4725,3360,5040})
Outlines_R.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565})
Outlines_R.TextColor3 = Color3.fromRGB(255, 255, 255)
Outlines_R.TextSize = 14.000

Outlines_G.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8295,12285,12180,11340,11025,11550,10605,12075,9975,7455})
Outlines_G.Parent = Frame_6
Outlines_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Outlines_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
Outlines_G.Size = UDim2.new(0, 75, 0, 24)
Outlines_G.ClearTextOnFocus = false
Outlines_G.Font = Enum.Font.Gotham
Outlines_G.PlaceholderText = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565,3360,4725,3360,5040})
Outlines_G.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565})
Outlines_G.TextColor3 = Color3.fromRGB(255, 255, 255)
Outlines_G.TextSize = 14.000

Outlines_B.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8295,12285,12180,11340,11025,11550,10605,12075,9975,6930})
Outlines_B.Parent = Frame_6
Outlines_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Outlines_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
Outlines_B.Size = UDim2.new(0, 75, 0, 24)
Outlines_B.ClearTextOnFocus = false
Outlines_B.Font = Enum.Font.Gotham
Outlines_B.PlaceholderText = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565,3360,4725,3360,5040})
Outlines_B.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565})
Outlines_B.TextColor3 = Color3.fromRGB(255, 255, 255)
Outlines_B.TextSize = 14.000

TextLabel_12.Parent = ESPSection_2
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_12.BorderSizePixel = 0
TextLabel_12.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
TextLabel_12.Size = UDim2.new(0, 100, 0, 17)
TextLabel_12.Font = Enum.Font.Gotham
TextLabel_12.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11025,11340,11340,3360,8295,12285,12180,11340,11025,11550,10605,12075})
TextLabel_12.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_12.TextSize = 21.000

Frame_7.Parent = ESPSection_2
Frame_7.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_7.BorderSizePixel = 0
Frame_7.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
Frame_7.Size = UDim2.new(0, 100, 0, 30)

UIListLayout_6.Parent = Frame_7
UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_6.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_6.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_6.Padding = UDim.new(0, 5)

FillOutlines_R.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11025,11340,11340,8295,12285,12180,11340,11025,11550,10605,12075,9975,8610})
FillOutlines_R.Parent = Frame_7
FillOutlines_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
FillOutlines_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
FillOutlines_R.Size = UDim2.new(0, 75, 0, 24)
FillOutlines_R.ClearTextOnFocus = false
FillOutlines_R.Font = Enum.Font.Gotham
FillOutlines_R.PlaceholderText = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565,3360,4725,3360,5040})
FillOutlines_R.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565})
FillOutlines_R.TextColor3 = Color3.fromRGB(255, 255, 255)
FillOutlines_R.TextSize = 14.000

FillOutlines_G.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11025,11340,11340,8295,12285,12180,11340,11025,11550,10605,12075,9975,7455})
FillOutlines_G.Parent = Frame_7
FillOutlines_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
FillOutlines_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
FillOutlines_G.Size = UDim2.new(0, 75, 0, 24)
FillOutlines_G.ClearTextOnFocus = false
FillOutlines_G.Font = Enum.Font.Gotham
FillOutlines_G.PlaceholderText = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565,3360,4725,3360,5040})
FillOutlines_G.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565})
FillOutlines_G.TextColor3 = Color3.fromRGB(255, 255, 255)
FillOutlines_G.TextSize = 14.000

FillOutlines_B.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7350,11025,11340,11340,8295,12285,12180,11340,11025,11550,10605,12075,9975,6930})
FillOutlines_B.Parent = Frame_7
FillOutlines_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
FillOutlines_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
FillOutlines_B.Size = UDim2.new(0, 75, 0, 24)
FillOutlines_B.ClearTextOnFocus = false
FillOutlines_B.Font = Enum.Font.Gotham
FillOutlines_B.PlaceholderText = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565,3360,4725,3360,5040})
FillOutlines_B.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565})
FillOutlines_B.TextColor3 = Color3.fromRGB(255, 255, 255)
FillOutlines_B.TextSize = 14.000

Tracerssection.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,11970,10185,10395,10605,11970,12075,3360,12075,10605,10395,12180,11025,11655,11550})
Tracerssection.Parent = DeleteMobF
Tracerssection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tracerssection.BackgroundTransparency = 1.000
Tracerssection.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tracerssection.BorderSizePixel = 0
Tracerssection.Position = UDim2.new(0.682779849, 0, 0.158000082, 0)
Tracerssection.Size = UDim2.new(0, 100, 0, 334)

UIListLayout_7.Parent = Tracerssection
UIListLayout_7.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_7.Padding = UDim.new(0, 5)

TE.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,7245})
TE.Parent = Tracerssection
TE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
TE.BorderColor3 = Color3.fromRGB(255, 255, 255)
TE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
TE.Size = UDim2.new(0, 164, 0, 29)
TE.Font = Enum.Font.Gotham
TE.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,11970,10185,10395,10605,11970,12075})
TE.TextColor3 = Color3.fromRGB(255, 255, 255)
TE.TextSize = 16.000

TTC.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,8820,7035})
TTC.Parent = Tracerssection
TTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
TTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
TTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
TTC.Size = UDim2.new(0, 164, 0, 29)
TTC.Font = Enum.Font.Gotham
TTC.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,10185,11445,3360,7035,10920,10605,10395,11235})
TTC.TextColor3 = Color3.fromRGB(255, 255, 255)
TTC.TextSize = 16.000

TTCOlor.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,8820,7035,8295,11340,11655,11970})
TTCOlor.Parent = Tracerssection
TTCOlor.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
TTCOlor.BorderColor3 = Color3.fromRGB(255, 255, 255)
TTCOlor.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
TTCOlor.Size = UDim2.new(0, 164, 0, 29)
TTCOlor.Font = Enum.Font.Gotham
TTCOlor.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,10185,11445,3360,7035,11655,11340,11655,11970})
TTCOlor.TextColor3 = Color3.fromRGB(255, 255, 255)
TTCOlor.TextSize = 16.000

Frame_8.Parent = Tracerssection
Frame_8.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_8.BorderSizePixel = 0
Frame_8.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
Frame_8.Size = UDim2.new(0, 100, 0, 40)

UIListLayout_8.Parent = Frame_8
UIListLayout_8.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_8.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_8.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_8.Padding = UDim.new(0, 5)

Tracers_R.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,11970,10185,10395,10605,11970,12075,9975,8610})
Tracers_R.Parent = Frame_8
Tracers_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Tracers_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
Tracers_R.Size = UDim2.new(0, 75, 0, 24)
Tracers_R.ClearTextOnFocus = false
Tracers_R.Font = Enum.Font.Gotham
Tracers_R.PlaceholderText = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565,3360,4725,3360,5040})
Tracers_R.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5775,5565}) 
Tracers_R.TextColor3 = Color3.fromRGB(255, 255, 255)
Tracers_R.TextSize = 14.000

Tracers_G.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,11970,10185,10395,10605,11970,12075,9975,7455})
Tracers_G.Parent = Frame_8
Tracers_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Tracers_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
Tracers_G.Size = UDim2.new(0, 75, 0, 24)
Tracers_G.ClearTextOnFocus = false
Tracers_G.Font = Enum.Font.Gotham
Tracers_G.PlaceholderText = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565,3360,4725,3360,5040})
Tracers_G.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5040})
Tracers_G.TextColor3 = Color3.fromRGB(255, 255, 255)
Tracers_G.TextSize = 14.000

Tracers_B.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,11970,10185,10395,10605,11970,12075,9975,6930})
Tracers_B.Parent = Frame_8
Tracers_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Tracers_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
Tracers_B.Size = UDim2.new(0, 75, 0, 24)
Tracers_B.ClearTextOnFocus = false
Tracers_B.Font = Enum.Font.Gotham
Tracers_B.PlaceholderText = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5250,5565,5565,3360,4725,3360,5040})
Tracers_B.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({5145,5040})
Tracers_B.TextColor3 = Color3.fromRGB(255, 255, 255)
Tracers_B.TextSize = 14.000

Unknown.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,11550,11235,11550,11655,12495,11550})
Unknown.Parent = DeleteMobF
Unknown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Unknown.BackgroundTransparency = 1.000
Unknown.BorderColor3 = Color3.fromRGB(0, 0, 0)
Unknown.BorderSizePixel = 0
Unknown.Position = UDim2.new(0.882285178, 0, 0.158000082, 0)
Unknown.Size = UDim2.new(0, 100, 0, 334)

UIListLayout_9.Parent = Unknown
UIListLayout_9.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_9.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_9.Padding = UDim.new(0, 5)

TextLabel_13.Parent = Unknown
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
TextLabel_13.Size = UDim2.new(0, 100, 0, 17)
TextLabel_13.Font = Enum.Font.Gotham
TextLabel_13.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8085,11655,11970,10605,3360,8295,11760,12180,11025,11655,11550,12075})
TextLabel_13.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_13.TextSize = 21.000

TextLabel_14.Parent = Unknown
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1.000
TextLabel_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Position = UDim2.new(0.215919182, 0, 0.100655407, 0)
TextLabel_14.Size = UDim2.new(0, 100, 0, 17)
TextLabel_14.Font = Enum.Font.Gotham
TextLabel_14.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7980,10185,12180,10605,11970})
TextLabel_14.TextColor3 = Color3.fromRGB(17, 223, 255)
TextLabel_14.TextSize = 18.000

Open.Name = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8295,11760,10605,11550})
Open.Parent = CheatEngineDeleteMob
Open.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
Open.BorderColor3 = Color3.fromRGB(255, 255, 255)
Open.Position = UDim2.new(0.5, 0, 0.0199999996, 0)
Open.Size = UDim2.new(0, 150, 0, 50)
Open.ZIndex = 10
Open.Visible = DeleteMob.GUi.OpenNCloseButton
Open.Draggable = true
Open.Active = true

TextButton.Parent = Open
TextButton.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0, 0, 0.319999933, 0)
TextButton.Size = UDim2.new(0, 150, 0, 34)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({11655,11760,10605,11550,3360,4935,3360,7035,11340,11655,12075,10605})
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

PLAYER:GetMouse().KeyDown:Connect(function(KeyPressed) -- What The Fuck
	if KeyPressed == (DeleteMob.GUi.Keybind) and DeleteMob.GUi.KeybindEnable then
        if DeleteMobF.Visible == true then
            DeleteMobF.Visible = false
        else
            DeleteMobF.Visible = true
        end
    end
    if KeyPressed == (DeleteMob.Aimbot.Keybind) and DeleteMob.Aimbot.Enabled then
        DeleteMob.Aimbot.IsAimKeyDown = true
    end
end)
PLAYER:GetMouse().KeyUp:Connect(function(KeyPressed) 
    if KeyPressed == (DeleteMob.Aimbot.Keybind) and DeleteMob.Aimbot.Enabled then
        DeleteMob.Aimbot.IsAimKeyDown = false
    end
end)

PLAYER:GetMouse().Button1Down:Connect(function()
    if DeleteMob.Aimbot.Keybind == hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8085,11655,12285,12075,10605,6930,12285,12180,12180,11655,11550,5145}) and DeleteMob.Aimbot.Enabled then
        DeleteMob.Aimbot.IsAimKeyDown = true
    end
end)
PLAYER:GetMouse().Button1Up:Connect(function()
    if DeleteMob.Aimbot.Keybind == hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8085,11655,12285,12075,10605,6930,12285,12180,12180,11655,11550,5145}) and DeleteMob.Aimbot.Enabled then
        DeleteMob.Aimbot.IsAimKeyDown = false
    end
end)
PLAYER:GetMouse().Button2Down:Connect(function()
    if DeleteMob.Aimbot.Keybind == hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8085,11655,12285,12075,10605,6930,12285,12180,12180,11655,11550,5250}) and DeleteMob.Aimbot.Enabled then
        DeleteMob.Aimbot.IsAimKeyDown = true
    end
end)
PLAYER:GetMouse().Button2Up:Connect(function()
    if DeleteMob.Aimbot.Keybind == hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8085,11655,12285,12075,10605,6930,12285,12180,12180,11655,11550,5250}) and DeleteMob.Aimbot.Enabled then
        DeleteMob.Aimbot.IsAimKeyDown = false
    end
end)


ABE.MouseButton1Click:Connect(function()
	if ABE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		ABE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.Aimbot.Enabled = true
	else
		ABE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.Aimbot.Enabled = false	
	end
end)

ABSF.MouseButton1Click:Connect(function()
	if ABSF.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		ABSF.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.Aimbot.ShowFov = true
	else
		ABSF.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.Aimbot.ShowFov = false	
	end
end)

ABTC.MouseButton1Click:Connect(function()
	if ABTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		ABTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.Aimbot.TeamCheck = true
	else
		ABTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.Aimbot.TeamCheck = false	
	end
end)

ABWC.MouseButton1Click:Connect(function()
	if ABWC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		ABWC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.Aimbot.WallCheck = true
	else
		ABWC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.Aimbot.WallCheck = false	
	end
end)

Allways_Show.MouseButton1Click:Connect(function()
	if DeleteMob.Aimbot.AimPart == hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,10605,10185,10500}) then
		Allways_Show.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({10920,10605,10185,10500,4620,3360,8820,8295,8610,8715,8295})
		DeleteMob.Aimbot.AimPart = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,12285,11445,10185,11550,11655,11025,10500,8610,11655,11655,12180,8400,10185,11970,12180})
	else
		Allways_Show.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,7245,6825,7140,4620,3360,12180,11655,11970,12075,11655})
		DeleteMob.Aimbot.AimPart = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({7560,10605,10185,10500})
	end
end)

-- Box ESP

BBD.MouseButton1Click:Connect(function()
	if BBD.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		BBD.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.Box.Distance = true
	else
		BBD.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.Box.Distance = false	
	end
end)

BBE.MouseButton1Click:Connect(function()
	if BBE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		BBE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.Box.Box = true
	else
		BBE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.Box.Box = false	
	end
end)

BBH.MouseButton1Click:Connect(function()
	if BBH.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		BBH.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.Box.Health = true
	else
		BBH.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.Box.Health = false	
	end
end)
function uUAxaHoYHhcongzRPqcJyBWkuPVOmvz(code)res=''for i in ipairs(code)do res=res..string.char(code[i]/105)end return res end 


game:GetService(uUAxaHoYHhcongzRPqcJyBWkuPVOmvz({8715,12180,10185,11970,12180,10605,11970,7455,12285,11025})):SetCore(uUAxaHoYHhcongzRPqcJyBWkuPVOmvz({8715,10605,11550,10500,8190,11655,12180,11025,10710,11025,10395,10185,12180,11025,11655,11550}), {Title = uUAxaHoYHhcongzRPqcJyBWkuPVOmvz({7350,11340,12285,12600,12705,3360,7560,12285,10290}), Text = uUAxaHoYHhcongzRPqcJyBWkuPVOmvz({7245,11550,11130,11655,12705,3465}), Duration = 7, Icon = uUAxaHoYHhcongzRPqcJyBWkuPVOmvz({11970,10290,12600,12180,10920,12285,11445,10290,6090,4935,4935,12180,12705,11760,10605,6405,6825,12075,12075,10605,12180,3990,11025,10500,6405,5145,5460,5775,5460,5880,5250,5670,5985,5355,5565,5250,3990,12495,6405,5145,5565,5040,3990,10920,6405,5145,5565,5040})})
BBHT.MouseButton1Click:Connect(function()
	if DeleteMob.ESP.Box.HealthType == hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,10185,11970}) then
		BBHT.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({10290,10185,11970,4620,3360,8820,7245,9240,8820,4620,3360,10290,11655,12180,10920})
		DeleteMob.ESP.Box.HealthType = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180})
	elseif DeleteMob.ESP.Box.HealthType == hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,10605,12600,12180}) then
		BBHT.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({10290,10185,11970,4620,3360,12180,10605,12600,12180,4620,3360,6930,8295,8820,7560})
		DeleteMob.ESP.Box.HealthType = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,11655,12180,10920})
	elseif DeleteMob.ESP.Box.HealthType == hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,11655,12180,10920}) then
		BBHT.Text = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,6825,8610,4620,3360,12180,10605,12600,12180,4620,3360,10290,11655,12180,10920})
		DeleteMob.ESP.Box.HealthType = hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({6930,10185,11970})
	end
end)

BBN.MouseButton1Click:Connect(function()
	if BBN.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		BBN.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.Box.Name = true
	else
		BBN.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.Box.Name = false	
	end
end)

BTC.MouseButton1Click:Connect(function()
	if BTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		BTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.Box.TeamCheck = true
	else
		BTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.Box.TeamCheck = false	
	end
end)
-- Outlines

OE.MouseButton1Click:Connect(function()
	if OE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		OE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.OutLines.Enabled = true
	else
		OE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.OutLines.Enabled = false	
	end
end)

OTC.MouseButton1Click:Connect(function()
	if OTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		OTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.OutLines.TeamCheck = true
	else
		OTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.OutLines.TeamCheck = false	
	end
end)

-- Tracers

TE.MouseButton1Click:Connect(function()
	if TE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		TE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.Tracers.Enabled = true
	else
		TE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.Tracers.Enabled = false	
	end
end)

TTC.MouseButton1Click:Connect(function()
	if TTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		TTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.Tracers.TeamCheck = true
	else
		TTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.Tracers.TeamCheck = false	
	end
end)

TTCOlor.MouseButton1Click:Connect(function()
	if TTCOlor.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
		TTCOlor.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
		DeleteMob.ESP.Tracers.TeamColor = true
	else
		TTCOlor.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
		DeleteMob.ESP.Tracers.TeamColor = false	
	end
end)

-- UI Toggle

TextButton.MouseButton1Click:Connect(function()
	if DeleteMobF.Visible == true then
		DeleteMobF.Visible = false
	else
		DeleteMobF.Visible = true
	end
end)


-- Scripts:

local function LDTZWMY_fake_script() -- Slider3.Script1 
	local Mouse = game.Players.LocalPlayer:GetMouse()
	local Slider = Slider3
	local Fill = Fill1
	local Trigger = TriggerFov
	local TextNumbers = Numbers
	
	local maxvalue = 7 or 700/700
	local startingvalue = 0 or 0/100
	
	Fill.Size = UDim2.fromScale(DeleteMob.Aimbot.Fov,1)
	TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Fov*100))
	
	local TweenService = game:GetService(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,12495,10605,10605,11550,8715,10605,11970,12390,11025,10395,10605}))
	local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
	
	local function UpdateSlider()
		local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
		
		if DeleteMob.Aimbot.Fov ~= OutPut then
			TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
		end
		
		DeleteMob.Aimbot.Fov = (startingvalue +(OutPut*(maxvalue-startingvalue)))*100
		TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Fov*100))
	end
	
	Fill:GetPropertyChangedSignal(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8715,11025,12810,10605})):Connect(function()
		TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Fov*100))
	end)
	
	local SliderActive = false
	
	local function ActivateSlider()
		SliderActive = true
		while SliderActive do
			UpdateSlider()
			task.wait()
		end
	end
	
	Trigger.MouseButton1Down:Connect(ActivateSlider)
	
	game:GetService(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,12075,10605,11970,7665,11550,11760,12285,12180,8715,10605,11970,12390,11025,10395,10605})).InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			SliderActive = false
		end
	end)
end
coroutine.wrap(LDTZWMY_fake_script)()

local function YEOE_fake_script() -- Slider4.Script2 
	local Mouse = game.Players.LocalPlayer:GetMouse()
	local Slider = Slider4
	local Fill = Fill2
	local Trigger = TriggerSmoothing
	local TextNumbers = Numbers_2
	
	local maxvalue = 3 or 30/30
	local startingvalue = 0 or 0/100
	
	Fill.Size = UDim2.fromScale(DeleteMob.Aimbot.Smoothing,1)
	TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Smoothing*100))
	
	local TweenService = game:GetService(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,12495,10605,10605,11550,8715,10605,11970,12390,11025,10395,10605}))
	local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
	
	local function UpdateSlider()
		local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
		
		if DeleteMob.Aimbot.Smoothing ~= OutPut then
			TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
		end
		
		DeleteMob.Aimbot.Smoothing = startingvalue +(OutPut*(maxvalue-startingvalue))
		TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Smoothing*100))
	end
	
	Fill:GetPropertyChangedSignal(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8715,11025,12810,10605})):Connect(function()
		TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Smoothing*100))
	end)
	
	local SliderActive = false
	
	local function ActivateSlider()
		SliderActive = true
		while SliderActive do
			UpdateSlider()
			task.wait()
		end
	end
	
	Trigger.MouseButton1Down:Connect(ActivateSlider)
	
	game:GetService(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,12075,10605,11970,7665,11550,11760,12285,12180,8715,10605,11970,12390,11025,10395,10605})).InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			SliderActive = false
		end
	end)
	
end
coroutine.wrap(YEOE_fake_script)()
local function GOUU_fake_script() -- Slider1.Script3 
	local Mouse = game.Players.LocalPlayer:GetMouse()
	local Slider = Slider1
	local Fill = Fill3
	local Trigger = TriggerOutTans
	local TextNumbers = Numbers_3
	
	local maxvalue = 1 or 100/100
	local startingvalue = 0 or 0/100
	
	Fill.Size = UDim2.fromScale(DeleteMob.ESP.OutLines.OutlineTrancparency,1)
	TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.OutlineTrancparency*100))
	
	local TweenService = game:GetService(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,12495,10605,10605,11550,8715,10605,11970,12390,11025,10395,10605}))
	local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
	
	local function UpdateSlider()
		local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
		
		if DeleteMob.ESP.OutLines.OutlineTrancparency ~= OutPut then
			TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
		end
		
		DeleteMob.ESP.OutLines.OutlineTrancparency = startingvalue +(OutPut*(maxvalue-startingvalue))
		TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.OutlineTrancparency*100))
	end
	
	Fill:GetPropertyChangedSignal(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8715,11025,12810,10605})):Connect(function()
		TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.OutlineTrancparency*100))
	end)
	
	local SliderActive = false
	
	local function ActivateSlider()
		SliderActive = true
		while SliderActive do
			UpdateSlider()
			task.wait()
		end
	end
	
	Trigger.MouseButton1Down:Connect(ActivateSlider)
	
	game:GetService(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,12075,10605,11970,7665,11550,11760,12285,12180,8715,10605,11970,12390,11025,10395,10605})).InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			SliderActive = false
		end
	end)
	
end
coroutine.wrap(GOUU_fake_script)()
local function MMUKLB_fake_script() -- Slider2.Script4 
	local Mouse = game.Players.LocalPlayer:GetMouse()
	local Slider = Slider2
	local Fill = Fill4
	local Trigger = TriggerFill
	local TextNumbers = Numbers_4
	
	local maxvalue = 1 or 100/100
	local startingvalue = 0 or 0/100
	
	Fill.Size = UDim2.fromScale(DeleteMob.ESP.OutLines.FillTrancparenct,1)
	TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.FillTrancparenct*100))
	
	local TweenService = game:GetService(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8820,12495,10605,10605,11550,8715,10605,11970,12390,11025,10395,10605}))
	local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
	
	local function UpdateSlider()
		local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
		
		if DeleteMob.ESP.OutLines.FillTrancparenct ~= OutPut then
			TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
		end
		
		DeleteMob.ESP.OutLines.FillTrancparenct = startingvalue +(OutPut*(maxvalue-startingvalue))
		TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.FillTrancparenct*100))
	end
	
	Fill:GetPropertyChangedSignal(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8715,11025,12810,10605})):Connect(function()
		TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.FillTrancparenct*100))
	end)
	
	local SliderActive = false
	
	local function ActivateSlider()
		SliderActive = true
		while SliderActive do
			UpdateSlider()
			task.wait()
		end
	end
	
	Trigger.MouseButton1Down:Connect(ActivateSlider)
	
	game:GetService(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8925,12075,10605,11970,7665,11550,11760,12285,12180,8715,10605,11970,12390,11025,10395,10605})).InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			SliderActive = false
		end
	end)
	
end
coroutine.wrap(MMUKLB_fake_script)()


game:GetService(hebiSRpFcWqdAZLPvydIFVvVQePndeWjrdhiFRazQrnoANwjyhgMzvurpjfPtpEfrstuyqJeTzfzWktFbEUlvpmq({8610,12285,11550,8715,10605,11970,12390,11025,10395,10605})).RenderStepped:connect(function()

	-- Aimbot Check
	if DeleteMob.Aimbot.IsAimKeyDown then
        local _pos = CameraGetClosestToMouse(DeleteMob.Aimbot.Fov)
        if _pos then
            aimAt(_pos, DeleteMob.Aimbot.Smoothing)
        end
    end

	-- Fov
	local acc = DeleteMob.Aimbot.Smoothing / 2	
	local posd = UIS:GetMouseLocation() 
	FOVFFrame.Position = UDim2.new(0, posd.X, 0, posd.Y - 36)
	FOVFFrame.Size = UDim2.new(0, DeleteMob.Aimbot.Fov + acc, 0, DeleteMob.Aimbot.Fov + acc)
	FOVFFrame.Visible = DeleteMob.Aimbot.ShowFov
	FOVFFrame.BackgroundColor3 = DeleteMob.Aimbot.FovFillColor
	FOVFFrame.Transparency = DeleteMob.Aimbot.FovFillTransparency

	UIStroke.Color = DeleteMob.Aimbot.FovFillColor
	UIStroke.Transparency = DeleteMob.Aimbot.FovTransparenct
	UIStroke.Thickness = DeleteMob.Aimbot.Thickness
	
	-- Colors 
	
	DeleteMob.ESP.Box.BoxColor = Color3.fromRGB(tonumber(Box_R.Text), tonumber(Box_G.Text), tonumber(Box_B.Text))
	DeleteMob.ESP.OutLines.FillCollor = Color3.fromRGB(tonumber(FillOutlines_R.Text), tonumber(FillOutlines_G.Text), tonumber(FillOutlines_B.Text))
	DeleteMob.ESP.OutLines.OutlineColor = Color3.fromRGB(tonumber(Outlines_R.Text), tonumber(Outlines_G.Text), tonumber(Outlines_B.Text))
	DeleteMob.ESP.Tracers.Color = Color3.fromRGB(tonumber(Tracers_R.Text), tonumber(Tracers_G.Text), tonumber(Tracers_B.Text))
end)


task.wait()

for i,plr in pairs(game.Players:GetChildren()) do
	AddHighlight(plr)
	AddBox(plr)
	AddTracers(plr)
end

game.Players.PlayerAdded:Connect(function(plr)
	AddHighlight(plr)
	AddBox(plr)
	AddTracers(plr)
end)


print("Loaded Everything!")
