local UGCPlayerPawn = {}
 
function UGCPlayerPawn:GetAvailableServerRPCs()
    return "ServerRPC_AddFightPeoNums"
end

function UGCPlayerPawn:ServerRPC_AddFightPeoNums()
    local GameState = UGCGameSystem.GameState
        GameState.FightPeoNums = GameState.FightPeoNums + 2
end

return UGCPlayerPawn