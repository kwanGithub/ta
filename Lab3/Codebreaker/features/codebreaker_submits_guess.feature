 Feature: code-breaker submits guess

The code-breaker submits a guess of four numbers. The game marks the 	 guess with + and - signs.

For each number in the guess that matches the number and psition of a number in the secret code, the mark includes one + sign. For each number in the guess that matches the number but not the position of a number in the secret code, the mark  includes one - sign.


	Scenario Outline: submit guess
	Given the secret code is "<code>"
	When I guess "<guess>"
	Then the mark should be "<mark>"

	Scenarios: no matches
	| code | guess | mark |
	| 1234 | 5555  |      |

	Scenarios: 1 number correct
	| code | guess | mark |
	| 1234 | 1555  |  +   |
	| 1234 | 2555  |  -   |

	Scenarios: 2 numbers correct
	| code | guess | mark |
	| 1234 | 5254  |  ++  |
	| 1234 | 5154  |  +-  |
	| 1234 | 2545  |  --  |

	Scenarios: 3 numbers correct
	| code | guess | mark |
	| 1234 | 5234  |  +++ |
	| 1234 | 5134  |  ++- |
	| 1234 | 5124  |  +-- |
	| 1234 | 5123  |  --- |

	Scenarios: all numbers correct
	| code | guess | mark |
	| 1234 | 1234  | ++++ |
	| 1234 | 1243  | ++-- |
	| 1234 | 1423  | +--- |
	| 1234 | 4321  | ---- |




	# Här beskriver ett fall på hur funktionen skall fungera
#	Scenario: 1 all exact matches
		# Givet är att den Hemliga koden är 1234
#		Given the secret code is "1234"
		# När jag gisar på 1234
#		When I guess "1234"
		# Då skall ++++ visas
#		Then the mark should be "++++"
		# Flera fall
#	Scenario: 2 exact matches and 2 number matches
#		Given the secred code is "1234"
#		When I guess "1243"
#		Then the mark should be "++--"


	# Här har vi ytterligare fall 
#		Scenario: 3 exact match and 3 number matches
#		Given the secret code is "1234"
#		When I guess "1342"
#		Then the mark should be "+---"


#	Scenario: 4 number matches
#		Given the secret code is "1234"
#		When I guess "4321"
#		Then the mars should be "----"

	# Vi kan skriva nästa hur många scenario som helst för dett spel
	# för att underlätta detta kan man i stället skriva så här med 1     # scenario

#	Scenario Outline: Submit guess
#	Givet the secre cod is "<code>"
#	When I guess "<guess>"
#	Then the mark should be "<mark>"


#	Scenarios: all numbers correct
#	| code | guess | mark |
#	| 1234 | 1234  | ++++ |
#	| 1234 | 1243  | ++-- |
#	| 1234 | 1423  | +--- |
#	| 1234 | 4321  | ---- |

# Detta vore det rätta sätta för att täcka upp alla

