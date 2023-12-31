# Website Navigation Tests with Robot Framework

Automated tests for website navigation using Robot Framework.

## Project Overview

This project aims to ensure the seamless functionality of a website's navigation through automated tests. By utilizing Robot Framework, the tests focus on checking links, navigation menus, and page titles to guarantee a smooth user experience.

## Key Features

- **Link Verification:** Checks the integrity of links to ensure they navigate to the correct pages.
- **Menu Navigation:** Validates the functionality of navigation menus by clicking on key items.
- **Page Title Verification:** Confirms that each page's title aligns with the expected title after navigation.

## Instructions

### Prerequisites

- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html): Install using:
  ```bash
  pip install robotframework-seleniumlibrary
  ```

- [Google Chrome Driver](https://sites.google.com/chromium.org/driver/): Download and ensure the executable is in your system's PATH.

### Clone and Run

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/Sahar-dev/website-navigation-tests.git
   ```

2. **Navigate to the Project Directory:**
   ```bash
   cd website-navigation-tests
   ```

3. **Run the Tests:**
   ```bash
   robot website_navigation_tests.robot
   ```

## Test Details

The tests simulate user interaction by opening a browser, accessing the specified website, and systematically clicking on navigation menu links ("Services", "About Us", "Contact", "Home"). Post navigation, the tests verify whether the title of each page aligns with the expected title, ensuring a consistent and reliable user experience.

## Customization

Feel free to adapt the test data and expected titles in the \`tests/website_navigation_tests.robot\` file to match your specific website structure and content. This flexibility allows seamless integration with a variety of web applications.

Happy coding!
