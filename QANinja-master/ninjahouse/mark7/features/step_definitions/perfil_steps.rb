Dado('que estou logado com {string} e {string}') do |email, senha|
  @login_page = LoginPage.new
  @perfil_page = PerfilPage.new
  @login_page.load
  @login_page.logar(email, senha)
end

Dado('acesso o meu perfil') do
  click_link 'Perfil'
  #clik_link pois é um elemento do tipo A
end

Quando('completo o meu cadastro com {string} e {string}') do |empresa, cargo|
    @perfil_page.completa(empresa,cargo)
end

Então('devo ver a mensagem de atualização cadastral:') do |mensagem|
    expect (@perfil_page.alerta.text).to eql mensagem
end
