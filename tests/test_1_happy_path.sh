#!/bin/bash
# Тест-кейс 1: Штатный режим
WEBHOOK_URL="http://localhost:8080/webhook/5512e97a-fa7d-435a-8c88-1d017a74f326/lead-catch"

echo "[RUN] Тест-кейс 1: Штатный режим (Happy Path)"
curl -i -X POST -H "Content-Type: application/json" \
  -d '{"name": "Ivan_Happy", "phone": "+79991112233", "test_scenario": "success"}' \
  $WEBHOOK_URL
echo -e "\n[INFO] Ожидаемый результат: HTTP 200 в консоли. В n8n: Контур 1 Успех, Время < 500мс."
