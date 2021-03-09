$batchName="batchname"
$importFile=<path_to_import_file.txt>
$targetDB="DB14-ITA"
$badItemLimit=5
import-csv $importFile | %{New-MoveRequest -Identity $_.mail -TargetDatabase $targetDB -BadItemLimit $badItemLimit -AcceptLargeDataLoss -suspendwhenreadytocomplete:$true -Bacthname $batchName}
