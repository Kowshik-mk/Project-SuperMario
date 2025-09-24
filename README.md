
# 🎮 Super Mario Bros - Browser Game

A fully functional **Super Mario Bros clone** built with **TypeScript**, **HTML5 Canvas**, and modern web technologies.  
The game runs entirely in the browser and replicates classic Mario mechanics like jumping, enemy stomping, coin collection, and platform physics.  

This project was originally inspired by a YouTube tutorial.  
👉 My contribution and focus is on the **DevOps side** — specifically:
- **Containerizing** the application with Docker  
- **Deploying** the game on **Google Cloud Platform (GCP)** for global access  

---

## ✨ Game Features

- **Authentic Mario Movement**: Physics-based running, jumping, and momentum  
- **Enemy AI**: Goombas that patrol platforms and can be defeated by jumping  
- **Collectibles**: Animated coins with scoring system  
- **Lives System**: Traditional 3-lives gameplay with Game Over screen  
- **Level Design**: Multi-platform levels with progressive difficulty  
- **Sound Effects**: Retro-inspired audio using Web Audio API  
- **Responsive Design**: Scales for different screen sizes  
- **Global Access**: Deployed on **GCP Compute Engine** using Docker  

---

## 🏗️ Project Structure

```

├── src/
│   ├── game/
│   │   ├── entities/
│   │   │   ├── Player.ts          # Player physics and controls
│   │   │   ├── Enemy.ts           # Enemy AI and behavior
│   │   │   ├── Coin.ts            # Collectible coins with animations
│   │   │   └── Platform.ts        # Ground/platform objects
│   │   ├── Game.ts                # Main game controller
│   │   ├── GameRenderer.ts        # Canvas rendering engine
│   │   ├── InputHandler.ts        # Keyboard input manager
│   │   ├── SoundManager.ts        # Sound effects
│   │   └── CollisionDetector.ts   # Physics collision detection
│   ├── styles/
│   │   └── game.css               # UI & canvas styling
│   └── main.ts                    # Application entry point
├── index.html                     # Main HTML file
├── Dockerfile                     # Container configuration
├── package.json                   # Dependencies & scripts
└── README.md                      # This file

````

---

## 🚀 Getting Started

### Prerequisites

- Node.js 18+
- npm or yarn

### Local Development

```bash
git clone https://github.com/Kowshik-mk/Project-SuperMario.git
cd Project-SuperMario
npm install
npm run dev
````

Open your browser at the local dev URL.

### Build for Production

```bash
npm run build
npm run preview
```

---

## 🐳 Docker Containerization (My DevOps Contribution)

### Build & Run Locally

```bash
docker build -t super-mario-game .
docker run -p 8080:8080 super-mario-game
```

