---@class MainUI_C:UUserWidget
---@field Button_72 UButton
---@field Button_213 UButton
---@field TextBlock_85 UTextBlock
--Edit Below--
local MainUI = { 
	bInitDoOnce = false
} 
function MainUI:Construct()
	self:LuaInit();
	--  L_Event:AddListener(L_Enum.EventTest.Test_01, self.Test, self)
end
function MainUI:LuaInit()
	if self.bInitDoOnce then
		return;
	end
	self.bInitDoOnce = true;
	-- self.Button_213.OnClicked:Add(self.Button_213_OnClicked, self);
	L_Event:AddListener(L_Enum_Event.Eunms.FightPeoNums,self.OnFightPeoNums,self)
	self.Button_72.OnClicked:Add(self.Button_72_OnClicked, self);
end

function MainUI:Button_213_OnClicked()
	-- L_Event:SendEvent(L_Enum.EventTest.Test_01, "游戏结束！")
end

function MainUI:Test(msg)
-- self.TextBlock_85:SetText(msg)
-- local MyPawn=UGCGameSystem.GetLocalPlayerPawn()
-- local TestClass_01= UE.LoadClass(PathMgr.Actor_01)
-- 	UGCActorComponentUtility.SpawnActor(MyPawn, TestClass_01, MyPawn:K2_GetActorLocation(), MyPawn:K2_GetActorRotation(), Vector.New(1,1,1), MyPawn)
-- --[[-----------------------显示UI2-----------------------]]--
	
-- local TestUIClass = UE.LoadClass(PathMgr.TestUI_02)
--     local pc = GameplayStatics.GetPlayerController(self, 0)
--         local TestUI_02 = UserWidget.NewWidgetObjectBP(pc, TestUIClass)
--             TestUI_02:AddToViewport()
-- 			self:SetVisibility(ESlateVisibility.Collapsed)
end
function MainUI:Button_72_OnClicked()
	--人数加一
 local PC = GameplayStatics.GetPlayerController(self, 0)
    local Pawn = UGCGameSystem.GetLocalPlayerPawn()
    UnrealNetwork.CallUnrealRPC(PC,Pawn,"ServerRPC_AddFightPeoNums")
end

-- [Editor Generated Lua] function define End;

function MainUI:OnFightPeoNums(FightPeoNums)
self.TextBlock_85:SetText(tostring(FightPeoNums))
 
end

-- [Editor Generated Lua] function define Begin:

return MainUI