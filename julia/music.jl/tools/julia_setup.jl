function pair(func, msg::String)
    func()
    log(msg)
end

function log(msg::String)
    println("INSTALLER: " * msg)
end


function main()
    log("This script is setup script for Julia engine.")

    log("Updating package repo.")
    Pkg.update()

    log("Show installation status.")
    Pkg.status()

    log("Installing Jupyter...")
    Pkg.add("IJulia")
    Pkg.build("IJulia")


    Pkg.add("ArgParse")
    Pkg.add("MIDI")

end

main()
