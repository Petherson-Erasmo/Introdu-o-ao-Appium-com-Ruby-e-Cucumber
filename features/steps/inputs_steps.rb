# @radio
Dado('que acesso a tela Botões de Radio') do
    @nav.tap_hamburger
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("BOTÕES DE RADIO")
end
  
Quando('eu escolho a opção Ruby') do
    @radio_locator = "//android.widget.RadioButton[contains(@text, 'Ruby')]"
    find_element(xpath:@radio_locator).click
end
  
Então('esta opção deve ser marcada') do
    radio_result = find_element(xpath:@radio_locator)
    expect(radio_result.checked).to eql "true" # está retornando um tipo string
end

# @checkbox  e  @allCheckbox
Dado('que acesso a tela Checkbox') do
    @nav.tap_hamburger
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("CHECKBOX")
end

# @checkbox
Quando('eu marco a opção Ruby') do
    @check_locator = "//android.widget.CheckBox[contains(@text, 'Ruby')]"
    find_element(xpath:@check_locator).click
end

Então('esta opção deve estar marcada') do
    @check_result = find_element(xpath: @check_locator)
    expect(@check_result.checked).to eql "true" # está retornando um tipo string
end

# @allCheckbox
Quando('eu marco as seguintes techs:') do |table|
    @techs = table.hashes # transforma em um array de hashes
    # log(@techs) # [{"tech"=>"Ruby"}, {"tech"=>"Java"}, {"tech"=>"Python"}, {"tech"=>"Javascript"}, {"tech"=>"C#"}, {"tech"=>"Robot Framework"}]
   
    @techs.each do |item|
        # log(item["tech"]) # Lista item por item dentro do loop
        check_locator = "//android.widget.CheckBox[contains(@text, '#{item["tech"]}')]"
        find_element(xpath: check_locator).click
    end
end

Então('todas essas opções devem estar marcadas') do
    @techs.each do |item|
        check_locator = "//android.widget.CheckBox[contains(@text, '#{item["tech"]}')]"
        check_result = find_element(xpath: check_locator)
        expect(check_result.checked).to eql "true"
    end        
end