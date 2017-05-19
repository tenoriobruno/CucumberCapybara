# language: pt
Funcionalidade: Login e logout com usuário válido no site
  Esquema do Cenário: login com uma conta válida
    Dado que estou no <site>
    Quando preencher o campo username <usuário>
    E preencher o campo password com o valor <senha>
    E clicar no botão "Login"
    Então posso ver a mensagem <mensagem login ok>


    Exemplos:
      | site                                       | usuário     | senha                  | mensagem login ok               |
      |  "https://the-internet.herokuapp.com/login"|  "tomsmith" | "SuperSecretPassword!" | "You logged into a secure área!"|

  Esquema do Cenário: login e logout com uma conta válida
    Dado que estou no <site>
    Quando preencher o campo username <usuário>
    E preencher o campo password com o valor <senha>
    E clicar no botão "Login"
    Então posso ver a mensagem <mensagem login ok>
    Quando clicar no botão "Logout"
    Então posso ver a mensagem <mensagem logout ok>



    Exemplos:
      | site                                       | usuário     | senha                  | mensagem login ok               | mensagem logout ok   |
      |  "https://the-internet.herokuapp.com/login"|  "tomsmith" | "SuperSecretPassword!" | "You logged into a secure área!"| "You logged out of the secure área!’" |


