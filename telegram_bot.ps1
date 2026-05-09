# 1. Cargar el Token
$config = Get-Content ".telegram_bot/config.txt" | ConvertFrom-StringData
$TOKEN = $config.TOKEN

# 2. Tu ID
$ID = "6558622600"

# 3. Mensaje simple sin acentos
$MENSAJE = "Mensaje enviado a Telegram."

# 4. URL para enviar
$URL = "https://api.telegram.org/bot$TOKEN/sendMessage"

# 5. Cuerpo del envio
$Cuerpo = @{
    chat_id = $ID
    text = $MENSAJE
}

# 6. Ejecutar el envio
Invoke-RestMethod -Uri $URL -Method Post -Body $Cuerpo

Write-Host "Mensaje enviado a Telegram."