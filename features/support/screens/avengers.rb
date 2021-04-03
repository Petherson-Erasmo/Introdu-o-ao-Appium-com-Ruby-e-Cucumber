class Avengers
    def lista
        return find_element(id: "io.qaninja.android.twp:id/rvList")
    end

    def remove
        return find_element(id: "io.qaninja.android.twp:id/btnRemove").click
    end

    def message
        return find_element(id: "io.qaninja.android.twp:id/snackbar_text")
    end
end