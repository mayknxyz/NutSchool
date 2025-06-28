# Contributing to NutSchool.com Website

We're thrilled you're interested in contributing to the **NutSchool.com Website**! This website is our public face, helping us spread the word about our mission: "Everyone should learn programming." Your contributions will directly impact how we connect with learners and educators worldwide.

By contributing to this project, you agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md).

## 💬 Communication

For general questions, discussions about design ideas, content brainstorming, or seeking help that isn't a specific bug report, please use our **[GitHub Discussions](https://github.com/mayknxyz/nutschool-com/discussions)** tab. This is our primary mode of communication for the time being.

Please check the [GitHub Issues](https://github.com/mayknxyz/nutschool-com/issues?q=sort%3Aupdated-desc+is%3Aissue+is%3Aopen) for reproducible bugs or clearly defined tasks.

## 🚀 Getting Started

This project is in early development. Here's how you can get the website running locally to start contributing:

### Prerequisites

* **Node.js (v18 or higher):** [Download & Install Node.js](https://nodejs.org/en/download/)
* **npm or Yarn:** Node.js typically comes with npm. If you prefer Yarn, [install it here](https://classic.yarnpkg.com/lang/en/docs/install/).
* **Git:** [Download & Install Git](https://git-scm.com/downloads)

### Local Setup

1.  **Fork the Repository:** Start by forking the `nutschool-website` repository to your GitHub account.
2.  **Clone Your Fork:**
    ```bash
    git clone [https://github.com/mayknxyz/nutschool-website.git](https://github.com/mayknxyz/nutschool-website.git)
    cd nutschool-website
    ```
3.  **Install Dependencies:**
    ```bash
    npm install  # or yarn install
    ```
4.  **Start the Development Server:**
    ```bash
    npm run dev  # or yarn dev
    ```
    The website should now be running locally, typically on `http://localhost:4321`.

## 🌱 How to Contribute

We encourage contributions of all sizes! Here's a general workflow:

1.  **Create a New Branch:** For each feature or bug fix, create a new branch from `main`.
    ```bash
    git checkout -b feat/your-feature-name
    # or for bug fixes:
    git checkout -b fix/issue-id-short-description
    ```
2.  **Make Your Changes:** Implement your feature, fix the bug, or add new content.
3.  **Write Tests (if applicable):** While typical for app development, UI changes might sometimes involve visual regression tests or specific component tests.
4.  **Run Build & Linters:** Before committing, ensure your code adheres to our formatting and passes basic checks.
    ```bash
    npm run lint  # or yarn lint
    npm run format # or yarn format (if you set up a formatting script)
    npm run build # or yarn build (to ensure it builds successfully)
    ```

5.  **Commit Your Changes: Follow Conventional Commits**

    We follow the [Conventional Commits specification](https://www.conventionalcommits.org/) for clear and consistent commit messages. This helps us understand the purpose of each change, generate changelogs, and maintain a clean history.

    Each commit message should consist of a **header**, a **blank line**, and an optional **body**. We strongly encourage adding a descriptive body for every commit to provide context and explain the "why" behind your changes.

    **A. Header (Subject Line)**
    * **Format:** `<type>(<scope>): <description>`
    * **`<type>`**: Must be one of the following standardized types. This indicates the kind of change.
    * **`<scope>` (Optional)**: A noun describing the section of the codebase affected (e.g., `homepage`, `about-us`, `blog`, `navigation`, `styling`, `build`). Use sparingly if the change is broad.
    * **`<description>`**: A very concise summary of the change.
        * Use the **imperative, present tense**: "Add navigation bar" not "Added navigation bar".
        * **Do not** capitalize the first letter.
        * **No period** at the end.
        * Keep it short (aim for ~50-72 characters).

    **B. Body (Recommended)**
    * Start the body with a blank line after the header.
    * Provide a more detailed explanation of the change.
    * Explain the *motivation* for the change and contrast it with previous behavior (the "why").
    * Use the imperative, present tense.
    * Wrap lines at around 72 characters for readability.
    * Reference any relevant issues (e.g., `Closes #123`, `Fixes #456`).

    ### Standardized Commit Types:

    Here is the comprehensive list of commit types to use for NutSchool.com Website:

    * **`feat:`**
        * **Purpose:** Introducing a **new feature** or significant enhancement to the website's functionality or content sections.
        * **When to use:** When you add a new page, a new interactive component (e.g., a newsletter signup form), or a new major content section.
        * **Example:** `feat(homepage): add hero section with mission statement`

    * **`fix:`**
        * **Purpose:** A **bug fix**. This addresses a visual glitch, broken link, responsiveness issue, or other incorrect behavior on the website.
        * **When to use:** When you correct something that was broken or not rendering correctly.
        * **Example:** `fix(css): resolve mobile layout overflow on small screens`

    * **`docs:`**
        * **Purpose:** **Documentation-only changes**.
        * **When to use:** For updates to `README.md`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, or any other project documentation.
        * **Example:** `docs(contributing): clarify website contribution guidelines`

    * **`style:`**
        * **Purpose:** Changes that **do not affect the meaning or functionality of the website**, focusing purely on visual styles and formatting.
        * **When to use:** For whitespace, consistent padding/margins, font adjustments, or minor CSS reordering that doesn't change layout.
        * **Example:** `style(global): refine button primary color palette`

    * **`refactor:`**
        * **Purpose:** A **code change that neither fixes a bug nor adds a feature**. It's about restructuring or improving the internal structure of existing code.
        * **When to use:** When you reorganize components, improve component reusability, or optimize file structure without changing the visible output.
        * **Example:** `refactor(components): extract testimonial card into separate component`

    * **`perf:`**
        * **Purpose:** A code change that **improves performance** of the website.
        * **When to use:** When your changes make the site load faster, improve Lighthouse scores, or optimize image loading.
        * **Example:** `perf(images): lazy load all hero images for faster initial render`

    * **`build:`**
        * **Purpose:** Changes that affect the **build system or external dependencies**.
        * **When to use:** For updates to Astro configurations, Node.js package dependencies (`package.json`, `package-lock.json`), or build scripts.
        * **Example:** `build(deps): update Astro to v4.0.0`

    * **`ci:`**
        * **Purpose:** Changes to our **CI (Continuous Integration) configuration files and scripts**.
        * **When to use:** For updates to GitHub Actions workflows for deployment or testing.
        * **Example:** `ci(github-actions): add build and deploy workflow for Netlify`

    * **`chore:`**
        * **Purpose:** **Other changes that don't modify visible website content, source code, or tests**, or don't fit into other types.
        * **When to use:** For routine maintenance, `.gitignore` updates, tooling configuration, or managing repository setup.
        * **Example:** `chore: add .vscode settings for consistent editor config`

    * **`revert:`**
        * **Purpose:** Reverts a **previous commit**.
        * **When to use:** When undoing a previous change that was found to be incorrect or problematic. The body should typically reference the commit being reverted.
        * **Example:** `revert: feat(analytics): integrate GA4 tracking script`

6.  **Push to Your Fork:**
    ```bash
    git push origin your-branch-name
    ```
7.  **Open a Pull Request (PR):**
    * Go to your forked repository on GitHub.
    * Click "Compare & pull request" next to your newly pushed branch.
    * **Fill out the Pull Request Template thoroughly.** Provide a clear description of your changes, why they are needed, and how they were tested.
    * Reference any relevant issues (e.g., `Closes #123`).

## ✍️ Code Style and Guidelines

* **Astro & HTML Structure:** Maintain clean, semantic HTML where possible.
* **Tailwind CSS:** Prioritize Tailwind utility classes for styling. If custom CSS is necessary, ensure it's minimal and well-documented.
* **JavaScript:** Write modern, readable JavaScript. Follow consistent naming conventions.
* **Clear Variable & Component Names:** Use descriptive names for clarity.
* **Comments:** Add comments where necessary to explain complex logic or design decisions.
* **Modularity:** Aim for small, focused components and well-organized file structures.
* **Accessibility (A11y):** Strive to make the website accessible to all users. Consider semantic HTML, ARIA attributes when needed, and sufficient color contrast.
* **Responsiveness:** Ensure designs look and function well across various screen sizes (mobile, tablet, desktop).

## 🚧 Scope of Contributions

Contributions for this website repository should primarily focus on:

* **Website Design & User Experience:** Enhancements to layout, visual appeal, and overall user flow of the public website.
* **Informational Content:** New pages, updates to existing text, images, or general resources that explain NutSchool's mission, offerings, and values.
* **Technical Improvements:** Optimizations for performance, accessibility, SEO, build processes, and maintainability of the website's codebase.

**Important Note:** Features specific to the **NutSchool LMS (learning platform)**, its course content, or its paid functionalities (e.g., student progress tracking, automated grading, user management systems for classrooms) should **NOT** be contributed to this repository. Please direct such contributions to the **`nutschool-lms`** repository.

## 🤝 Code of Conduct

We are committed to fostering an inclusive and welcoming community. Please review our [Code of Conduct](CODE_OF_CONDUCT.md) before participating.

## 💡 Reporting Issues

If you find a bug or have a suggestion for the NutSchool.com website, please help us by [opening an issue](https://github.com/mayknxyz/nutschool-website/issues) on GitHub. Provide as much detail as possible, including steps to reproduce the bug, expected behavior, and actual behavior.

## 🙏 Thank You!

Your contributions are vital to the success of NutSchool.com and our mission. Thank you for being a part of our journey!