# Sveapark 🚗🇸🇪

**Sveapark** is a web application designed to help drivers in Sweden understand complex parking signs. By analyzing photos of parking signs using AI, it tells you instantly if you can park your private vehicle, for how long, and what it might cost.

## Features ✨

- **📸 Scan & Analyze**: Take a photo or upload an image of any Swedish parking sign.
- **🧠 AI-Powered**: Uses Google Gemini AI to interpret rules based on Swedish parking regulations (P-skiva, stub, residential, cleaning days, etc.).
- **⚡ Instant Results**: Get a clear "ALLOWED", "FORBIDDEN", or "CONDITIONAL" status with a summary.
- **📅 Context Aware**: Considers the current date and time (weekdays, weekends, holidays) for accurate advice.
- **🎨 Modern UI**: Built with React and loading/success animations for a premium feel.

## Prerequisites 🛠️

- **Docker** and **Docker Compose** installed on your machine.
- A **Google Gemini API Key** (Get one from [Google AI Studio](https://aistudio.google.com/)).

## Getting Started 🚀

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/sveapark.git
cd sveapark
```

### 2. Configure Environment Variables

Create a local environment file and add your API key.

```bash
cp .env.example .env.local
```

Open `.env.local` and paste your key:

```env
GEMINI_API_KEY=AIzaSy...your_actual_key...
```

> **Note:** `.env.local` is git-ignored to keep your API key safe. Never commit this file.

### 3. Run with Docker 🐳

Build and start the container:

```bash
docker-compose up --build
```

The application will be available at [http://localhost:5173](http://localhost:5173).

## Tech Stack 💻

- **Frontend**: React (Vite)
- **Styling**: TailwindCSS
- **AI**: Google Gemini Flash Model
- **Language**: TypeScript
- **Containerization**: Docker

## Development 🚧

To stop the container:
```bash
docker-compose down
```

To view logs:
```bash
docker-compose logs -f
```

## License 📄

MIT
