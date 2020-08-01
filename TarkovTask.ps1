# put this powershell file in your users\???\Documents\Escape From Tarkov folder
# in scheduled tasks create a task and add the following:
## type: powershell in program/script box
### type: -ExecutionPolicy Bypass C:$env:HOMEPATH\Documents\Escape From Tarkov\TarkovTask.ps1 in the add parameters box
#### in the trigger tab set it to trigger at logon and repeat every 5 minutes
##### save and activate task if you want to use it right away

function setTarkovPrio{
    if(Get-Process EscapeFromTarkov)
    {
        (Get-Process -Name "EscapeFromTarkov").PriorityClass = "High";
        (Get-Process -Name "EscapeFromTarkov_BE").PriorityClass = "High";
        (Get-Process -Name "BsgLauncher").PriorityClass = "High";
    }
}
setTarkovPrio;