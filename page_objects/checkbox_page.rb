class BrowserContainer
    def initialize(browser)
        @browser = browser
    end
end

class Site < BrowserContainer
    def checkbox_page
      @checkbox_page = CheckboxPage.new(@browser)
    end

    def close
      @browser.close
    end
end # Site

class CheckboxPage < BrowserContainer
    URL = "http://the-internet.herokuapp.com/checkboxes"

    def open
        @browser.goto URL
        self
    end

    def clear_checkbox_1;
        checkbox_1.clear
    end

    def check_checkbox_1;
        checkbox_1.check
    end

    def clear_checkbox_2
        checkbox_2.clear
    end

    def check_checkbox_2
        checkbox_2.check
    end

    def checkbox_1
        @browser.checkbox
    end

    def checkbox_2
        @browser.checkbox(text: ' checkbox 2')
    end
end

# class Site < BrowserContainer
#     def checkbox_page
#         @checkbox_page = checkbox_page
#     end
# end