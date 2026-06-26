# PokéDream

A comprehensive reimagining of **Pokémon Red & Blue** built on the pret `pokered` disassembly.

PokéDream modernizes Generation I while preserving its original spirit. It draws inspiration from later generations, the original anime, and the kinds of changes I always imagined making if I had been part of the original development team.

PokéDream is the Pokémon game I dreamed of after my very first playthrough. It's the version where Kanto felt larger, every Pokémon had a purpose, the battle system continued evolving, and the world drew inspiration from both the games and the original anime. Rather than reinvent Generation I, the goal is to realize what it might have become had the original developers been given more time.

## Project Goals

- Modernize Generation I mechanics
- Improve Pokémon viability
- Create a healthier type ecosystem
- Preserve the feel and pacing of the original games
- Stay faithful to the world and characters of Kanto
- Increase difficulty to make journey progress feel more impactful
- Blend the games and the original anime into a more complete Kanto experience

---

## Documentation

### Pokémon
  - 🧬 [Typing Changes](docs/pokemon/types.md)
  - 📚 [Learnset Changes](docs/pokemon/learnsets.md)
  - 📊 [Base Stat Changes](docs/pokemon/base_stats.md)

### Battle
  - ⚙️ [Mechanics](docs/battle/mechanics.md)
  - ⚔️ [Move Updates](docs/battle/moves.md)

### World
  - 🗺️ [Route Changes](docs/world/routes.md)
  - 🏙️ [City Changes](docs/world/cities.md)
  - 👥 [Trainer Changes](docs/world/trainers.md)
  - 📜 [Quests](docs/world/quests.md)

### Enhancements
  - 🎮 [Quality of Life](docs/enhancements/quality_of_life.md)
  - 🎨 [Graphics](docs/enhancements/graphics.md)

### Changelog
  - 📝 [Changelog](docs/changelog.md)

---

## Major Features

### Pokémon

- Updated and rebalanced Pokémon typings:
  - More dual-typed Pokémon.
  - Removed frequently-paired dual types: 
    - Updated all Normal/Flying Pokémon.
    - Updated most Grass/Poison Pokémon.
    - Updated some Rock/Ground Pokémon. 
- Reworked learnsets for every Pokémon to better reflect each Pokémon's identity and intended role.
- Rebalanced base stats to improve overall viability and roster balance.

**Design philosophy:** <i>Every</i> Pokémon should feel distinct, flavorful, and viable throughout the game. Typings were chosen based on each Pokémon's biology, behavior, environment, established lore, and successful concepts introduced in later generations. Learnsets and base stats were redesigned to reinforce each Pokémon's unique identity while creating a healthier, more balanced roster that remains faithful to the spirit of Generation I.

### Battle System

- Added the three new types from later generations: Dark, Steel, and Fairy.
- Physical/Special split for attacks.
- Separate Special Attack and Special Defense stats.
- Obedience mechanics:
  - Overleveled Pokémon you catch yourself can also disobey.
  - Badge obedience thresholds have been rebalanced.
- Type matchups are consistent with later generations.
- Added new moves, mostly taken from future generations, and also changed many move base powers, typings, and effects:

**Design philosophy:** Bring Generation I's battle system closer to modern Pokémon while remaining faithful to the feel of the original games. Modern mechanics were adopted where they improve gameplay, and additional changes were made only when they supported game balance or thematic consistency.

### World

- Expanded and redesigned routes, added new settlements and rest stops throughout Kanto.
- Expanded cities and towns with new buildings, explorable interiors, and points of interest.
- Added new NPCs and trainers, including many inspired by the original anime, and rebalanced existing trainer/gym leader parties.
- Added optional quests, events, and side content.

**Design philosophy:** The original Kanto was constrained by the technology and cartridge space of its time. PokéDream expands the region with new locations, interiors, characters, and stories to create a world that feels more alive and lived in, while preserving the atmosphere, exploration, and charm that define Generation I.

### Enhancements

- Added numerous quality-of-life improvements and non-battle gameplay enhancements.
  - In-battle experience bar.
  - Portable PC (menu access).
  - Earlier access to fishing rods.
  - Permanent tree cutting.

**Design philosophy:** Many aspects of the original games were shaped by the technical limitations of the Game Boy and the conventions of the time. PokéDream modernizes those systems where appropriate and improves quality of life while preserving the charm that defines Generation I.


### Graphics

- Incorporated graphical assets and visual improvements from Pokémon Yellow and the Generation II games.
  - Added new trainer and NPC sprites from Yellow and Generation II.
  - Replaced some overworld sprites with more accurate Generation II ones.
  - Enhanced environments with numerous visual tile, block, and map refinements.

**Design philosophy:** Build upon Generation I's visual identity rather than replace it. Much like Pokémon Yellow expanded on Red and Blue, PokéDream incorporates visual improvements from official Pokémon games wherever they naturally fit. The result is a world that feels more vibrant, expressive, and alive while remaining unmistakably Generation I.

---

## Building

```bash
make blue
```
or
```bash
make red
```

I focused on Blue version since this is the version I originally played. However, this project should be the same for both versions.

This will generate a pokeblue.gbc or pokered.gbc file that can be played in any GameBoy emulator.

  
---

## Credits

- Built on the excellent `pokered` disassembly by the pret community.
- Thanks to the pret community for their documentation, tutorials, tools, and years of reverse engineering that made this project possible.