# @click_simples
Dado('que acesso a tela Clcik Simples') do
    @nav.tap_hamburger
    @nav.tap_by_text("BOTÕES")
    @nav.tap_by_text("CLIQUE SIMPLES")
end
  
Quando('faço um clcik simples') do
    # find_element(:id, "io.qaninja.android.twp:id/short_click").click              # Implementado pelo professor
    @buttons.short_click
end
  
Então('devo ver o texto: {string}') do |expect_text|
    expect(@toaster.toast.text).to eql expect_text
end

# @click_longo
Dado('que acesso a tela Click Longo') do
    @nav.tap_hamburger
    @nav.tap_by_text("BOTÕES")
    @nav.tap_by_text("CLIQUE LONGO")
end

Quando('faço um click Longooo') do
    # @button = find_element(:id, "io.qaninja.android.twp:id/long_click")           # Implementado pelo professor
    Appium::TouchAction.new.press(element: @buttons.long_click).wait(2000).release.perform
end

Então('devo ver o botão com o texto: {string}') do |expect_text|
    expect(@buttons.long_click.text).to eql expect_text
end