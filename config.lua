local meh = {}

meh.basePrice = 25
meh.dirtPriceMultiplier = 15

meh.UseR14Evidence = false

meh.carWashLocations = {
    vector4(16.53, -1393.92, 29.32, 0.0),    -- Strawberry
    vector4(174.98, -1733.6, 29.29, 177.76), -- Carson Ave
    vector4(-697.66, -933.57, 19.01, 88.42), -- Lindsay Circus
}

meh.notify = function(msg, type)
    exports.ox_lib:notify({ description = msg, type = type or 'info', position = 'top' })
end

-- no touch
meh.parts = {
    hood = { doorIndex = 4 },
    trunk = { doorIndex = 5 },
    leftFrontDoor = { doorIndex = 0 },
    rightFrontDoor = { doorIndex = 1 },
    leftRearDoor = { doorIndex = 2 },
    rightRearDoor = { doorIndex = 3 }
}

return meh