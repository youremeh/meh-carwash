local QBCore = exports['qb-core']:GetCoreObject()

lib.callback.register('meh:carwash:pay', function(source, amount, method)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return false, "Player not found" end
    if amount <= 0 then return false, "Invalid amount" end
    method = method or 'cash'
    local success = Player.Functions.RemoveMoney(method, amount)
    if success then
        return true, ("You paid $%d"):format(amount)
    else
        return false, "Not enough money in " .. method
    end
end)