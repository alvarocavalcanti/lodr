# LODR - Game Design Document #

### Premise ###
This game is inpired by [LORD](http://en.wikipedia.org/wiki/Legend_of_the_Red_Dragon), a text-based RPG. By inspired by it is meant to have some similarities, both on mechanics and on content, but as this is a study-project (for now) its scope will be strict, focusing more on the study needs more than the game's needs.

### Basic Plot/Game Dynamics ###
The player controls a hero that have a few attributes and can wander through a few locations (The Village is the central hub). On each locations she can perform some actions, that take in account the hero's attributes.

### Hero's Attributes ###

| Attribute | Description |
| --------- | ----------- |
| Life Points (LP) | The higher, the better. If they go ZERO, the hero's dies |
| Constitution (CON) | Adds to both ATK and DEF, when dealing and taking damage respectively |
| Intelligence (INT) | Not sure when to use it yet. Maybe Magic Atacks. Who knows? |
| Agility (AGI) | Adds to the probability of landing a critical blow and of scaping an encounter

### Hero's Equipament ###

The hero may equip one weapon and one armor. Each Weapon has a power (POW) and each armor has its rating (RAT).

### Hero's Leveling ###

Pretty simple. Each level has 100 XP. Upon reaching a new level the player gains 1 point to distribute.

### Locations ###

##### 1. The Village

Central hub. Here the hero can access all the other areas. The only options are to move.

##### 2. Market

Random equipaments are available on each visit.

##### 3. Forest

Random encounters. Upon engaging in one, the player may choose between three attack strategies:

- __Turn by Turn__: Each turn must be resolved by the player, who has to choose between attack, drink a potion (if any) or try to escape (that takes into account the hero's AGI). __Rewards 100% XP__.
- __Fight to Death__: The combat resolves automatically. But the hero does not drinks any potion or tries to escape. __Rewards 120% XP__.
- __Safe Fight__: The combat resolves automatically. The hero keeps drinking health potions if any when the Life Points reach less than 20%, or tries to escape if there are no health potions. __Rewards 80% XP__.

##### 4. Shrine

Heal wounds, ressurect after died.

##### 5. Look for Trouble

Search for another heroes on the Town's Square and challenge them.

### Combat System ###

Pretty simple:

1. ATK = CON + POW
2. DEF = CON + RAT
3. DMG = ATK - DEF
4. New HP = HP - DMG

Escaping:

1. Hero's AGI * D6 >= Enemy's AGI * D6

Drop:

- Coins
- Equippament
- Health Points

### Equipament Generation ###

The equipament are generated when the hero enters the Market, or when a drop occurs. But the equippament will only come into existence (get added to the database) if the hero equips it. Also, all previous created equipament will be taken into account when generating a new one.

### Enemy Generation ###

Takes into account the hero's current level.