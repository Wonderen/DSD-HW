
# In this homework, the question as below:

Simulate an n-bit counter using generic and write a test bench for it. This counter should be able to perform the following operations depending on the type of user request.
1 - Counting ascending
2 - Counting in descending order
3 - Counting steps for the counter to be received from the input.
4 - Specify the start of counting at the entrance


# How did we solve it:

The implementation of this counter was asynchronous and the input changes were not dependent on the clock. A reset was also defined to reset the value inside the counter, which is highly active here.

First we started implementing the main body of the counter code and wrote it generic.
After writing the code of a simple counter, we started to make conditions to implement the required logic in case of a question.
We also defined a number of new ports. We wrote the ports "in_data", "en_data" and "step." When en_data is 1, the initial value (in_data) is assigned to the counter. 
In other cases, “counter + step” is added to the counter value. Step is considered as a sign number to be assigned a negative value if we need to count down.
After fully implementing the code, we wrote a bench test for it and determined the values ​​and latency of each signal.
