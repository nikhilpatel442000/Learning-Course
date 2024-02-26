# lib/tasks/generate_languages.rake

namespace :db do
  desc "Generate data for programming languages"
  task generate_courses: :environment do
    courses = [
      { name: "Ruby", description: "Ruby is a dynamic, open-source programming language focused on simplicity and productivity." },
      { name: "Python", description: "Python is a high-level, interpreted programming language known for its simplicity and readability." },
      { name: "Java", description: "Java is a widely-used, object-oriented programming language known for its portability and versatility." },
      { name: "JavaScript", description: "JavaScript is a programming language that enables interactive web pages and is essential for web development." },
      { name: "C", description: "C is a general-purpose, procedural programming language originally developed for system programming." },
      { name: "C++", description: "C++ is an extension of the C programming language with added features for object-oriented programming." },
      { name: "C#", description: "C# (pronounced 'C sharp') is a modern, object-oriented programming language developed by Microsoft." },
      { name: "PHP", description: "PHP is a server-side scripting language commonly used for web development and building dynamic web pages." },
      { name: "Swift", description: "Swift is a powerful and intuitive programming language developed by Apple for building iOS, macOS, watchOS, and tvOS apps." },
      { name: "Kotlin", description: "Kotlin is a modern, statically-typed programming language that runs on the Java Virtual Machine (JVM) and can be used for Android app development." },
      { name: "Go", description: "Go, also known as Golang, is a statically-typed, compiled programming language developed by Google known for its simplicity and efficiency." },
      { name: "Rust", description: "Rust is a systems programming language designed for safety, concurrency, and performance." },
      { name: "TypeScript", description: "TypeScript is a superset of JavaScript that adds static typing and other features to enhance the development experience." },
      { name: "SQL", description: "SQL (Structured Query Language) is a domain-specific language used for managing and manipulating relational databases." },
      { name: "HTML", description: "HTML (Hypertext Markup Language) is the standard markup language used for creating web pages and web applications." },
      { name: "CSS", description: "CSS (Cascading Style Sheets) is a style sheet language used for describing the presentation of a document written in HTML." },
      { name: "R", description: "R is a programming language and free software environment primarily used for statistical computing and graphics." },
      { name: "Perl", description: "Perl is a family of two high-level, general-purpose, interpreted programming languages, Perl 5 and Perl 6." },
      { name: "Scala", description: "Scala is a modern, multi-paradigm programming language designed to express common programming patterns in a concise, elegant, and type-safe way." },
      { name: "Shell", description: "Shell is a command-line interpreter used for executing commands, scripting, and automating tasks in Unix-like operating systems." }
    ]

    courses.each do |course|
      Course.find_or_create_by(name: course[:name], description: course[:description])
    end

    puts "Generated #{courses.size} programming languages."
  end
end
