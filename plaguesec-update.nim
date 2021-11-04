import httpclient
import osproc
import strformat

proc writeFile(content: string) = 
    let
        update_file = open("/tmp/plaguesec-update.sh", fmWarite)
    update_file.write(fmt"""
{content}

""")
    defer: update_file.close()

proc run_update() =
    echo "Running Update"
    var response = request.getContent("https://raw.githubusercontent.com/plaguesec/plaguesec-update/main/update.sh")
    writeFile(response)
    let query = execCmd "chmod +x /tmp/plaguesec-update.sh && sed -i 's/\r$//' /tmp/plaguesec-update.sh && sudo bash /tmp/plaguesec-update.sh && sudo rm /tmp/plaguesec-update.sh"

run_update()