➡️ Access locally at: [http://localhost:8080](http://localhost:8080)

### Dockerfile Highlights

* Multistage file for size reduction
* Node.js 18 Alpine base image
* Installs dependencies & builds app
* Serves static files via `http-server`
* Exposes port 8080

---

## ☁️ GCP Deployment (My DevOps Contribution)

The game is deployed globally on **Google Cloud Platform (GCP Compute Engine)** using Docker.

### Steps to Deploy on GCP

1. **Build Docker Image**

   ```bash
   docker build -t gcr.io/<kowshikmk>/super-mario-game:v1 .
   ```

2. **Push Image to Google Container Registry**

   ```bash
   gcloud auth configure-docker
   docker push gcr.io/<kowshikmk>/super-mario-game:v1
   ```

3. **Deploy on Compute Engine VM**

   * Create a VM instance in GCP
   * Install Docker on the VM
   * Pull and run the image:

     ```bash
     docker run -d -p 80:8080 gcr.io/<your-project-id>/super-mario-game:v1
     ```

4. **Enable HTTP Traffic**

   * In GCP console → VM Instance → Networking → Firewall
   * Enable **Allow HTTP traffic**

5. **Access the Game Globally**

   ```
   http://<GCP-external-IP>
   ```

✅ This makes the game available to anyone on the internet.

---

## 🎮 Controls

* **← / →** : Move Mario
* **Spacebar** : Jump (hold for higher jumps)
* **R** : Restart after Game Over

---

## 🔧 Technical Highlights

* **Collision**: Efficient AABB (Axis-Aligned Bounding Box)
* **Performance**: Frame-rate independent logic with delta time
* **Type Safety**: TypeScript-based modular design
* **Code Quality**: ESLint + modular architecture

---

## 🎨 Customization Ideas

* Add new enemies by extending `Enemy.ts`
* Create new levels in `Game.ts`
* Add power-ups & animations
* Modify physics constants for difficulty adjustment

---

## 🙌 Acknowledgements

* Game logic and frontend inspired by a Got it 👍 You want to make it clear in the README that **your unique contribution is the DevOps part** (containerization + GCP deployment). I’ll highlight that clearly so recruiters/others see the difference between the tutorial and your work.

Here’s the **final improved README.md**:

---

```markdown
# 🎮 Super Mario Bros - Browser Game

A fully functional **Super Mario Bros clone** built with **TypeScript**, **HTML5 Canvas**, and modern web technologies.  
The game runs entirely in the browser and replicates classic Mario mechanics like jumping, enemy stomping, coin collection, and platform physics.  

This project was originally inspired by a YouTube tutorial.  
👉 My contribution and focus is on the **DevOps side** — specifically:
- **Containerizing** the application with Docker  
- **Deploying** the game on **Google Cloud Platform (GCP)** for global access  

---

## ✨ Game Features

- **Authentic Mario Movement**: Physics-based running, jumping, and momentum  
- **Enemy AI**: Goombas that patrol platforms and can be defeated by jumping  
- **Collectibles**: Animated coins with scoring system  
- **Lives System**: Traditional 3-lives gameplay with Game Over screen  
- **Level Design**: Multi-platform levels with progressive difficulty  
- **Sound Effects**: Retro-inspired audio using Web Audio API  
- **Responsive Design**: Scales for different screen sizes  
- **Global Access**: Deployed on **GCP Compute Engine** using Docker  

---

## 🏗️ Project Structure

```

├── src/
│   ├── game/
│   │   ├── entities/
│   │   │   ├── Player.ts          # Player physics and controls
│   │   │   ├── Enemy.ts           # Enemy AI and behavior
│   │   │   ├── Coin.ts            # Collectible coins with animations
│   │   │   └── Platform.ts        # Ground/platform objects
│   │   ├── Game.ts                # Main game controller
│   │   ├── GameRenderer.ts        # Canvas rendering engine
│   │   ├── InputHandler.ts        # Keyboard input manager
│   │   ├── SoundManager.ts        # Sound effects
│   │   └── CollisionDetector.ts   # Physics collision detection
│   ├── styles/
│   │   └── game.css               # UI & canvas styling
│   └── main.ts                    # Application entry point
├── index.html                     # Main HTML file
├── Dockerfile                     # Container configuration
├── package.json                   # Dependencies & scripts
└── README.md                      # This file

````

---

## 🚀 Getting Started

### Prerequisites
- Node.js 18+
- npm or yarn

### Local Development
```bash
git clone https://github.com/Kowshik-mk/Project-SuperMario.git
cd Project-SuperMario
npm install
npm run dev
````

Open your browser at the local dev URL.

### Build for Production

```bash
npm run build
npm run preview
```

---

## 🐳 Docker Containerization (My DevOps Contribution)

### Build & Run Locally

```bash
docker build -t super-mario-game .
docker run -p 8080:8080 super-mario-game
```

➡️ Access locally at: [http://localhost:8080](http://localhost:8080)

### Dockerfile Highlights

* Node.js 18 Alpine base image
* Installs dependencies & builds app
* Serves static files via `http-server`
* Exposes port 8080

---

## ☁️ GCP Deployment (My DevOps Contribution)

The game is deployed globally on **Google Cloud Platform (GCP Compute Engine)** using Docker.

### Steps to Deploy on GCP

1. **Build Docker Image**

   ```bash
   docker build -t gcr.io/<your-project-id>/super-mario-game:v1 .
   ```

2. **Push Image to Google Container Registry**

   ```bash
   gcloud auth configure-docker
   docker push gcr.io/<your-project-id>/super-mario-game:v1
   ```

3. **Deploy on Compute Engine VM**

   * Create a VM instance in GCP
   * Install Docker on the VM
   * Pull and run the image:

     ```bash
     docker run -d -p 80:8080 gcr.io/<your-project-id>/super-mario-game:v1
     ```

4. **Enable HTTP Traffic**

   * In GCP console → VM Instance → Networking → Firewall
   * Enable **Allow HTTP traffic**

5. **Access the Game Globally**

   ```
   http://<your-vm-external-ip>
   ```

✅ This makes the game available to anyone on the internet.

---

## 🎮 Controls

* **← / →** : Move Mario
* **Spacebar** : Jump (hold for higher jumps)
* **R** : Restart after Game Over

---

## 🔧 Technical Highlights

* **Collision**: Efficient AABB (Axis-Aligned Bounding Box)
* **Performance**: Frame-rate independent logic with delta time
* **Type Safety**: TypeScript-based modular design
* **Code Quality**: ESLint + modular architecture

---

## 🎨 Customization Ideas

* Add new enemies by extending `Enemy.ts`
* Create new levels in `Game.ts`
* Add power-ups & animations
* Modify physics constants for difficulty adjustment

---

## 🙌 Acknowledgements

* Game logic and frontend inspired by a (https://www.youtube.com/@AbhishekVeeramalla).
* **DevOps (Dockerization + GCP Deployment)** fully implemented by me.

---


## 📜 License
This project is based on an educational YouTube tutorial [(link)](https://www.youtube.com/@AbhishekVeeramalla).  
The core game logic is credited to the original creator, while the **DevOps (Dockerization + GCP Deployment)** was implemented by me.  
Released under the MIT License.

```
