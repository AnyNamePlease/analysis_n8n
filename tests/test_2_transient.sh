#!/bin/bash
# Тест-кейс 2: Кратковременный сбой
WEBHOOK_URL="http://localhost:8080/webhook/5512e97a-fa7d-435a-8c88-1d017a74f326/lead-catch"

echo "[RUN] Тест-кейс 2: Кратковременный сбой (Transient Fault)"
curl -i -X POST -H "Content-Type: application/json" \
  -d '{"name": "Ivan_Flaky", "phone": "+79991112233", "test_scenario": "retry_success"}' \
  $WEBHOOK_URL
echo -e "\n[INFO] Ожидаемый результат: HTTP 200 в консоли. В n8n: 2 падения узла HTTP Request, успех на 3 попытку. Время ~10с."
