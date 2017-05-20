# language: pt
Funcionalidade: Login e logout com usuário válido no site

  Esquema do Cenário: Cenário: login e logout com uma conta válida enviado por linha de commando
    Dado que estou na página herokuapp
    Quando preencher os campos username e password com os valores enviados por linha comando
    E clicar no botão "Login"
    Então posso ver a mensagem <mensagem login ok>
    Quando clicar no botão "Logout"
    Então posso ver a mensagem <mensagem logout ok>
    Exemplos:
      |mensagem login ok                 | mensagem logout ok                   |
      | "You logged into a secure area!" | "You logged out of the secure area!" |

  Esquema do Cenário: login com uma conta válida
    Dado que estou na página herokuapp
    Quando preencher o campo username <usuário>
    E preencher o campo password com o valor <senha>
    E clicar no botão "Login"
    Então posso ver a mensagem <mensagem login ok>
    Exemplos:
      | usuário     | senha                  | mensagem login ok               |
      |  "tomsmith" | "SuperSecretPassword!" | "You logged into a secure area!"|

  Esquema do Cenário: login e logout com uma conta válida
    Dado que estou na página herokuapp
    Quando preencher o campo username <usuário>
    E preencher o campo password com o valor <senha>
    E clicar no botão "Login"
    Então posso ver a mensagem <mensagem login ok>
    Quando clicar no botão "Logout"
    Então posso ver a mensagem <mensagem logout ok>
    Exemplos:
      | usuário    | senha                  | mensagem login ok                | mensagem logout ok                   |
      | "tomsmith" | "SuperSecretPassword!" | "You logged into a secure area!" | "You logged out of the secure area!" |


