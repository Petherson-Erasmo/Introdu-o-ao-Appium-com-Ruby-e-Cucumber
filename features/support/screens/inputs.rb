class Checkbox
    def check_locator(expect_text)
        return "//android.widget.CheckBox[contains(@text, '#{expect_text}')]"
    end

    def click_check(expect_text)
        return find_element(xpath: check_locator(expect_text)).click
    end

    def check_result(expect_text)
        return find_element(xpath: check_locator(expect_text))
    end 
end

class RadioButton
    def radio_locator(expect_text)
        return "//android.widget.RadioButton[contains(@text, '#{expect_text}')]"
    end

    def click_radio(expect_text)
        return find_element(xpath: radio_locator(expect_text)).click
    end

    def radio_result(expect_text)
        return find_element(xpath: radio_locator(expect_text))
    end 
end