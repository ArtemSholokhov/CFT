package examples;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import ru.testit.annotations.Description;
import ru.testit.annotations.Title;
import ru.testit.models.LinkType;
import ru.testit.services.Adapter;

import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class Steps {

    @When("get parameters {word} {word}")
    public void getParameters(String login, String password) {}
        @Then("return true")
        public void returnTrue () {
            Assert.assertTrue(true);
        }



    @When("get parameters1 {word} {word}")
    public void getParameters1(String city, String zipcode) {}
    @Then("return false")
    public void returnFalse() {
        Assert.assertTrue(false);
    }

}
