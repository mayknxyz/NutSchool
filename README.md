# NutSchool.com Website

![NutSchool Logo](https://raw.githubusercontent.com/mayknxyz/nsc-t101-nutschool-com-archived/main/public/images/logo-nutschool.png?token=GHSAT0AAAAAADGNKDDO6TTYN6S4QG5QKGQ62DAOXHA)

---

## 🌐 Our Digital Home: Spreading the Word for Programming Education

Welcome to the **NutSchool.com Website** repository! This project powers the main public-facing website for NutSchool.com, serving as our digital home to inspire, inform, and connect learners and educators worldwide.

At NutSchool.com, our mission is clear: **"Everyone should learn programming!"** This website is designed to be the gateway to that vision, providing information about our philosophy, our open-source tools (like the NutSchool LMS Community Edition), our premium offerings, and the transformative power of coding.

---

## ✨ Why This Repository?

This repository contains the source code for NutSchool.com, built with modern web technologies to be fast, responsive, and accessible. Its primary purpose is:

- **Showcasing Our Mission:** Articulating our belief that programming skills empower individuals.
- **Information Hub:** Providing details about NutSchool.com, our values, and our initiatives.
- **Gateway to the LMS:** Directing users to `lms.nutschool.com` for the learning platform.
- **Highlighting NutSchool Pro:** Detailing the benefits of our commercial offerings for institutions and advanced learners.
- **Community Engagement:** Offering resources and pathways for people to join our mission.

---

## 💻 Technologies Used (Planned)

The NutSchool.com website is being developed with a focus on modern web standards, exceptional performance, and user experience:

-   **Static Site Generator:** **Astro** for building extremely fast, content-focused websites. Astro's "islands architecture" delivers highly performant sites by sending minimal JavaScript to the client.
-   **Styling:** **Tailwind CSS** for rapid and responsive UI development.
-   **Deployment:** Designed for static site hosting (Cloudflare) for superior speed and scalability.

---

## 🚧 Project Status: Early Development

This is a brand new project and is currently in its early development stages. We are actively building the core pages, design system, and content infrastructure.

We appreciate your patience and interest as we lay the foundation for this impactful online presence. Stay tuned for initial designs and functional pages!

---

## 🚀 Local Development with Docker

For consistent and isolated development, we recommend using Docker. This ensures everyone is working with the same environment and dependencies.

### Prerequisites

* [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running. Ensure you have a recent version that supports `docker compose watch`.

### 1. Project Setup for Docker

Ensure your project root contains the following files:

* **`Dockerfile`**: Defines how to build your Astro application's Docker image.
* **`compose.yaml`** (or `docker-compose.yml`): Orchestrates your services for local development.

**Example `Dockerfile` (for Astro Development Server):**

```dockerfile
# Dockerfile
FROM node:lts-alpine

WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker cache
COPY package*.json ./
RUN npm install

# Copy the rest of your application code (will be synced by Docker Watch)
COPY . .

# Expose Astro's default development port
EXPOSE 4321

# Command to run Astro's dev server
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
````

**Example `compose.yaml` (for Astro Development with Docker Watch):**

YAML

```
# compose.yaml
version: '3.8'

services:
  astro-dev:
    build: .
    ports:
      - "4321:8080" # Map host port 4321 to container port 4321
    working_dir: /app
    environment:
      NODE_ENV: development
    develop:
      watch:
        # Action 1: Sync all source files
        # Copies changed files directly into the running container for live reloading.
        - action: sync
          path: ./ # Watch the entire project directory on the host
          target: /app # Sync to the /app directory inside the container
          ignore:
            - node_modules/ # Important: Don't sync node_modules to prevent issues
            - dist/       # Don't sync build output
            - .git/       # Ignore Git metadata
            - .dockerignore # Ignore Docker ignore file
            - .env* # Ignore environment files

        # Action 2: Rebuild if package.json (or other critical files) change
        # Triggers a full Docker build and container recreation, e.g., for new dependencies.
        - action: rebuild
          path: package.json
          # You might also add other files that necessitate a full rebuild:
          # - pnpm-lock.yaml
          # - yarn.lock
          # - tsconfig.json
          # - astro.config.mjs
```

### 2. Running Local Development with Docker Watch

The `docker compose up --watch` command enables a powerful hands-off development workflow. Docker Compose monitors your local files, and automatically syncs changes or rebuilds services as needed.

1. **Open your terminal** in the root directory of this project (where `compose.yaml` is located).
    
2. **Run the following command:**
    
    Bash
    
    ```
    docker compose up --watch
    ```
    
    - This will initially build the Docker image (if not already built) and start the Astro development server inside a container.
        
    - The `watch` mode will then begin monitoring your project files.
        
    - When you modify and save an Astro source file (`.astro`, `.ts`, `.jsx`, `.css`, etc.), Docker Compose will **sync** the changes into the running container, and Astro's dev server will trigger a live reload in your browser.
        
    - If you modify `package.json` (e.g., adding a new dependency), Docker Compose will automatically trigger a **rebuild** of the Docker image (including `npm install`) and restart the container, ensuring your environment is up-to-date.
        
3. **Access the website:** Once the service is running, you can access the Astro development server in your web browser at: [https://localhost:4321](https://www.google.com/search?q=https://localhost:4321)
    

---

## 📜 Licensing

The **source code** for the NutSchool.com website (this repository) is open-source and licensed under the **MIT License**. This permissive license allows you to freely use, modify, and distribute the code, provided you include the original copyright and license notice. This enables others to learn from our design and implementation, and even build upon it for their own purposes.

**Important Note on Content:** While the website's code is open, the educational **content**, courses, and specific premium materials (especially those associated with NutSchool Pro) found on NutSchool.com and `lms.nutschool.com` are proprietary and subject to separate terms and conditions.

---

## 🤝 Contributing to NutSchool.com Website

We welcome contributions to help make NutSchool.com an even better resource! Your efforts can help us reach more learners and articulate our mission effectively.

### How to Contribute:

1. **Read our [CONTRIBUTING.md](https://www.google.com/search?q=CONTRIBUTING.md):** This guide will outline our code of conduct, contribution guidelines, and how to set up your development environment (once available).
    
2. **Explore [Good First Issues](https://github.com/mayknxyz/nutschool-website/labels/good%2520first%2520issue):** Look for issues tagged for new contributors to get started (will be populated as development progresses).
    
3. **Submit a Pull Request:** Follow our guidelines for submitting changes.
    

**Important Note:** Contributions for this website should focus on design, user experience, informational content (general, non-course specific), and technical improvements to the site itself. Features specific to the LMS or its paid functionalities should be directed to the [lms-nutschool-com](https://github.com/mayknxyz/lms-nutschool-com) repository.

---

## 🐞 Reporting Issues

If you find a bug or have a suggestion for the NutSchool.com website, please open an issue on our [GitHub Issues page](https://github.com/mayknxyz/nutschool-com/issues?q=sort%3Aupdated-desc+is%3Aissue+is%3Aopen).

---

## 📞 Connect With Us

- **Main Website:** [NutSchool.com](https://nutschool.com) (This repository's deployed version!)
    
- **Learning Platform:** [lms.nutschool.com](https://lms.nutschool.com) (Future home of the LMS)
    
- **Community Discussions:** [GitHub Discussions](https://github.com/mayknxyz/nutschool-com/discussions)