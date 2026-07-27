---@class UGCGameState_C:BP_UGCGameState_C
--Edit Below--
UGCGameSystem.UGCRequire('Script.Common.ue_enum_custom')
local L_Enum_Event = UGCGameSystem.UGCRequire('Script.L_Enum_Event')
local PathMgr=UGCGameSystem.UGCRequire('Script.PathMgr')
local L_Event = UGCGameSystem.UGCRequire("Script.L_Event")
local UGCGameState =UGCGameState or {
    BGMStatae = {};--BGM的状态

    PlayerDataList={};--玩家数据

    FightPeoNums=0;

}; 
function UGCGameState:ReceiveBeginPlay()
local MainUIClass = UE.LoadClass(PathMgr.MainUI)
if MainUIClass then
    local pc = GameplayStatics.GetPlayerController(self, 0)
        local MainUI = UserWidget.NewWidgetObjectBP(pc, MainUIClass)
            MainUI:AddToViewport()
end
end

function  UGCGameState:GetReplicatedProperties()
    return
    --[[-------------------先在这里注册要广播到各个客户端的事件---------------------------]]--
    "FightPeoNums" --战斗人数
end


--[[----------------------有改变服务器返回给这里------------------------]]--

function UGCGameState:OnRep_FightPeoNums()
    L_Event:SendEvent(L_Enum_Event.Eunms.FightPeoNums,self.FightPeoNums)
end


return UGCGameState;
