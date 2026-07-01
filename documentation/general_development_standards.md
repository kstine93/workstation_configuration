# Development Standards

## A. Consistency
### 1\. We choose the tools in our recommended tool list whenever possible
*   *   Read more about this standard
        *   How to fulfill this standard
            *   Developers should review our organization's list of recommended tools, learn to use the tools listed there, and then use these tools in their projects
            *   If developers find a new tool that they would like to add to this list, they should discuss this within their team. If the majority of their colleagues accept the new tool, it should be added to the document linked above, and relevant other teams should be informed.
            
        *   Purpose
            *   When possible, we should choose consistent tools across projects, customers, and products to enable sustainable code management, knowledge transfer, and colleague onboarding.
                *   Note: if a customer requires or requests a tool which is not in our recommended tool set, it is OK to proceed on their tool stack. However, please work with your team to clarify opportunities for consultancy on best practice, or in case of concerns about the customer tool stack.
            *   Choosing consistent tools also ensures that we are using current development best practices and standards to deliver applications across all of our customers.
            *   Using the same tools makes it easier for developers to join new projects and switch between projects as needed.
            
        *   Example
            *   For any one task, there might be many tools that you could choose that are equally effective (e.g., for formatting your Python code, you might use [Black](https://black.readthedocs.io/en/stable/) or you might use [Ruff](https://docs.astral.sh/ruff/formatter/)). However, when working alongside other developers and between different projects, it can become increasingly difficult to keep track of different tools and use different tools in different projects.
            

* * *
## B. Maintainability
### **1\. Our code is documented sufficiently so that maintainers and users have all of the information they need.**
*   *   Read more about this standard
        *   How to fulfill this standard
            *   A project should have documentation for developers in the form of **commented classes and functions** (e.g., [docstrings in Python](https://peps.python.org/pep-0257/)).
            *   A project should have a **README.md** file in the primary directory that shows new developers how to understand the project and start using it.
            *   A project should have a record of which dependency versions that developers should install so that the code runs correctly (e.g., a [poetry.lock file](https://python-poetry.org/docs/basic-usage#installing-without-poetrylock)).
            *   A project could add documentation for any clients / end users in a variety of ways - such as **a wiki or FAQ pages** within a client-facing graphical user interface.
            
        *   Purpose
            *   **Facilitates onboarding, maintenance, and knowledge transfer**: New colleagues can quickly understand and work with the codebase, reducing the learning curve and enabling efficient troubleshooting and updates. Also minimizes disruptions when team members change.
            *   **Reduces errors and enhances usability**: Well-documented code explains correct usage, expected behavior, and limitations, reducing misunderstandings and enabling more reliable integration.
            *   **Promotes code longevity and adaptability**: The codebase is more resilient and adaptable to new requirements, extending its lifespan.
            
        *   Definitions
            *   **Maintainers** are individuals or teams responsible for the upkeep and improvement of the codebase over time like fixing bugs, implementing new features, optimizing performance, updating documentation, and refactoring code to keep it organized.
            *   **Clients** are individuals, teams, or systems that uses or interacts with the code. Clients are the consumers of the code's functionality, which may include other developers, applications, and end users.
            
### **2\. Our code has enough unit tests that maintainers can make future changes quickly & easily.**
*   *   Read more about this standard
        *   How to fulfill this standard
            *   A small code project that is maintained by 1-2 people over a short time span might only have a few unit tests - or none at all - since the code base is small enough to easily debug and all maintainers know the project well for the life of the project.
            *   A large project that is maintained by many different people over a long period of time requires rigorous unit testing - because otherwise maintainers will not be able to make necessary changes to the project, due to the high risk of accidentally breaking something.
            *   Talk with your project team about how you want to approach unit testing based on how long the project will be maintained, the size of the project and the size of the team.
            
        *   Purpose
            *   Code that has unit tests can be more easily changed - because if the tests all pass, you can be more confident that your changes did not introduce any new bugs. Code that cannot be changed easily will struggle to add new features or be updated with security fixes - eventually resulting in an unmaintainable or unusable codebase.
            
        *   Definitions
            *   **Unit tests** are tests for a small, self-contained piece of code - such as a single function. Unit tests should be able to run in isolation - in other words, they should not depend on other components or outside services (e.g., a database), making them easy to run quickly and repeatedly in any order.
            
### **3\. Our code is designed according to industry best practices.**
*   *   Read more about this standard
        *   How to fulfill this standard
            *   Where appropriate, we implement best-practice design patterns such as [DRY](https://www.getdbt.com/blog/guide-to-dry), [OWASP](https://owasp.org/Top10/2025/0x03_2025-Establishing_a_Modern_Application_Security_Program/#using-the-owasp-top-10-as-a-standard), or the [SOLID coding principles](https://www.freecodecamp.org/news/solid-principles-for-programming-and-software-design/) so that our code remains maintainable and flexible, even when solving complex problems.
            *   Where possible, our code should also implement best-practice design patterns specific to the languages or frameworks we're using (e.g., following the [Pep8 Style Guide](https://peps.python.org/pep-0008/) for Python).
            *   Educate yourself on best-practice design practices, both generally in software development and specifically for the tools you use (e.g., Python). Discuss with your project team if you have questions about when and where to apply certain best practices.
            
        *   Purpose
            *   By knowing and recognizing opportunities to apply already-solved solutions to common problems - such as these design patterns - you will solve coding problems more quickly and will write more robust code than you likely would otherwise. This speeds up our development cycle and makes the quality of our code better.
            
        *   Definitions
            *   **Design patterns** such as [DRY](https://www.getdbt.com/blog/guide-to-dry) or the [SOLID coding principles](https://www.freecodecamp.org/news/solid-principles-for-programming-and-software-design/) are abstract solutions to solve common coding problems in a flexible and maintainable way. The best are often written by experienced programmers who have deeply researched optimal solutions to these coding problems.
            
### **4\. Our code is version-controlled.**
*   *   Read more about this standard
        *   How to fulfill this standard
            *   You use a version control system (e.g., [git](https://git-scm.com/)) to make incremental changes to a codebase, thereby allowing easy rollbacks to previous versions, and the development of multiple versions simultaneously.
            *   Learn how to use the version control system used by your team (probably **git**) and use it in your projects.
            
        *   Purpose
            *   Using version control tools like git brings a variety of advantages to coding projects:
                *   Since code changes are tracked locally, programmers can work independently until they are ready to share their changes with their colleagues.
                *   Tracking changes as individual "commits" makes it easier to see exactly what changes have been made over time, and makes it simple to reject individual changes while keeping others.
                *   The use of 'branches' to track different versions allows different versions of the same code base to be developed independently.
            *   Also check online for more discussions of the benefits of version control.
            
        *   Definitions
            *   **Commits** are individual - and ideally small - changes to a codebase. This [Atlassian tutorial](https://www.atlassian.com/git/tutorials/saving-changes/git-commit) gives more information on what they are and how to use them.
            *   For more information on all other git topics, see this [Atlassian Quickstart Guide](https://www.atlassian.com/git/tutorials/setting-up-a-repository).
            

* * *
## C. Readability
### **1\. Our code within a single project implements consistent formatting and linting** **rules.**
*   *   Read more about this standard
        *   How to fulfill this standard
            *   All of our code projects should choose a linting tool and a formatting tool to use. Then, these tools should be used at certain key points in the development process - such as before a pull request is merged. Which tools you use and where you use them is up to you and your team.
            *   As an example, a Python development team could decide to use [Flake8](https://flake8.pycqa.org/en/latest/) as the project's linting tool and then [Black](https://black.readthedocs.io/en/stable/) as the project's formatting tool, and use a line-length of 120 characters. The team then agrees that their code must pass these formatting and linting rules whenever they make changes.
            
        *   Purpose
            *   Having consistent code formatting helps developers work together - because it's easy to understand someone else's code if they format their code in the same way you do.
            *   Using linters helps us catch bugs and vulnerabilities before they make it into the codebase, helping us avoid bugs and generally develop faster.
            
        *   Definitions
            *   **Code formatting** is having consistent spacing, line-lengths, etc. and helps with code readability.
            *   **Code Linting** is fixing mistakes or vulnerabilities in code (e.g., misspelled variables)
            
### **2\. Our code uses explicit typing.**
*   *   Read more about this standard
        *   How to fulfill this standard
            *   All of the data in our code (e.g., function arguments, local variables) should include type hints (also called type annotations) attached wherever possible.
            
        *   Purpose
            *   Some languages (e.g., Python) do not require data types to be specified. However, leaving this information out makes code much harder to debug and read.
            *   Indicating data types in code ensures clarity by explicitly defining what kind of data a variable or function handles, making the code more readable and understandable for others.
            *   It also helps prevent errors by allowing the compiler or interpreter to catch type mismatches early, reducing debugging time.
            *   Clear type declarations improve maintainability, making it easier for teams to modify or extend the code in the future.
            
        *   Definitions
            *   **Clear data type declarations** refer to explicitly specifying the type of data a variable, parameter, or return value will hold or process, such as `int`, `float`, `string`, `bool` , etc. These declarations clarify the purpose and constraints of the data, ensuring that developers and systems know what kind of operations are valid and preventing unintended behavior. For example, declaring a variable as `int age = 25;` clearly indicates it will store integers.
            
### **3\. Our code changes are easy to understand.**
*   *   Read more about this standard
        *   How to fulfill this standard
            *   When you are making a change to code (e.g., making a commit to a git repository), write a clear, descriptive comment that explains the purpose of the change, using meaningful variable and function names.
            *   Keep individual changes small and focused, while providing detailed commit messages in version control, to help others quickly grasp what was modified and why.
            *   **TIP:** Using a messge categorization strategy like [Semantic Commit Messages](https://semanticcommit.com/?ref=producthunt) can help make commit messages even easier to understand.
            
        *   Purpose
            *   Making small, well-documented changes to code helps to ensure that our code is predictable, easy to read, and maintainable. This makes it easier for teams to collaborate and understand each other’s work. This also helps your colleagues grasp the intent, functionality, and impact of any changes you make - making it more likely that bugs will be found before any changes are finalized.
            
        *   Definitions
            *   "**commit messages**" refers to a short text that should accompany all code changes. Most often these commit messages are written in the context of using a version control tool like git. Read more about git commit messages [here](https://www.gitkraken.com/learn/git/best-practices/git-commit-message).
            

* * *
## D. Security
### **1\. Our networked applications guard against unauthorized access and attacks.**
*   *   Read more about this standard
        *   How to fulfill this standard
            *   Any applications that we develop must first - by default - be _disconnected_ from the public internet. By developing without allowing public internet access, we can make sure that no unauthorized users get access to our application before our security measures are fully set up.
            *   If we want to make an application accessible to the public internet, we must ensure that security measures are in place to prevent unauthorized access or attacks on the system. Some examples of security measures are:
                *   An authentication system, through which users must provide credentials to get access to the application.
                *   An authorization system, which gives users only the _minimum_ access rights they need to work with the application within their role.
                *   A web application firewall, which limits the IP addresses allowed to access the application, as well as the data that is allowed to pass to the application.
                *   Timeout / access revocation systems which allow the application to deny access to users based on their activity (e.g., if they consume too many resources, make too many requests, or are inactive)
                *   etc.
            *   **Network security best practices are complex and constantly-changing. Please consult your colleagues to learn more about current best practices.**
            
        *   Purpose
            *   Publicly-accessible internet applications will be abused if left unsecured. Attacks can include the stealing of sensitive information or overloading the system to induce outages.
            *   The consequences of successful attacks can range from increased maintenance to legal action and large fines for our organization. They can also have negative consequences for our reputation with current and future clients. As such, negating attacks - or the potential for attacks - is an extremely high priority.
            
        *   Definitions
            *   **Authentication** is the process of correctly determining a user's identity (i.e., they are who they claim they are).
            *   **Authorization** is the process of assigning specific permissions to users based on their identity.
            
### **2\. Our live application code is regularly analyzed for vulnerabilities.**
*   *   Read more about this standard
        *   How to fulfill this standard
            *   Most modern programming languages have tools to check for code vulnerabilities (e.g., [Bandit for Python](https://bandit.readthedocs.io/en/latest/)). For whichever programming language you use, look for and implement a code-checking tool, and run the tool whenever you make changes to your codebase.
            *   Store your code in our remote repository system (e.g., Github), and use automation tools (e.g., Github's built-in [Dependabot](https://docs.github.com/en/code-security/getting-started/dependabot-quickstart-guide) and [CodeQL](https://codeql.github.com/)) to regularly analyze your codebase for vulnerabilities.
            *   Whenever you are notified of vulnerabilities in your actively-deployed code, you should fix them quickly - particularly if they are serious vulnerabilities that could be exploited in attacks.
            
        *   Purpose
            *   Even if an application implements the best network security, attacks are still possible if the application itself is programmed in an insecure way - or uses vulnerable libraries.
            *   By regularly analyzing your codebase for such vulnerabilities, you make it much less likely that your application will suffer any attacks that could have negative consequences for your project and for our organization as a whole.
            
        *   Definitions
            *   **Code vulnerabilities** typically relate to unintended ways of using a piece of code that could allow users to perform more actions than they should. For example, some serious vulnerabilities allow any users to execute random code - which could allow any user to take control of the server where the code is running.
            *   Vulnerabilities in any 3rd-party libraries you use are typically (but not always) reported to the library maintainers so that fixes can be made and users can implement the fixed library version in their application(s).
            
### **3\. Our code changes are reviewed by a colleague before they are accepted.**
*   *   Read more about this standard
        *   How to fulfill this standard
            *   Decide with your project team about how you will review new code that is added to the project.
            *   For example, a team could decide that all new code must be added to a pull request in Github, and at least one other team member must approve it before it can be merged into the code base.
            *   Alternatively, if a team is only 2-3 people working closely together, they might decide to review each others' code together in pair-programming sessions in person or over a video call before adding it to the code base.
            
        *   Purpose
            *   Tests and code linters do not always find the bugs or code design problems. That's why before we make changes to a communal project, we ask at least one colleague to review our changes and approve them. This helps ensure that new code is bug-free and implements best practices.
            

* * *
## **E. Quality**
### **1\. We read the documentation for the code frameworks we use - and implement their recommended best practices.**
*   *   Read more about this standard
        *   How to fulfill this principle
            *   When we use a code framework or library in your project, we take the time to read the documentation about the framework - including how best to implement it and what it's limitations are.
            
        *   Purpose
            *   Many code frameworks or libraries are easy to use out-of-the-box without reading much (or any documentation). This can be fine for basic usage, but it can lead to situations where you mis-use these frameworks, leading to hard-to-solve bugs or performance problems.
            *   Reading the documentation for these dependencies is the best way to learn their limitations and how to apply them correctly so that you do not face these issues.
            
### **2\. Our applications undergo end-to-end testing before being released.**
*   *   Read more about this standard
        *   How to fulfill this standard
            *   A project team finishes developing a new version of an already-live application. Before this new version is released, it should be tested in its entirety in an isolated environment. At minimum these tests should include performing the basic user actions of the application as if this version were already live. Based on the application, these tests could also include network security tests (e.g., [penetration tests](https://www.cloudflare.com/en-gb/learning/security/glossary/what-is-penetration-testing/)), load stress tests, or usability tests.
            
        *   Purpose
            *   When applications are deployed on new infrastructure - or communicate with other applications, new bugs are often discovered. By testing your application in a scenario that closely imitates the way it will be used by others, you can ensure that the most obvious bugs are found and fixed, leading to a better user experience and a lower risk of attacks on your application.