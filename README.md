# Pràctica: Alerta de Telegram en Windows

Aquest projecte consisteix en un script de PowerShell per enviar una notificació automàtica a Telegram.

## Passos realitzats:
1. **Creació del Bot**: He utilitzat @BotFather a Telegram per generar el Token de l'API.
2. **Configuració de Seguretat**: He creat una carpeta oculta `.telegram_bot` amb un fitxer `config.txt` per guardar el Token de forma segura, separat del codi.
3. **Obtenció del ID**: He programat un script (`sacar_id.ps1`) fent servir el mètode `getUpdates` per identificar el meu ID de xat.
4. **Enviament de Missatges**: He desenvolupat l'script final (`telegram_bot.ps1`) que utilitza el mètode `sendMessage` per enviar alertes reals al mòbil.

## Arxius inclosos:
- `telegram_bot.ps1`: Script principal per enviar l'alerta.
- `sacar_id.ps1`: Script per obtenir la informació del xat.
- `README.md`: Explicació del procés de la pràctica.

## Com executar-ho:
1. Crear la carpeta `.telegram_bot` i el fitxer `config.txt` amb el Token.
2. Obrir una terminal de PowerShell a VS Code.
3. Executar l'script amb: `.\telegram_bot.ps1`
