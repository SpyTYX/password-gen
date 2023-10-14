local isWindows = package.config:sub(1, 1) == '\\'
local x = ""
local y = 6

function z()
    local rand = math.random(1, 2)
    return rand == 1 and string.char(math.random(65, 90)) or tostring(math.random(0, 9))
end

if isWindows then
    io.write("Enter your password length to continue: ")
    y = tonumber(io.read("*n")) or y

    if y < 4 then
        print("Sorry, the minimum password length is 4, your password length has been set to 4 automatically.")
        y = 4
    elseif y > 25 then
        print("Sorry, the maximum password length is 25, your password length has been set to 25 automatically.")
        y = 25
    end

    for i = 1, y do
        x = x .. z()
    end
    print("Your generated password is: " .. x .. "\nMade by .moonzy_ on Discord.")
    os.execute("pause")
else
    return
end
