package hu.unideb.inf;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

import java.util.Optional;

import static org.junit.Assert.fail;

public class SearchStepDefs extends AbstractStepDefs {


    @When("the Search button is clicked")
    public void theSearchButtonIsClicked() {
        homePage.clickSearchButton();
    }

    @Then("the {string} search message is displayed.")
    public void theSearchResultMessageIsShown(String msg) {
        Optional<String> errorMessage = homePage.getSearchResultMessage();
        if (errorMessage.isPresent()) {
            Assert.assertEquals(msg, errorMessage.get());
        } else {
            fail();
        }
    }

    @Then("the {string} search error message is shown")
    public void theSearchResultErrorIsShown(String msg) {
        Optional<String> errorMessage = homePage.getSearchResultError();
        if (errorMessage.isPresent()) {
            Assert.assertEquals(msg, errorMessage.get());
        } else {
            fail();
        }
    }

}
