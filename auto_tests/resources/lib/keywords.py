import random
import string

from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait


@keyword("Generate Random Username")
def generate_random_username(base_name="player"):

    random_letters = ''.join(
        random.choices(string.ascii_lowercase, k=4)
    )

    random_numbers = ''.join(
        random.choices(string.digits, k=4)
    )

    username = f"{base_name}_{random_letters}{random_numbers}"

    BuiltIn().set_suite_variable("${USERNAME}", username)

    return username


@keyword("Computer Eventually Makes A Move")
def computer_eventually_makes_a_move():

    driver = BuiltIn().get_library_instance(
        "SeleniumLibrary"
    ).driver

    def computer_has_played(driver):

        cells = driver.find_elements(
            By.CSS_SELECTOR,
            "[data-testid^='cell-']"
        )

        for cell in cells:

            state = cell.get_attribute("data-state")

            if state == "o":
                return True

        return False

    WebDriverWait(driver, 3).until(computer_has_played)