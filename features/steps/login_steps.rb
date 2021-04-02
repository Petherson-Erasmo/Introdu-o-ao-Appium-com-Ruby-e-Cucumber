Dado('que acesso a tela de login') do
    @nav.tap_hamburger
    @nav.tap_by_text("FORMS")
    @nav.tap_by_text("LOGIN")
end
  
Quando('submeto minhas credenciais:') do |table|
    user = table.rows_hash # converte a tabela em um hash de chave e valor
    @login.sign_in(user[:email], user[:senha])
end
  
Então('devo ver a notificação: {string}') do |notice|
    # log(get_source) # pega o xml da tela exibe no terminal
    
    expect(@login.toast.text).to eql notice
end