local mod = {}

function mod.requireRelative(path)
    savePath = package.path
    
    callerPath = debug.getinfo(2, "S").short_src
    callerDir = callerPath:match("(.*/)")
    package.path = callerDir .. "?.lua"

    ret = require(path)
    package.path = savePath

    return ret
end

return mod
