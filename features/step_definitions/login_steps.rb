# conding: utf-8

Dado(/^que estou no "([^"]*)"$/) do |site|
  herokuapp_screen = HerokuappScreen.new
  herokuapp_screen.acessa_herokuapp
end

Quando(/^preencher o campo username "([^"]*)"$/) do |nome_usuario|
  herokuapp_screen = HerokuappScreen.new
  herokuapp_screen.preenche_nome_usuario nome_usuario
  herokuapp_screen.espera_por 1
end

Quando(/^preencher o campo password com o valor "([^"]*)"$/) do |senha|
  herokuapp_screen = HerokuappScreen.new
  herokuapp_screen.preenche_senha senha
  herokuapp_screen.espera_por 1
end

Quando(/^clicar no botão "([^"]*)"$/) do |botao|
  herokuapp_screen = HerokuappScreen.new
  herokuapp_screen.clica botao
end

Então(/^posso ver a mensagem "([^"]*)"$/) do |mensagem|
  herokuapp_screen = HerokuappScreen.new
  herokuapp_screen.tem_mensagem? mensagem
end

