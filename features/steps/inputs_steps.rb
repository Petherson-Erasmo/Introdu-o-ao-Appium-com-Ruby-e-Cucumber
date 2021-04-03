# @radio
Dado('que acesso a tela Botões de Radio') do
    @nav.tap_hamburger
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("BOTÕES DE RADIO")
end
  
Quando('eu escolho a opção {string}') do |expect_text|
    # @radio_locator = "//android.widget.RadioButton[contains(@text, 'Ruby')]"              # Implementado pelo professor
    # find_element(xpath:@radio_locator).click                                              # Implementado pelo professor
    @radio.click_radio(expect_text)
end
  
Então('{string} deve ser marcada') do |expect_text|
    # radio_result = find_element(xpath:@radio_locator)                                     # Implementado pelo professor
    expect(@radio.radio_result(expect_text).checked).to eql "true" # está retornando um tipo string
end

# @checkbox  e  @allCheckbox
Dado('que acesso a tela Checkbox') do
    @nav.tap_hamburger
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("CHECKBOX")
end

# @checkbox
Quando('eu marco a opção {string}') do |expect_text|
    # check_locator = "//android.widget.CheckBox[contains(@text, 'Ruby')]"                  # Implementado pelo professor
    # find_element(xpath: @check_locator).click                                             # Implementado pelo professor

    @checkbox.click_check(expect_text)
end

Então('{string} deve estar marcada') do |expect_text|
    # @check_result = find_element(xpath: @check_locator)                                   # Implementado pelo professor
    expect(@checkbox.check_result(expect_text).checked).to eql "true" # está retornando um tipo string
end

# @allCheckbox
Quando('eu marco as seguintes techs:') do |table|
    @techs = table.hashes # transforma em um array de hashes
    # log(@techs) # [{"tech"=>"Ruby"}, {"tech"=>"Java"}, {"tech"=>"Python"}, {"tech"=>"Javascript"}, {"tech"=>"C#"}, {"tech"=>"Robot Framework"}]
   
    @techs.each do |item|
        # log(item["tech"]) # Lista item por item dentro do loop
        # check_locator = "//android.widget.CheckBox[contains(@text, '#{item["tech"]}')]"   # Implementado pelo professor
        # find_element(xpath: check_locator).click                                          # Implementado pelo professor
        @checkbox.click_check(item["tech"])
    end
end

Então('todas essas opções devem estar marcadas') do
    @techs.each do |item|
        # check_locator = "//android.widget.CheckBox[contains(@text, '#{item["tech"]}')]"   # Implementado pelo professor
        # check_result = find_element(xpath: check_locator)                                 # Implementado pelo professor
        expect(@checkbox.check_result(item["tech"]).checked).to eql "true"
    end        
end