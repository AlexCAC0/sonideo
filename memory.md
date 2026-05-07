# Project Context: Sonideo - Neo Edition

"Sonideo" is a web-based game designed to test players' knowledge of songs.

## Technical Stack & Environment
*   **Development Server:** Vite (`npm run dev`).
*   **Firebase Integration:** Real-time database for game state, stats, and playback sync.

## Visual Identity: Neo-Grotesk Glass
*   **Design Language:** Glassmorphism with mesh gradient backgrounds (animated).
*   **Feedback System:** Subtle vignette effect (Green/Red) and very low-volume audio (0.05 - 0.08).
*   **Leaderboards:** Includes a detailed final leaderboard with an accordion system showing Correct/Incorrect counts and Success Rate (%).

## Progress Summary (May 7, 2026)
*   Fixed **Puntajes Button**: The temporary leaderboard is now a fixed overlay with high z-index and blur background, ensuring it displays correctly over both moderator and player views.
*   Refined **Podium Visuals & Advanced Animation**: 
    *   **Unique "Glass Float & Shine" Effect**:
        *   3D "Pop-In" entry with bounce and rotation, strictly hidden until animation starts to maintain mystery.
        *   Ongoing floating/hover animation for all steps.
        *   Dynamic "Shine Sweep" (sheen) that passes over the glass cards.
        *   **Winner Celebration**: Added a floating crown (👑) and an intensified glow for the 1st place.
    *   **Fixed Layout**: Corrected CSS selector to ensure steps are displayed side-by-side (horizontal) instead of vertically, using a 2-1-3 competitive layout.
*   Verified **Audio/General Flow**: Confirmed audio feedback volumes are within the safe low range (0.05-0.08) and general game synchronization is robust.

# Outstanding Issues
*   Check mobile responsiveness of the new 3D podium layout.
*   Verify if further "Reglas" refinements are needed based on user feedback.

Good night!