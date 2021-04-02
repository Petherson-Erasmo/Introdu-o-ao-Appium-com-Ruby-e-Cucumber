class LoginScreen
    def sign_in(email, password)
        find_element(id: "io.qaninja.android.twp:id/etEmail").send_keys(email)
        find_element(id: "io.qaninja.android.twp:id/etPassword").send_keys(password)
        find_element(id: "io.qaninja.android.twp:id/btnSubmit").click
    end

    def toast
        return find_element(xpath: "//android.widget.Toast")
    end

end