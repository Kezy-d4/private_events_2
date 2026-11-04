# Private Events

This project was developed as part of the Rails course of The Odin Project curriculum. See the [assignment](https://www.theodinproject.com/lessons/ruby-on-rails-private-events). Private Events is a simple event management app that allows users to host, attend, manage, browse, and invite each other to events. The signature feature of the platform involves event visibility: hosts can set their events as either private or public. Public events are accessible to every authenticated user, while private events are accessible only to the host and invited attendees.

The website is [deployed live](https://private-events-2-web-service.onrender.com), so feel free to register some accounts and experiment with its features there. I feel that this was the first truly substantial project in TOP's Rails course, allowing me to practice combining many of the pieces I've learned about so far. I gained experience working with the MVC pattern, database schemas, model associations and validations, ERB, deployment, and more.

User authentication is implemented via [Devise](https://github.com/heartcombo/devise). Users must authenticate before being granted any access to the platform. Devise's account recovery and persistent session mechanisms are enabled, though account management and deletion are not implemented.
