class Buttons
    def short_click
        return find_element(:id, "io.qaninja.android.twp:id/short_click").click
    end

    def long_click
        return find_element(:id, "io.qaninja.android.twp:id/long_click")
    end
end