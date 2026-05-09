$config = Get-Content ".telegram_bot/config.txt" | ConvertFrom-StringData
$TOKEN = $config.TOKEN
$URL = "https://api.telegram.org/bot$TOKEN/getUpdates"

$res = Invoke-RestMethod -Uri $URL -Method Get
$res | ConvertTo-Json