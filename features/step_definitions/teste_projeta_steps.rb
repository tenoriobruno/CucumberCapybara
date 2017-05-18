# conding: utf-8

Dado(/^que estou no "([^"]*)"$/) do |site|
  visit site
end

Quando(/^preencher o campo username "([^"]*)"$/) do |username|
  fill_in "username", :with => username
end

Quando(/^preencher o campo password com o valor "([^"]*)"$/) do |password|
  fill_in "password", :with => password
end

Quando(/^clicar no botão "([^"]*)"$/) do |botao|
  click_on botao
end

Então(/^posso ver a mensagem "([^"]*)"$/) do |mensagem|
  page.has_content? mensagem
  sleep 2
end

