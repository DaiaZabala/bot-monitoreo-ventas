@echo off
title Iniciando Sistema de Monitoreo de Ventas
echo Abriendo contenedores de Docker...
cd /d "%~dp5"
docker compose up -d
echo ========================================
echo El sistema ya esta en ejecucion.
echo Podes cerrar esta ventana.
echo ========================================
pause