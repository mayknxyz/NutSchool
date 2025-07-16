# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.2.0] - 2025-07-16

### Added
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