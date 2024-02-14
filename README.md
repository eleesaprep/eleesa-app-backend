# Student Dashboard API App

<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [Student Dashboard](#Student Dashboard)
- [📗 Table of Contents](#-table-of-contents)
- [📖 Student Dashboard app ](#-StudentDashboard-app-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo \& preview ](#-live-demo--preview-)
    - [Live Demo](#live-demo-) 
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Usage](#usage)
  - [👥 Author ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Student Dashboard API app <a name="about-project"></a>

**Student Dashboard** is a back-end application, for Student Dashboard frontend. It is based on an app to allow logged in students to take quizzes and track their progresses.

**Student Dashboard** front-end application is available [here](https://github.com/Mylo16/ee-prep/).

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

- Ruby
- PostgreSQL

</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Use of Ruby on Rails framework.**
- **Back-end application**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo & preview <a name="live demo"></a>

### API URL 
You can use this URL address to consume data from my API, [[https://mysite-nprl.onrender.com](https://mysite-nprl.onrender.com)


<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

Follow these steps in order to run ruby code.

### Prerequisites

First, you need to ensure that you have Rails and Ruby installed on your computer.

### Setup

It varies depending on your operating system so here are some links to help you install it on [Windows](https://gorails.com/setup/windows/10) and on [Ubuntu](https://www.ruby-lang.org/en/documentation/installation/#apt).

For MacOS run the following commands

```sh
  brew install rbenv ruby-build
  # Add rbenv to bash so that it loads every time you open a terminal
  echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
  source ~/.bash_profile

  # Install Ruby
  rbenv install 3.0.1
  rbenv global 3.0.1
  ruby -v
```

This example shows how to install Ruby 3.0.1 which was the latest version in April 2021, but you can check to see if there is a newer version [here](https://www.ruby-lang.org/en/downloads/releases/). Iy is also assumed that you have [homebrew](https://brew.sh/) already installed on your Mac.

### Usage

Before running the project, make sure you have Ruby and Rails installed on your system. You can refer to the [official Ruby on Rails installation guide](https://guides.rubyonrails.org/getting_started.html) for instructions on how to install them.
Once you have ruby installed, [clone this repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)

First navigate to the project directory in your terminal:
```
  cd your-project-directory
```

Then install the required gems by running in the terminal:
```
  bundle install
```
Create the database by running:
```
  rails db:create
```
Run the database migrations to set up the database schema:
```
  rails db:migrate
```
Optionally, you can seed the database with initial data (if the project provides seed data) by running:
```
  rails db:seed
```
Start the Rails server:
```
  rails server
```

<!-- AUTHORS -->

## Author <a name="authors"></a>

👤 **Eric Antwi**

- GitHub: [@Mylo16](https://github.com/Mylo16)
- Twitter: [@EricAntwi384](https://twitter.com/EricAntwi384)
- LinkedIn: [ericopokuantwi](https://www.linkedin.com/in/ericopokuantwi/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> The following are the future features that will be added to the project.

- [ ] **Add images and videos section.**
- [ ] **Add chat section.**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project you can give me a hand by recommending me to potential employers! 😉🤝

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank those who have motivated me to keep on fighting despite how tough the journey may become.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
