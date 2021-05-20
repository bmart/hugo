---
title: "Learnings May 20 2021"
date: 2021-05-20T13:21:08Z
draft: false
---

* Advanced django training -  https://django-advanced-training.readthedocs.io/en/latest/
    * The as_view method creates and returns a new function that is used as a Django view. Here we can see that even class-based views are simply just function-based views when they are actually used
    * MRO - algorithm for determining which class to call in multiple inheritance
    * Django's signal dispatcher allows senders to notify receivers (or handlers) that an action has occurred. This is helpful for decoupling code and when you have different pieces of code that are interested in the same event. Signals are like event-based programming. You can hook up callback functions that get executed when specific events happen.
        * Finally, it is important to understand that signals are synchronous or blocking. 
* Javascript - destructuring - https://dmitripavlutin.com/javascript-object-destructuring/
    * const { identifier = defaultValue } = expression; /* to set default value */
    * aliases
       - const { identifier: aliasIdentifier } = expression;
       - not same as type assignment in typescript
       - const { realName:  MyName } = obj
       - allows you to use MyName instead of realName
    * const { nestedObjectProp: { identifier } } = expression;
       - equivalent to const identifier = expression.nestedObjectProp.identifier;

                const hero = {
                  name: 'Batman',
                  realName: 'Bruce Wayne',
                  address: {
                    city: 'Gotham'
                  }
                };

                // Object destructuring:
                const { address: { city } } = hero;
    * dynamic - at runtime 
        - const { [propName]: identifier } = expression;
    * The rest syntax is useful to collect the remaining properties after the destructuring

* good javascript/react site - https://dmitripavlutin.com/
* ecs - https://www.freecodecamp.org/news/amazon-ecs-terms-and-architecture-807d8c4960fd/
    * taskdef - definition of containers involved in task
    * task - instance of taskdef
    * service - determines scaling/load balancing of that task
    * ecs container instance - ec2 running docker and an ecs container agent to communicate back to ecs
    * ecs cluster - cluster of container instances, may contain multiple services

        We have seen how a Dockerized application can be represented by a Task Definition that has a one-to-one relationship with a Service which in turn uses it to create many different Task instances.

        This Service is deployed to a Cluster of ECS Container Instances that provide the pool of resources needed to run and scale your application. Additional Services can be deployed to the same Cluster.

        Amazon ECS, or any container management service, aims to make this as simple as possible, abstracting away many complexities of running infrastructure at scale.
