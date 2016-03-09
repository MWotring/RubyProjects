# RubyRspecPageObjectProject

This project is a small implementation of page objects. There is a generic Page class and two specific pages that inherit from it. RSpec drives the testing, starting at the home page, ensuring it has arrived there, then clicking a link to the second page. Once that has loaded it once more checks the page title before clicking the logo image link to return to the home page for a final title check.

To run this project, you'll need to have Ruby installed. You can choose your preferred method at https://www.ruby-lang.org/en/documentation/installation/.
You will also need RSpec. After installing Ruby, run ```gem install rspec```
Then, get Selenium web driver. Run ```gem install selenium-webdriver```

Now, You can run the project by navigating to the folder above /spec. Run ```rspec spec```

