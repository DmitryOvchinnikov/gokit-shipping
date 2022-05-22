# shipping

The study example from [go-kit examples](https://github.com/go-kit/examples). This example demonstrates a "real-world" application with multiple services.

## Description

---

The implementation is based on the container shipping domain from the [Domain Driven Design](https://www.amazon.com/Domain-Driven-Design-Tackling-Complexity-Software/dp/0321125215) book by Eric Evans. This example is a somewhat stripped down version to demonstrate the use of Go kit.

The [original Go application](https://github.com/marcusolsson/goddd) is maintained separately and accompanied by an [AngularJS application](https://github.com/marcusolsson/dddelivery-angularjs) as well as a mock [routing service](https://github.com/marcusolsson/pathfinder).

### Organization

The app consists of three services: `booking`, `handling`, `tracking`. Each of these is an individual Go kit service.

- `booking` used by the shipping company to book and route cargos.
- `handling` used by staff around the world to register whenever the cargo had been received, loaded, etc.
- `tracking` used by customer to track the cargo along the route.

There are also a few pure domain packages that contain some intricate business-logic.
They provide domain objects and services that are used by each app service to provide use-cases for the customer-user.

`inmem` contains in-memory implementation for the repositories found in the domain packages.

The `routing` package provide a *domain service* that is used to query an external app for possible routes.