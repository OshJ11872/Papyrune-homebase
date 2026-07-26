# Papyrune (The Roaring Knight Mod)
> **Tagline:** *Men in Black meets Deltarune. Don't sue me plz.*

A standalone playable chunk of Deltarune featuring an alternate endgame boss encounter. Designed for players to download and play immediately—no completed game saves or patience required.

---

## 🧭 The Three Routes

### 🌟 Route 1: Pacifist (The Reveal & The Titan Loop)
* **The Flow:** Standard battle encounters where you attempt to act or spare. If you select **[FIGHT]**, the Knight escalates the timeline. 
* **The Escalation:** The Knight proclaims, `* OK. NOW LET’S GET TO BUSINESS.` He plunges his soul-forged black knife into the ground, raising a massive **Roaring Titan** that he pilots from the inside.
* **The Loop Condition:** The player cannot win this phase; your HP must hit `0`. Upon failing, the mech shatters to reveal an exhausted Papyrus. 
* **The Lasagna Drop:** Sans steps out from a shortcut, violently **drops his paper shopping bags**, and panics: `* WHAT? I have been looking for you!!!!` Sans states he made lasagna, but realizes the timeline is too unstable. He pulls out a device: `* Sans used the memory eraser.` 
* **The Reset:** The mod flashes blindingly white and seamlessly kicks the player back to the pre-battle screen with persistent deja vu flavor text. To break the infinite timeline trap, the player must allow the *Base Knight* to drop their HP to `0` without ever hitting him.

### 😐 Route 2: Neutral (The Normal Duel)
* **The Flow:** A standard, straight-forward boss fight. No Titan triggers, but no intentional losing.
* **The Resolution:** Defeating the Base Knight fair and square forces him to retreat back through the Dark Fountain, leaving his true identity hidden from the party forever. 

### 🩸 Route 3: Genocide (The Sibling Stand-off & Duplication Nightmare)
* **The Flow:** Because of your extreme violence, **Sans stands beside his brother from the very first frame of the battle**, dropping his shopping bags instantly. You must fight **both brothers at the same time** first.
* **The Glitch Triggers:** Attempting to brute-force the fight shatters the code.
  * Hitting Sans triggers a cinematic box: `* There are two sans now.` A fully functioning duplicate clone spawns, doubling the incoming Gaster Blaster attacks.
  * Hitting Papyrus right after the original Sans triggers another cinematic box: `* There is two roaring papyrus's now.` A second armored Knight clones into existence.
* **The Ultimate Phase:** Once you successfully defeat the first phase against the brothers, the two Papyrus duplicates combine, unleashing the final **Roaring Titan** phase supported by a dual-wall of bone attacks from the twin Sans clones.

---

## 🎨 Sprite & Art Asset Guidelines (16-Bit 2D Deltarune Style)

If you are generating assets via AI (like Midjourney, Retro Diffusion, or DALL-E) or sketching them manually, please follow these visual rules to match the *Deltarune* aesthetic:

*   **The Base Knight (Papyrus):** 
    *   *Description:* A tall, thin, lanky skeleton character encased in massive, dark, heavy medieval knight armor. 
    *   *Style:* Clean dark outlines, a solid dark purple/black color palette, and glowing white eyes hidden inside the helmet visor. 
    *   *Canvas:* 64x96 pixels (isolated on a transparent background).

*   **The Roaring Titan:** 
    *   *Description:* A gargantuan, world-ending boss monster made of stone, ancient brick, and swirling dark fountain energy. 
    *   *Style:* Heavy 16-bit textures, jagged silhouettes, and immense glowing neon red eyes. Should look like a massive mech suit that Papyrus can pilot.
    *   *Canvas:* 256x256 or 512x512 pixels (isolated on a transparent background).

*   **Sans (Shopping Bags Drop Animation):** 
    *   *Description:* A short, smiling skeleton character wearing a blue hoodie. He needs a sprite holding classic brown paper grocery bags, followed by a shock frame where his hands fly up and the bags crash down.
    *   *Canvas:* 32x32 pixels per frame (isolated on a transparent background).

---

## 🛠️ Code Implementation
The underlying code logic handling these routes can be found in the accompanying **`boss_logic.gml`** file within this repository.

---

## ⚖️ Legal Disclaimer (don't sue me plz)

*   **Deltarune:** This is a non-profit, fan-made standalone mod. All characters like Sans, Papyrus, and the world of Deltarune belong entirely to Toby Fox and the Deltarune Team. Please support the official release!
*   **Men in Black:** The "Memory Eraser" mechanics and concepts used by Sans are a direct parody of and homage to the "Neuralyzer" device from the *Men in Black* franchise (Sony Pictures / Columbia Pictures). No copyright infringement is intended. This project is built entirely for fun and free community entertainment.

---

## 🎬 Credits
* **Director & Concept Creator:** OJ
* **AI Collaboration & Scripting Assistant:** Gemini 1.5 Flash (Powered by Google)
* **Original Game Assets & World:** Toby Fox & The Deltarune Team
