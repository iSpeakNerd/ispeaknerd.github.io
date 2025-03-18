# Codebase Architecture and Conventions Documentation

## 1. Project Overview

A Jekyll-based personal portfolio and blog site using the Chirpy theme. The project emphasizes technical writing samples, developer documentation, and professional experience presentation with strong SEO optimization and containerized development.

## 2. Directory Structure

### Core Directories

```ascii
.
├── _posts/         # Blog posts and work samples
├── _data/          # Site configuration data (resume, contact info)
├── _drafts/        # Draft posts
├── _includes/      # Reusable components
├── assets/         # Static assets and custom styling
│   └── css/        # Custom CSS including social icons
│   └── fonts/      # Custom social icons as fonts
└── .devcontainer/  # Development environment configuration
```

### Key Configuration Files

- `_config.yml`: Primary Jekyll configuration
- `.devcontainer/devcontainer.json`: VS Code dev container setup
- `Gemfile`: Ruby dependencies
- `.gitignore`: Version control exclusions
- `.prettierignore`: Prettier formatting exclusions
- `.liquidrc`: Liquid formatter config

## 3. Design Patterns and Conventions

### 3.1 Content Organization

#### Post Structure

- Front Matter Requirements:
  ```yaml
  ---
  layout: post
  title: Post Title
  date: YYYY-MM-DD HH:MM:SS -0800
  author: username
  description: SEO description
  categories: [category1, category2]
  tags: [tag1, tag2, ...]
  published: true
  sitemap: true
  pin: false  # Optional for featured posts
  ---
  ```

### 3.2 Development Environment

- **Containerized Development**:
  - Jekyll-specific container image
  - VS Code integration
  - Automated setup scripts
  - Why: Consistent development environment across machines

### 3.3 Extension Management

- **VS Code Extensions**:
  - Liquid template support
  - Shell scripting tools
  - Git integration
  - Markdown support
  - Why: Standardized development tooling

### 3.4 Styling Conventions

- **SASS Processing**:
  - Compressed output style
  - Modular CSS architecture
  - Component-specific stylesheets in `assets/css/`
    - Regular CSS files: `name.css` or `name.min.css`
    - SCSS partials: `_name.scss`
  - Main stylesheet `jekyll-theme-chirpy.scss` imports all modules
- Why: Optimized CSS delivery and maintainable styles

## 4. Configuration Management

### 4.1 Site Configuration

- **Core Settings** (`_config.yml`):
  - Site metadata
  - SEO configuration
  - Social media links
  - Collections setup

### 4.2 Build Settings

- **Jekyll Processing**:
  - HTML compression enabled
  - SASS processing
  - Archive generation
  - Why: Optimized output and performance

## 5. Content Management

### 5.1 Work Samples

- **Organization**:
  - Dated file names
  - Consistent metadata
  - Clear categorization
  - Why: Easy navigation and maintenance

### 5.2 Resume Data

- **Structured Data** (`resume.yml`):
  - Skills categorization
  - Professional experience
  - Education details
  - Why: Maintainable professional information

## 6. Development Workflow

### 6.1 Local Development

```bash
bundle exec jekyll s
```

- Local server: http://127.0.0.1:4000
- Hot reloading enabled
- Why: Rapid development cycle

### 6.2 Version Control

- **Git Configuration**:
  - Container-aware setup
  - Proper ignore patterns
  - Why: Clean repository management

## 7. Performance Considerations

### 7.1 Build Optimizations

- HTML compression
- CSS minification
- Selective resource loading
- Why: Faster page loads

### 7.2 SEO Optimization

- Meta description management
- Social media preview support
- Sitemap generation
- Why: Improved discoverability

### 7.3 Documentation

- `README.md` for project overview (human readable)
- `project-schema.md` for ai gen
- Inline comments in configuration files
- Why: Ensures maintainability and ease of onboarding

## 8. Future Considerations

- Dynamic tag linking system
- Comment system integration
- Analytics configuration
- Enhanced social media integration
- Additional work sample categories
- Why: Scalable content management

