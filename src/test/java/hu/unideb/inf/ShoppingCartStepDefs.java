package hu.unideb.inf;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

import java.util.Optional;

import static org.junit.Assert.fail;

public class ShoppingCartStepDefs extends AbstractStepDefs {

    @When("the Cart url is clicked")
    public void theCartUrlIsClicked() {
        homePage.clickCartUrl();
    }

    @Then("the {string} cart message is displayed")
    public void theYourShoppingCartIsEmptyCartWarningMessageIsShown(String msg) {
        Optional<String> errorMessage = homePage.getCartWarningMessage();
        if (errorMessage.isPresent()) {
            Assert.assertEquals(msg, errorMessage.get());
        } else {
            fail();
        }
    }
}
