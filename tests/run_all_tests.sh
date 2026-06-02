#!/bin/bash
# Скрипт автоматического последовательного или выборочного запуска тестов
cd "$(dirname "$0")"

chmod +x test_1_happy_path.sh test_2_transient.sh test_3_hard_failure.sh

echo "Выберите тест для запуска (1, 2, 3) или 'all' для последовательного запуска:"
read -p "Ввод: " CHOICE

case $CHOICE in
    1) ./test_1_happy_path.sh ;;
    2) ./test_2_transient.sh ;;
    3) ./test_3_hard_failure.sh ;;
    all)
        ./test_1_happy_path.sh
        echo "-----------------------------------"
        sleep 2
        ./test_2_transient.sh
        echo "-----------------------------------"
        sleep 12
        ./test_3_hard_failure.sh
        ;;
    *) echo "Неверный ввод" ;;
esac
