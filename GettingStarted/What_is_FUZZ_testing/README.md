# Fuzz testing basics

```I pledge to the safety of my smart contract to embrace the uncertainty of the unknown, armed with the resilience of preparation. So HELP me FOUNDRY!```

# What is FUZZ testing
```The security of a system depends on the best known method to break it. What implications, other than replacement, might arise if you could break your own software before an adversary does? lol```

Fuzzing or fuzz testing is a dynamic testing technique that is based on the idea of feeding random data to a program in an attempt to break it [Science Direct](https://www.sciencedirect.com/topics/computer-science/fuzzing) 

# is Expected result == Actual result?

An invariant is a value or condition that is expected to be consistent during the execution of a process. [Technopedia](https://www.techopedia.com/definition/20135/invariant#:~:text=An%20invariant%20is%20a%20value,the%20integrity%20of%20computer%20programs.). When it comes to Fuzz testing, we are concerned about the integrity of our invariant. Invariant in the world of smart contracts could be:
1. Only possible to elect just a winner in a voting process.
2. A storage variable should return expected value
Fuzz testing is basically an invariant testing.
# Practical example
1. check out: https://github.com/stevegee1/FOUNDRY_COVEN/tree/main/GettingStarted/What_is_FUZZ_testing/src
2. Check out: https://github.com/stevegee1/FOUNDRY_COVEN/tree/main/GettingStarted/What_is_FUZZ_testing/test


# Up Next
1. Types of Fuzz testing
2. Explaining each fuzz parameter in the configuration file, foundry.toml

