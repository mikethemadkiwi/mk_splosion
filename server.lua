numSplosions = {}
local BlockedExplosions = {1, 2, 4, 5, 7, 8, 10, 17, 15, 25, 32, 33, 35, 36, 37, 38}
local BannedExplosions = {53, 55, 56, 59}
AddEventHandler(
  "explosionEvent",
  function(sender, ev)
    for _, v in ipairs(BlockedExplosions) do
      if ev.explosionType == v then
        CancelEvent()
        if numSplosions[sender] == nil then
            numSplosions[sender] = 1
        else
            numSplosions[sender] = numSplosions[sender] + 1
        end
        print('User ['..sender..'] has generated ['..numSplosions[sender]..'] explosions events. ( EVID:'..ev.explosionType..' )')
        -- throw in warning or ban scripts.
        return
      end
    end
  end
)