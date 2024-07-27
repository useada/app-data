#!/usr/bin/env pwsh

if ($env:APP_ENV -eq "production") {
    Write-Host "Error, \$env:APP_ENV = production"
    exit 1
}

docker compose -f docker-compose.dev.yml @args
