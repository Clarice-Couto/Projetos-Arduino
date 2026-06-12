# Projeto 01 — LED Blink

Este projeto é o exemplo inicial do repositório. Ele demonstra a configuração básica de um sketch Arduino com um LED piscando no pino 13.

## Objetivo

- Validar o ambiente de desenvolvimento Arduino.
- Mostrar como compilar e enviar um sketch usando `arduino-cli`.
- Testar o LED integrado do Arduino Uno.

## Arquivos do projeto

- `Projeto_01_LED.ino` — sketch principal.
- `rodar.sh` — script de compilação e upload.
- `README.md` — documentação deste projeto.

## Hardware necessário

- Arduino Uno ou compatível.
- Cabo USB para conexão.
- LED integrado no pino 13 do Arduino Uno (não é necessário circuito externo).

## Como funciona o código

O sketch faz o seguinte:

1. Define o pino 13 como saída.
2. Acende o LED por 1 segundo.
3. Apaga o LED por 1 segundo.
4. Repete esse ciclo indefinidamente.

### Código principal

```cpp
#include <Arduino.h>

void setup() {
  pinMode(13, OUTPUT);
}

void loop() {
  digitalWrite(13, HIGH);
  delay(1000);
  digitalWrite(13, LOW);
  delay(1000);
}
```

## Antes de começar

1. Instale o Arduino CLI conforme descrito no README principal do repositório.
2. Conecte o Arduino via USB.
3. Identifique a porta serial correta (`/dev/ttyUSB0` ou `/dev/ttyACM0`).

## Compilar e enviar

```bash
cd Projeto_01_LED
arduino-cli compile --fqbn arduino:avr:uno Projeto_01_LED.ino
arduino-cli upload -p /dev/ttyUSB0 --fqbn arduino:avr:uno Projeto_01_LED.ino
```

> Substitua `/dev/ttyUSB0` pela porta que seu sistema estiver usando.

## Usando o script `rodar.sh`

O `rodar.sh` pode automatizar o processo de compilação e upload.

```bash
cd Projeto_01_LED
./rodar.sh
```

## Dicas

- Se o VS Code mostrar avisos no editor, mantenha `#include <Arduino.h>` no topo do sketch.
- Se a porta não for encontrada, confirme se o usuário pertence ao grupo `dialout`.
