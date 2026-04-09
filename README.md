# Responsive Dashboard

A responsive dashboard UI built with Flutter for mobile, tablet, and desktop screens.

## Overview

This project focuses on building a clean and reusable dashboard interface that adapts to different screen sizes. It includes multiple dashboard sections such as expenses cards, quick invoice, card management, transaction history, and income analytics.

The codebase is organized into small reusable widgets with separate folders for models, utilities, views, and UI components, making it easier to maintain and scale.

## New Features

- Light and dark theme support
- Theme switching from the mobile app bar
- Theme switching from the navigation drawer
- Centralized theme configuration using `ThemeData`
- Theme-aware shared colors, surfaces, borders, and text styles
- Improved reusable styling for cards, tiles, buttons, and form fields

## Features

- Responsive layout for mobile, tablet, and desktop
- Adaptive dashboard screen with dedicated layouts for each breakpoint
- Custom navigation drawer
- All Expenses section with selectable cards
- Quick Invoice section with form inputs
- My Card section with page view support
- Latest Transactions and Transaction History sections
- Income section with charts and details cards
- Reusable UI components and clean project structure
- Centralized app styling with shared utilities
- Light/dark theme ready UI components

## Tech Stack

- **Flutter**
- **Dart**
- **flutter_svg**
- **fl_chart**
- **expandable_page_view**
- **device_preview**

## Design Reference

Figma Design: [Admin Dashboard (Community)](https://www.figma.com/design/MaVFj6GIkC4oUYj6DYx4E8/Admin-Dashboard--Community-?node-id=3-123&t=YEgfVmijZs0hP6xr-0)

## Project Structure

```bash
lib/
├── main.dart
├── models/
├── utils/
│   ├── app_colors.dart
│   ├── app_styles.dart
│   ├── app_theme.dart
│   ├── theme_controller.dart
│   └── ...
├── views/
└── widgets/