package StepDefs;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

import static io.restassured.RestAssured.given;

public class MyStepdefs {

    private RequestSpecification request;
    private Response response;

    @Given("^User has acces to PetClinic with username \"([^\"]*)\" and password \"([^\"]*)\"$")
    public void userHasAccesToPetClinicWithUsernameAndPassword(String arg0, String arg1) throws Throwable {
        request = given().
                baseUri("http://bhdtest.endava.com:8080/petclinicSecured/api").
                auth().
                preemptive().basic(arg0, arg1).
                contentType(ContentType.JSON);
    }

    @When("^User performs a GET request \"([^\"]*)\"$")
    public void userPerformsAGETRequest(String path) throws Throwable {
        response = request.when().get(path);

    }

    @Then("^User will have status code \"([^\"]*)\"$")
    public void userWillHaveStatusCode(int statusCode) throws Throwable {
        response.then().statusCode(statusCode);
        System.out.println(response.asString());
    }


    }


