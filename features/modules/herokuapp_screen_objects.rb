module HerokuappScreenObjects
  include Capybara

  def preenche_nome_usuario valor
    fill_in @nome_usuario, :with => valor
  end

  def preenche_senha valor
    fill_in @senha, :with => valor
  end

  def clica local
    click_on local
  end

  def tem_mensagem? mensagem
    page.has_content? mensagem
  end

  def espera_por segundos
    sleep segundos
  end

  def acessa_herokuapp
    visit @https_site
    tem_mensagem? "Login Page"
  end
end