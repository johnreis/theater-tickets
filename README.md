# theater-tickets
Projeto criado para dar solução ao seguinte problema:

```text
Calcule os seguintes descontos para as entradas dado o preço dos ingressos:

- Crianças: R$ 5.50
- Estudantes: R$ 8.00
- Idosos: R$ 6.00

Segunda-Feira: 
      - 10% para todos(crianças, idosos, estudantes)

Terça-Feira:
      - 15% idosos e crianças;
      - 5% estudantes;

Quarta-Feira:
      - 40% idosos
      - 30% crianças
      - 50% estudantes

Quinta-Feira
      - 30% idosos e estudantes

Sexta-Feira
      - 11% crianças

Domingo/Sábados/Feriados
      - 5% Idosos

OBS1.: Todo estudante mediante apresentação da carteirinha de estudante 
       possui para todos os dias da semana, exceto finais de semana, 
       35% de desconto em todos os ingressos;

OBS2.: Descontos não são cumulativos
```

### Rodando os tests

Navegue até a pasta do projeto e rode o seguinte comando ajustando o simulador e a versão do iOS disponível em sua máquina:

```shell
$ xcodebuild \
  -scheme TheaterTickets \
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone 8,OS=13.2.2' \
  test
```

Made with love by [John R.](https://www.linkedin.com/in/johnlenonreis/) &#9829;
