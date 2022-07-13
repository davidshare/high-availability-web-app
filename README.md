# AWS VPC, Loadbalancer, and Autoscaling Group.

This repository contains cloudformation scripts that sets up a highly available server on AWS and deploys a web application

## Description
  This template deploys the following components
  - A VPC
  - Internet gateway
  - 2 Nat gateways
  - 4 route tables
  - 2 elastic ips
  - 2 public subnets
  - 2 private subnet and 1 public subnet
  - An Autoscaling group
  - A loadbalancer
  - A bastion host

## Diagram
![AWS VPC, Autoscaling, group, and load balancer diagram.](AWS%20VPC%20with%20autoscaling.jpeg)

## Deploying this infrastructure

### Validate the stack
Run the following command
`./run.sh validate infra.yaml`

### Create the stack
- update the parameters.json file if you wish to change the values
- Run the following command
 `./run.sh create <NAME OF AWS STACK> infra.yaml parameters.json`


### Update the stack
- make the changes to the resources you need to update
- Run the following command
`./run.sh update <NAME OF AWS STACK> infra.yaml parameters.json`


### delete the stack
- Run the following command
`./run.sh delete <NAME OF AWS STACK>`