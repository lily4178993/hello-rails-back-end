# README <a name="readme-top"></a>

## Table of Contents

- [About Project](#about-project)
- [Built With](#built-with)
- [Tech Stack](#tech-stack)
- [Key Features](#key-features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
- [Usage](#usage)
- [Tests](#tests)
- [Author](#author)
- [Future Features](#future-features)
- [Contributing](#contributing)
- [Show your support](#show-your-support)
- [Acknowledgements](#acknowledgements)
- [License](#license)

## About Project <a name="about-project"></a>

The "Hello Rails" app is a straightforward Rails API designed to demonstrate the creation of a RESTful API service with Ruby on Rails. This service's sole functionality is to fetch a random greeting from a predefined list stored in a PostgreSQL database. It serves as an excellent starting point for understanding Rails API development and database integration.

## Built With <a name="built-with"></a>

- Ruby on Rails
- PostgreSQL

## Tech Stack <a name="tech-stack"></a>

- **Ruby version**: 3.2.2
- **Rails version**: Specify your Rails version
- **Database**: PostgreSQL

## Key Features <a name="key-features"></a>

- API endpoint to fetch a random greeting
- PostgreSQL database integration
- Simple and clean codebase focusing on RESTful API design


## Getting Started <a name="getting-started"></a>

### Prerequisites <a name="prerequisites"></a>

- Ruby 3.2.2
- Rails 7.1
- PostgreSQL

### Setup <a name="setup"></a>

1. Clone this repository

```bash
git clone https://github.com/lily4178993/hello-rails-back-end.git
cd hello-rails-back-end
```

2. Check your Ruby version

```bash
ruby -v
```

3. Install dependencies

```bash
bundle install
```

4. Update your database informations
  Go to `config/database.yml`. Replace `your_postgres_username` and `your_postgres_password` with your database informations
    ```ruby
      default: &default
      adapter: postgresql
      encoding: unicode
      pool: 5
      username: [your_postgres_username]
      password: [your_postgres_password]
      host: localhost

    development:
      <<: *default
      database: [your_database_for_development]

    test:
      <<: *default
      database: [your_database_for_test]

    production:
      <<: *default
      database: [your_database_for_production]
    ```


### Install <a name="install"></a>

Populate greetings data in the database by running the following commands:

```bash
rails db:create
rails db:migrate
rails db:seed
```

### Usage <a name="usage"></a>

To start the server, run:

```bash
rails s
```

Navigate to `http://localhost:3000/api/v1/greeting` to see the API in action, returning a random greeting.

## Tests <a name="tests"></a>

To run the test suite, execute the following commands:

```bash
rails db:migrate RAILS_ENV=test
rspec
```

## Author <a name="author"></a>

- Nelly Telli - [@lily4178993](https://github.com/lily4178993/)

## Future Features <a name="future-features"></a>

- Extend the API to include more diverse greetings
- Implement other operations (e.g., adding or removing greetings)

## Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/lily4178993/hello-rails-back-end/issues).

## Show your support <a name="support"></a>

Give a ⭐️ if this project helped you!

## Acknowledgements <a name="acknowledgements"></a>

- Ruby on Rails Community
- PostgreSQL Team
- Microverse

## License <a name="license"></a>

This project is [MIT licensed](./LICENSE).

<p align="right">(<a href="#readme-top">back to top</a>)</p>
