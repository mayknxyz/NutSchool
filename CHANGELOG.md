# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.3.0] - 2025-07-25

### Added
- **Complete Bun Migration**: Migrated from Node.js/npm to Bun for faster development and package management
- **Enhanced Navigation**: Added comprehensive navigation menu with links to all essential pages
- **New Pages**: Created professional About, Contact, Privacy Policy, and Terms of Service pages
- **Development Tools**: Added Prettier, TypeScript support, and enhanced development scripts
- **GitHub Integration**: Contact page links to GitHub Discussions for community engagement
- **Glass Card Design**: Implemented consistent glass card design across all new pages
- **Accessibility**: Added proper ARIA labels and semantic HTML structure
- **Cloudflare Workers**: Updated deployment configuration for Bun-based builds

### Changed
- **Package Management**: Replaced package-lock.json with bun.lock for faster dependency resolution
- **Development Workflow**: Updated all scripts to use Bun commands (`bun run dev`, `bun run build`, etc.)
- **README**: Completely updated with Bun-based development instructions and new command reference
- **Header Component**: Enhanced with full navigation menu and improved spacing
- **Page Layouts**: All new pages use centered content within glass cards for consistency
- **Contact Strategy**: Replaced traditional contact forms with GitHub Discussions integration

### Technical Improvements
- **Performance**: Faster package installation and development server startup with Bun
- **Code Quality**: Added linting, formatting, and type-checking scripts
- **Documentation**: Comprehensive commit messages and changelog updates
- **SEO**: Proper page titles and meta descriptions for all new pages
- **Responsive Design**: All new pages maintain responsive design principles

## [0.2.0] - 2025-07-16

### Added
- Set Github repo to private
- Install TailwindCSS
- Created `CardOneCol` through `CardSixCol` components with a consistent glassmorphism effect.
- Implemented a custom `.glass-card` CSS class to centralize the glass effect styling.
- Added dynamic props to all card components to accept `headingType`, `headingText`, and `paragraphText`.
- Centralized typography styles for `h1`, `h2`, `h3`, and `p` tags within `.glass-card` into `global.css`.

### Changed
- Refactored `Header` and `Footer` to use the new `.glass-card` effect for a consistent UI.
- Updated all card components to be responsive and use a flexible, prop-driven design.
- Simplified all card components by removing hardcoded typography classes in favor of global styles.
- Updated `index.astro` to showcase the new dynamic card components.

### Removed
- Deleted the standalone `Hero.astro` component; its functionality is now handled by `CardOneCol`.
- Deleted the unused `about.astro` page.

## [0.1.0] - 2025-07-04

### Added
- Initial Astro project setup with core files
- Layout foundation with home and about pages
- Content updates for website
- Color scheme update with Go Land as reference
- Contribution guidelines for website development
- Enhanced layout structure and page organization