Dado('que acesso a tela Avengers') do
    @nav.tap_hamburger
    @nav.tap_by_text("AVENGERS")
    @nav.tap_by_text("LISTA")
end
  
Quando('eu apago o Capitão América') do
    # start_x => posicao inicial na horizontal
    # start_y => posicao inicial na vertical
    # offset_x => posicao final na horizontal
    # offset_y => posicao fina na vertical
    # duration => em milesegundos

    # Checkpoint para garantir que está na tela certa
    # find_element(id: "io.qaninja.android.twp:id/rvList")                          # Implementado pelo professor
    @avengers.lista

    coord = {start_x: 0.93, start_y: 0.18, offset_x: 0.48, offset_y: 0.18, duration: 2000}

    Appium::TouchAction.new.swipe(coord).perform

    # find_element(id: "io.qaninja.android.twp:id/btnRemove").click                 # Implementado pelo professor
    @avengers.remove
end
  
Então('devo ver a seguinte mensagem: {string}') do |expect_text|
    
    expect(@avengers.message.text).to eql expect_text
end