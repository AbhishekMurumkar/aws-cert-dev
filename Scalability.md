# Scalability

Application that can able to handle as much as workload as possible by increasing the number of resources to attain high time availability

## types

1. Vertical : (Scale up/down)
   1. Means increasing the size of the instance
   2. Like increasing the CPU from t2.micro to t2.large
   3. this is common in distributed systems like databases. Redis, RDS, cache services can be example here.
   4. usually a hardware limit

2. Horizontal(=elasticity) : (Scale out/in)
   1. this means that we increase the instances or systems for your application
   2. this implies we have distributed systems
   3. easy to implement

# High Availiability

1. this goes in hand with horizontal scaling
2. means running your app in atleast 2 different datacenters(==Availability zones)
3. goal is to survive data loss
4. lets say your apps runs on horizontal scaling on 2 datacenters, if one data center goes down, another datacenter will be available to serve your application
5. For this purpose we use **_Auto Scaling Group_** and **_Load Balancers_**

## Types

1. Passive : Having instances in multiple datacenters
2. Active : horizontal scaling

