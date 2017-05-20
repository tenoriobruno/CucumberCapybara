# conding: utf-8

Dado(/^que estou na página herokuapp$/) do
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

Quando(/^preencher os campos username e password com os valores enviados por linha comando$/) do
  herokuapp_screen = HerokuappScreen.new
  herokuapp_screen.preenche_nome_usuario ENV['USER_NAME']
  herokuapp_screen.preenche_senha ENV['PASSWORD']
end


Dado(/^foi inserido nome de usuário e senha por linha de comando$/) do
  binding.pry
  puts "next -- execute next line \n
  step -- step into next function call \n
  continue -- continue through stack"
  puts "insira o nome do usuário"
  @nome_do_usuario = gets.chomp
  puts "insira o senha"
  @senha = gets.chomp
end

Dado(/^preencher nome de usuário e senha$/) do
  herokuapp_screen = HerokuappScreen.new
  herokuapp_screen.preenche_nome_usuario @nome_do_usuario
  herokuapp_screen.preenche_senha @senha
end
