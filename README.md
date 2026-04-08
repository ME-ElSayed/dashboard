# Responsive Dashboard

A responsive dashboard UI built with Flutter for mobile, tablet, and desktop screens.

## Overview

This project focuses on building a clean and reusable dashboard interface that adapts to different screen sizes. It includes multiple dashboard sections such as expenses cards, quick invoice, card management, transaction history, and income analytics.

The codebase is organized into small reusable widgets with separate folders for models, utilities, views, and UI components, making it easier to maintain and scale.

## Design Reference

Figma Design: [Admin Dashboard (Community)](https://www.figma.com/design/MaVFj6GIkC4oUYj6DYx4E8/Admin-Dashboard--Community-?node-id=3-123&t=YEgfVmijZs0hP6xr-0)

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

## Tech Stack

- **Flutter**
- **Dart**
- **flutter_svg**
- **fl_chart**
- **expandable_page_view**
- **device_preview**

## Project Structure

```bash
lib/
├── main.dart
├── models/
├── utils/
├── views/
└── widgets/