#!/bin/bash
# Lösche alle alten Konfigurationsreste radikal
rm -f .config
rm -f seed.config

# Schreibe die Zielarchitektur für den echten Xiaomi BE6500
echo "CONFIG_TARGET_qualcommax=y" > .config
echo "CONFIG_TARGET_qualcommax_ipq53xx=y" >> .config
echo "CONFIG_TARGET_DEVICE_qualcommax_ipq53xx_DEVICE_xiaomi_be6500=y" >> .config

# Verhindere, dass nachfolgende Skripte etwas ändern
chmod 444 .config
