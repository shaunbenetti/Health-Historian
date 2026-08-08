# Health Historian

Health Historian is a native iOS application built with SwiftUI that helps answer one question:

> **Why did my health change?**

Unlike traditional health apps that simply display metrics, Health Historian combines Apple Health data, meals, workouts, sleep, HRV, glucose, and notes into a timeline that helps explain relationships between lifestyle and health.

---

## Features

- Dashboard
- Meal Logging
- Timeline View
- Apple Health Integration (planned)
- Glucose Analysis (planned)
- AI Insights (planned)
- CSV Export (planned)

---

## Technology

- SwiftUI
- SwiftData
- HealthKit
- Charts
- Observation
- Git
- GitHub

---

## Architecture

Health Historian follows a layered architecture.

```
Views
    ↓
Components
    ↓
ViewModels / Stores
    ↓
Repositories
    ↓
Services
    ↓
Models
```

This keeps the UI independent from the data source.

---

## Project Structure

```
Health Historian

├── App
├── Models
├── Services
├── Theme
├── ViewModels
├── Views
│   ├── Components
│   ├── Dashboard
│   ├── Meals
│   ├── Analytics
│   ├── History
│   └── Settings
```

---

## Roadmap

### Sprint 1
- Foundation
- Dashboard
- Theme
- Components

### Sprint 1.5
- MVVM
- Dependency Injection
- Services

### Sprint 2
- Meal Model
- Meal Logging
- Shared Meal Store

### Sprint 3
- SwiftData Persistence
- Editing
- Deleting

### Sprint 4
- Apple Health Integration

### Sprint 5
- Analytics

### Sprint 6
- AI Insights

---

## Vision

Health Historian is designed to become a personal health timeline that explains:

- How meals affect glucose
- How exercise changes recovery
- How sleep influences performance
- Why trends occur over time

The goal is to provide context, not just metrics.
