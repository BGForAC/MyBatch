@echo off

taskkill /im lghub.exe /f

taskkill /im lghub_agent.exe /f

taskkill /im lghub_updater.exe /f

start "" "C:\Program Files\LGHUB\lghub_agent.exe"

start "" "C:\Program Files\LGHUB\lghub_updater.exe"

start "" "C:\Program Files\LGHUB\lghub.exe"