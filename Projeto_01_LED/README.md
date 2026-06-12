# Arduino — Eletrônica, Controle e Automação

Repositório de estudos focado em eletrônica aplicada, controle e automação industrial. Cada subpasta corresponde a um projeto independente, organizado de forma incremental, dos fundamentos até aplicações mais próximas de cenários reais de automação.

O objetivo é documentar o processo de aprendizado e servir como referência para projetos futuros, tanto pessoais quanto profissionais.

---

## Sobre o ambiente

- **Hardware:** Arduino Uno (clone com chip CH340)
- **Ambiente de desenvolvimento:** VS Code + Arduino CLI
- **Sistema operacional:** Linux (Ubuntu)
- **Controle de versão:** Git

---

## Projetos

| Pasta | Descrição | Status |
|---|---|---|
| `01-blink/` | Configuração inicial do ambiente e primeiro programa (LED) | Concluído |
| `02-sensor-temperatura/` | Leitura de sensor analógico/digital | Em andamento |
| `03-pwm-motor/` | Controle de velocidade de motor via PWM | Planejado |
| `04-comunicacao-serial/` | Comunicação serial com o computador | Planejado |
| `05-rele-temporizacao/` | Lógica de acionamento e temporização com relés | Planejado |

Cada projeto possui seu próprio README com descrição, esquema de ligação e instruções específicas.

---

## Configuração do ambiente (Linux/Ubuntu)

### 1. Driver CH340
No Ubuntu, o driver do CH340 já está incluído no kernel. Caso a placa não seja reconhecida em `/dev/ttyUSB0`, verifique se há conflito com o pacote `brltty`:
```bash
sudo apt remove brltty
sudo usermod -a -G dialout $USER
# reiniciar o sistema
```

### 2. Arduino CLI
```bash
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
echo 'export PATH=$PATH:~/bin' >> ~/.bashrc
source ~/.bashrc

arduino-cli core update-index
arduino-cli core install arduino:avr
```

### 3. Compilação e upload
```bash
arduino-cli compile --fqbn arduino:avr:uno nome_do_sketch.ino
arduino-cli upload -p /dev/ttyUSB0 --fqbn arduino:avr:uno nome_do_sketch.ino
```

### 4. VS Code (opcional)
Extensão recomendada: **Arduino Community Edition**
```jsonc
"arduino.useArduinoCli": true,
"arduino.path": "/home/SEU_USUARIO/bin"
```

---

## Estrutura de cada projeto

```
Projeto_01_LED/
├── Arduino_Aprendendo.ino
├── README.md
└── rodar.sh
```

---

## Contexto

Este repositório foi criado como parte de um processo de estudo aplicado, com foco em fundamentos de eletrônica e automação relevantes para a área industrial. Sugestões e correções são bem-vindas.