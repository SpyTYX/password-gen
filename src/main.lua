local isWindows = package.config:sub(1, 1) == '\\'
local cipherGen = require("modules.cipher")
local cipherBetaGen = require("modules.cipherbeta")
local password = ""
local mode = ""
local length = 6

math.randomseed(os.time())

local function generate()
    local rand = math.random(1, 2)
    return rand == 1 and string.char(math.random(65, 90)) or tostring(math.random(0, 9))
end

if isWindows then
    print("Moonzy's Password Generator | 0.02\nModes: Normal, Cipher, Cipher Beta")
    io.write("Enter your mode of generation: ")
    mode = io.read("*l")

    if mode == "Normal" or mode == "Cipher" or mode == "Cipher Beta" then
        if mode == "Normal" then
            io.write("Enter your password length to continue: ")
            length = tonumber(io.read("*n")) or length

            if length < 4 then
                print("Sorry, the minimum password length is 4, your password length has been set to 4 automatically.")
                length = 4
            elseif length > 25 then
                print("Sorry, the maximum password length is 25, your password length has been set to 25 automatically.")
                length = 25
            end

            for i = 1, length do
                password = password .. generate()
            end

            print("Your generated password is: " .. password .. "\nMade by .moonzy_ on Discord.")
        else
            local generatedPassword = ""
            if mode == "Cipher" then
                generatedPassword = cipherGen.returncipher()
            elseif mode == "Cipher Beta" then
                generatedPassword = cipherBetaGen.returncipher()
            end

            print("Your generated password is: " .. generatedPassword .. "\nMade by .moonzy_ on Discord.")
        end
    else
        print("Oops! Moon Generator could not find that generation type, press any key to exit.")
    end

    os.execute("pause")
else
    return
end
