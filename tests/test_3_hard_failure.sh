#!/bin/bash
# Тест-кейс 3: Фатальный сбой
WEBHOOK_URL="http://localhost:8080/webhook/5512e97a-fa7d-435a-8c88-1d017a74f326/lead-catch"

echo "[RUN] Тест-кейс 3: Фатальный сбой (Hard Failure)"
curl -i -X POST -H "Content-Type: application/json" \
  -d '{"name": "Ivan_Fault", "phone": "+79991112233", "test_scenario": "hard_error"}' \
  $WEBHOOK_URL
echo -e "\n[INFO] Ожидаемый результат: HTTP 200 в консоли. В n8n: 3 ретрая -> Исключение -> Срабатывание Error Trigger."
