# Projetos Arduino — Eletrônica, Controle e Automação

Este repositório reúne projetos de Arduino organizados como estudos práticos de eletrônica, controle e automação. O objetivo é documentar cada etapa do aprendizado, criar uma base de referência e permitir que qualquer pessoa configure o ambiente e execute os exemplos com facilidade.

## Objetivo geral

- Explicar os princípios essenciais de Arduino e automação básica.
- Mostrar como configurar o ambiente de desenvolvimento em Linux/Ubuntu.
- Oferecer exemplos práticos que vão do básico (LED blink) a controles mais avançados.
- Tornar o repositório reutilizável para futuros estudos ou projetos.

## Como usar este repositório

1. Abra o terminal na pasta do repositório.
2. Instale e configure o ambiente Arduino conforme descrito abaixo.
3. Entre na pasta de cada projeto para compilar e enviar o sketch.
4. Consulte o README de cada projeto para instruções específicas.

## Configuração do ambiente (Linux/Ubuntu)

### 1. Instalar o Arduino CLI

```bash
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
echo 'export PATH=$PATH:~/bin' >> ~/.bashrc
source ~/.bashrc

arduino-cli core update-index
arduino-cli core install arduino:avr
```

### 2. Verificar conexão da placa

- Conecte o Arduino Uno via USB.
- No Linux, a porta geralmente aparece como `/dev/ttyUSB0` ou `/dev/ttyACM0`.
- Se não aparecer, adicione seu usuário ao grupo `dialout`:

```bash
sudo usermod -a -G dialout $USER
```

- Reinicie a sessão ou o sistema após a mudança.

### 3. Resolver problema com CH340

Se a placa usar chip CH340 e não for reconhecida:

```bash
sudo apt remove brltty
sudo usermod -a -G dialout $USER
```

### 4. Compilar e enviar um sketch

No diretório do projeto desejado:

```bash
arduino-cli compile --fqbn arduino:avr:uno NomeDoSketch.ino
arduino-cli upload -p /dev/ttyUSB0 --fqbn arduino:avr:uno NomeDoSketch.ino
```

### 5. Uso com VS Code (opcional)

- Recomenda-se a extensão **Arduino Community Edition**.
- Configure o caminho do Arduino CLI se necessário:

```jsonc
"arduino.useArduinoCli": true,
"arduino.path": "/home/SEU_USUARIO/bin"
```

## Estrutura do repositório

```text
Projetos_Arduinos/
├── Projeto_01_LED/
│   ├── Projeto_01_LED.ino
│   ├── README.md
│   └── rodar.sh
└── README.md
```

## Projetos existentes

- `Projeto_01_LED/` — exemplo básico de LED blink.
- Outros projetos serão adicionados progressivamente.

## Como contribuir

- Abra issues para sugestões ou problemas.
- Faça forks e pull requests com melhorias de código ou documentação.
- Mantenha o repositório organizado por projeto.
