# README

<div align="center">
  <div>
    <img src="https://img.shields.io/badge/-Ruby_On_Rails-black?style=for-the-badge&logoColor=white&logo=rubyonrails&color=ff0000" alt="TypeScript" />
    <img src="https://img.shields.io/badge/-PostgreSQL-black?style=for-the-badge&logoColor=white&logo=postgresql&color=4169E1" alt="postgresql" />
    <img src="https://img.shields.io/badge/-Tailwind_CSS-black?style=for-the-badge&logoColor=white&logo=tailwindcss&color=06B6D4" alt="tailwindcss" />
  </div>

  <h3 align="center">An Open Source Medical Record Management System</h3>

   <div align="center">
     Build this project step by step with given below
    </div>
</div>

## 📋 <a name="table">Table of Contents</a>

1. 🤖 [Introduction](#introduction)
2. ⚙️ [Tech Stack](#tech-stack)
3. 🔋 [Features](#features)
4. 🤸 [Quick Start](#quick-start)
5. 🕸️ [Snippets (Code to Copy)](#snippets)

## 🚨 Tutorial

This repository contains the code for your self hosted Medical Record Management System.

## <a name="introduction">🤖 Introduction</a>

Built with Ruby on Rails, TypeScript, and Postgres, the Medical Record Management System is a production-grade platform featuring a public-facing app and an admin interface. It offers advanced functionalities like #TODO.

If you're getting started and need assistance or face any bugs, feel free to create an issue at https://github.com/dambar/medical_record_management/issues


## <a name="tech-stack">⚙️ Tech Stack</a>

- Ruby on Rails
- PostgreSQL
- TypeScript
- Tailwind CSS

## <a name="features">🔋 Features</a>

### Features of the Medical Record Management System Project

👉 **Open-source Authentication**: #TODO

👉 **Bed Management**: #TODO

👉 **Appointment Management**: #TODO

👉 **Role Management**: #TODO

👉 **Advanced Functionalities**: Caching, rate-limiting, DDoS protection, and custom notifications.  

👉 **Database Management**: Postgres with Neon/Self hosted for scalable and collaborative database handling.

👉 **Real-time Media Processing**: #TODO

👉 **Efficient Caching**: #TODO

👉 **Database ORM**: #TODO

👉 **Modern UI/UX**: Built with TailwindCSS, and other cutting-edge tools.  

👉 **Technology Stack**: Ruby on Rails with TypeScript for scalable development

👉 **Seamless Email Handling**: #TODO

and many more, including code architecture and reusability 

## <a name="quick-start">🤸 Quick Start</a>

Follow these steps to set up the project locally on your machine.

**Prerequisites**

Make sure you have the following installed on your machine:

- [Git](https://git-scm.com/)
- [Postgresql](https://docs.docker.com/engine/install/) (If you want to self host your postgresql)
- [Ruby](https://www.ruby-lang.org/en)
- [Node.js](https://nodejs.org/en)
- [yarn](https://yarnpkg.com/) (Node Package Manager)

**Cloning the Repository**

```bash
git clone https://github.com/dambar08/medical_record_management.git
cd medical_record_management
```

**Installation**
Install the project dependencies using bundler and yarn:

```bash
# If you want to run your own postgres, you will need docker
bundle
yarn
```

**Setvices**
Optional: If you want to use a self hosted postgres:

```bash
yarn run docker:services:up
```

**Set Up Environment Variables**

Copy the sample .env.local.example file to .env.local

```bash
cp .env.local.example .env.local
```

Replace the placeholder values with your actual ImageKit, NeonDB, Upstash, and Resend credentials. You can obtain these credentials by signing up on the [ImageKit](https://imagekit.io/), [NeonDB](https://fyi.neon.tech/), [Upstash](https://upstash.com/), and [Resend](https://resend.com/).

**Running the Project**

```bash
bin/setup

# Run application
bin/dev
```

Open [http://localhost:3000](http://localhost:3000) in your browser to view the project.

## <a name="snippets">🕸️ Snippets</a>

<details>
<summary><code>db/seeds.rb</code></summary>

```ruby
dummy_authors = [
  { firstname: "Stuart", lastname: "Russell" },
  { firstname: "Peter", lastname: "Norvig" },
  { firstname: "James", lastname: "Kurose" },
  { firstname: "Keith", lastname: "Ross" }
]
dummy_authors.each do |author|
  Author.create!(author)
end

dummy_genres = [
  { name: "Artificial Intelligence" },
  { name: "Networking" }
]
dummy_genres.each do |genre|
  Genre.create!(genre)
end

dummy_books = [
  {
    title: "Artificial Intelligence: A Modern Approach",
    description: "A leading textbook on artificial intelligence, offering a deep dive into algorithms, machine learning, and robotics, suitable for both beginners and professionals.",
    summary: "Artificial Intelligence: A Modern Approach is a comprehensive guide to the field of AI, combining foundational concepts with cutting-edge research. The book covers topics like search algorithms, knowledge representation, machine learning, and robotics. \n\nIts clear explanations and practical examples make it a valuable resource for students, researchers, and industry professionals. By bridging theory and application, this book serves as a cornerstone for understanding and advancing AI technologies. \n\nThe book is suitable for both beginners and professionals, offering a deep understanding of the fundamental concepts and applications of AI.",
    rating: 4,
    cover_color: "#c7cdd9",
    total_copies: 10,
    authors: [
      Author.find_by(firstname: "Stuart", lastname: "Russell"),
      Author.find_by(firstname: "Peter", lastname: "Norvig")
    ],
    genres: [
      Genre.find_by(name: "Artificial Intelligence".downcase)
    ]
  },
  {
    title: "Artificial Intelligence: A Modern Approach",
    description: "A comprehensive introduction to computer networking, using a top-down approach to explain protocols, architecture, and applications.",
    summary: "Computer Networking: A Top-Down Approach' provides a thorough and accessible introduction to the world of computer networks. James Kurose and Keith Ross present networking concepts by starting with high-level applications like web browsers and email, gradually moving down to the underlying layers of networking protocols. \n\nThe book covers essential topics such as HTTP, DNS, TCP/IP, and network security. Each chapter includes practical examples, hands-on exercises, and real-world scenarios to help readers grasp complex concepts. The authors also explore emerging trends like cloud computing and the Internet of Things, ensuring that the material remains relevant in a rapidly evolving field. \n\nWhether you're a student, professional, or enthusiast, this book offers a clear and engaging path to understanding the architecture and operation of modern computer networks.",
    rating: 5,
    cover_color: "#f7a13e",
    total_copies: 25,
    authors: [
      Author.find_by(firstname: "James", lastname: "Kurose"),
      Author.find_by(firstname: "Keith", lastname: "Ross")
    ],
    genres: [
      Genre.find_by(name: "Networking".downcase)
    ]
  }
]
dummy_books.each do |book|
  Book.create!(book)
end
```

</details>

Want to work together? You can reach out to me by creating an issue at https://github.com/dambar08/medical_record_management/issues