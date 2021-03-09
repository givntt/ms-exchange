Set-ServerComponentState exc08 –Component HubTransport –State Draining –Requester Maintenance
Set-ServerComponentState exc08 –Component ServerWideOffline–State InActive –Requester Maintenance

Get-ServerComponentState "exc08" | Select Component, State

Set-ServerComponentState exc08 -Component ServerWideOffline -State Active -Requester Maintenance
Set-ServerComponentState exc08 -Component HubTransport -State Active -Requester Maintenance



Redirect-Message –Server exc08 –Target exc07
