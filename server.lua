--[[ Version Checker ]]--
local version = "2.0.0"

if Config.CheckForUpdates then
    AddEventHandler("onResourceStart", function(resource)
        if resource == GetCurrentResourceName() then
            CheckFrameworkVersion()
        end
    end)
end

function CheckFrameworkVersion()
    PerformHttpRequest("https://raw.githubusercontent.com/Mlodziutki0001/koszykowka/master/version.txt", function(err, text, headers)
        if string.match(text, version) then
            print(" ")
            print("--------- ^4MLODY BASKETBALL VERSION^7 ---------")
            print("mlody-basketball ^2is up to date^7 and ready to go!")
            print("Running on Version: ^2" .. version .."^7")
            print("^4https://github.com/Mlodziutki0001/Koszykowka^7")
            print("--------------------------------------------")
            print(" ")
        else
          print(" ")
          print("--------- ^4MLODY BASKETBALL VERSION^7 ---------")
          print("Koszykowka ^1is not up to date!^7 Please update!")
          print("Curent Version: ^1" .. version .. "^7 Latest Version: ^2" .. text .."^7")
          print("^4https://github.com/Mlodziutki0001/Koszykowka^7")
          print("--------------------------------------------")
          print(" ")
        end

    end, "GET", "", {})

end
