Feature:
Scenario OWNER_ADMIN wants to check permissions for Owner Controller
  Given User has acces to PetClinic with username "Florin" and password "123456test"
  When User performs a GET request "/owners"
  Then User will have status code "200"

  Scenario: OWNER_ADMIN wants to check permissions for Specialty Controller
    Given User has acces to PetClinic with username "Florin" and password "123456test"
    When User performs a GET request "/specialties"
    Then User will have status code "400"

    Scenario: OWNER_ADMIN wants to check permissions for PetTypes Controller
      Given User has acces to PetClinic with username "Florin" and password "123456test"
      When User performs a GET request "/pettypes"
      Then User will have status code "200"

       Scenario: OWNER_ADMIN wants to check permissions for Vet Controller
         Given User has acces to PetClinic with username "Florin" and password "123456test"
         When User performs a GET request "/pettypes"
         Then User will have status code "200"

          Scenario: VET_ADMIN wants to check permissions for Specialities Controller
            Given User has acces to PetClinic with username "stefania" and password "1234test"
            When User performs a GET request "/specialties"
            Then User will have status code "200"

            Scenario: VET_ADMIN wants to check permissions for Owner Controller
              Given User has acces to PetClinic with username "stefania" and password "1234test"
              When User performs a GET request "/owners"
              Then User will have status code "400"

              Scenario: VET_ADMIN wants to check permissions for Vets Controller
                 Given User has acces to PetClinic with username "stefania" and password "1234test"
                 When User performs a GET request "/vets"
                 Then User will have status code "200"

                Scenario: VET_ADMIN wants to check permissions for Vet Controller
                  Given User has acces to PetClinic with username "stefania" and password "1234test"
                   When User performs a GET request "/visits"
                    Then User will have status code "400"












