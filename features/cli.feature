Feature: Printing some stuff
  Scenario: Happy path, running with no args
    When I run `one`
    Then it should pass with:
      """
      I'm a one!
      """
  Scenario: Getting help
      When I run `one --help`
      Then it should pass matching:
        """
        --help
        """
  Scenario: Checking the version
      When I run `one --version`
      Then it should pass matching:
        """
        \d+\.\d+\.\d+
        """