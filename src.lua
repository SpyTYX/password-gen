local isWindows = package.config:sub(1, 1) == '\\';
local ___ = "";
local ____ = 6

function __()
    local rand = math.random(1,2);return rand == 1 and string.char(math.random(65,90)) or tostring(math.random(0, 9))
end

if isWindows then
    io.write("Enter the desired password length (4-25): ")
    ____ = tonumber(io.read("*n")) or ____

    if ____ < 4 then
        os.execute('Sorry the minimum password length is 4, your password legnth has been set to 4 automatically.')
        ____ = 4
    elseif ____ > 25 then
        os.execute('Sorry the maximum password length is 25, your password legnth has been set to 25 automatically.')
        ____ = 25
    end
end

for i = 1, ____ do
    ___=___..__()
end

if isWindows then
    os.execute('msg * "' .. "Your generated password is: " .. ___ .. '"')
else
    return
end
