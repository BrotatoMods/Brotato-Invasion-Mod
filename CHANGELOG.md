# Invasion Mod Changelog

Showing most recent changes first.

- [0.5.1](#051)
- [0.5.0](#050)
- [0.4.0 (Critters)](#040-critters)
- [0.3.0 (Shields)](#030-shields)
- [0.2.0 (Armor Pieces)](#020-armor-pieces)
- [0.1.1-fix](#011-fix)
- [0.1.1](#011)
- [0.1.0](#010)


## 0.5.1

- This is a WIP version that doesn't reflect the next version (which will be 0.6).
- New weapon: Alien Arm. Scales exclusively with MaxHP and HPRegen, and shoots worms.
  - In theory this is an interesting idea, as you only have 2 stats to level
  - In play though, it feels underwhelming as focusing on just 2 stats means you miss out on most items
  - I thought I'd share it anyway so you can try it out. It's still pretty fun, just way too limited.
- General WIP balance tweaks



## 0.5.0

### New Weapons (2)

- Cudgel - Scales with Armor
- Metal Cannon - Scales with Armor

### New Items (4)

| Name | Notes |
| ---- | ----- |
| Curse of the Warrior | Shops only sell ranged weapons |
| Curse of the Ranger  | Shops only sell melee weapons  |
| Fox           | Trees drop more materials. More trees spawn |
| Mystery Gift  | Gain 2 random items (can be **any** tier) |

### Changes

- Nearly every item has been rebalanced, thanks to Pétra's excellent suggestions ([view on Discord](https://discord.com/channels/1050093805363269693/1050096077954633779/1056306987572396172))

### Fixes

- Siphoning Shield: Now increases MaxHP instead of HPRegen, because temporary HPRegen increases are ignored by the game
- Broken Vase: Fix procing when you collect materials, instead of when an enemy dies
- Broken Vase: Fix crit scaling being ignored (now scales with Luck instead, because it's unfortunately not possible to scale damage with anything except Luck with this effect)
- Seismic Device: Scale with Luck instead of Engineering, same reason as above

### Credits

- Thanks to RogueAbyss for the Curse of the Warror/Ranger ideas
- Thanks to Pétra for the huge amount of balance suggestions



## 0.4.0 (Critters)

- Introduces **critters**: Sacrifice a bit of Harvesting to plant them in the ground, and they'll reward you with bonus stats at the end of each wave.
- New Items: Critters (4): *Aggressive Critter, Drugged Critter, Explosive Critter, Rich Critter*
- New Items: General (11): *Energy Armor, Lost Potato, Nanobug, Pet Food, Voodoo Totem, Barrel, Fruit Bag, Remote Detonator, Coral, Cursed Octopus, Ammo Box*
- Item balancing (see below)

- Big buffs for the current 3 weapons

### New Items

#### Critters (4)

- Aggressive Critter (atk speed)
- Drugged Critter (speed)
- Explosive Critter (explosion size)
- Rich Critter (double materials chance)

#### General (11)

- Energy Armor (+atk spd per armor)
- Lost Potato (+knockback, -%dmg)
- Nanobug (+explosion size per Ranged dmg)
- Pet Food (+damage per structure)
- Voodoo Totem (+ranged/melee when moving/not moving)
- Barrel (-enemy speed, +enemies)
- Fruit Bag (+max hp, +consumable healing, -lifesteal)
- Remote Detonator (small chance for enemies to explode, scales with Engineering, huge radius)
- Coral (sets a random negative stat to half its value, eg. -20 becomes -10)
- Cursed Octopus (+range per different weapon)
- Ammo Box (shops' only sell tier 2 weapons and above)

### Item Balancing

- All Shields: Now uncommon
- Alien Hat: Reworked, now gives +atk spd p/sec but costs -armor p/sec (probably OP!)
- Disgusting: Now uncommon, so you can tailor your build around it sooner.
- Banana Leaf: Changed to give %Dodge at the end of each wave, now uncommon
- Lava Balls: Elemental +4 > +3, Max HP -3 > -2
- Devil Armor: Attack speed per -1 Armor: +3% > +10% (massive buff!)
- Full Moon: Damage +5% > +8%
- Hairy Foot: -20 Range > -6% Speed

Thanks to ChristmassyJune for these suggestions too: (shown in *italics*)

- [View context on Discord](https://discord.com/channels/1050093805363269693/1050096077954633779/1055595281464438824)
- *Tier: Lotus (could be better being uncommon)* - Common in v0.3
- *Tier: Small Hand (could be better being common)* - Uncommon in v0.3; +15% feels like a lot as vanilla blues only give +10%
- *Tier: Bloody Tooth (should be common)* - keeping, as +5 melee feels like a lot for only -1 MaxHP
- *Weak: Blobfish* - Keeping, as the only other vanilla common +Dodge also reduces melee/ranged, so this is an alternative with a pretty small downside
- *Weak: Turtle* - Reduced speed penalty to -1%
- *Weak: Banana leaf* - Reworked, now uncommon and gives dodge every wave
- *Weak: Horn* - Buffed to +3 melee and -6 range
- *Weak: Waffle* - +MaxHP increased to +3, damage penalty reduced to -1%
- *Weak: Magnificent Egg* - Major buffs
- *Weak: Horse Shoe* - Increased speed to +4%, reduced -Lifesteal to -1%
- *Weak: Full Moon* - Increased +damage to +8
- *OP: Vampirism* - Uncommon in 0.3
- *OP: Blood drop* - Reduced Lifesteal to +2% (feels too weak now as it's the only grey Lifesteal item in Invasion and -1 MaxHP is pretty steep early game, but I'll use this for now)
- *OP: Metal Scrapper* - Reworked in 0.4, now gives +Armor each wave (Uncommon but farily expensive)
- *OP: Necklace* - Removed +Ranged, reduced -Atk speed to -2%
- *OP: Pocket Magician* - Removed +Ranged, reduced Armor to -2
- *OP: Knowledge* - Fixed cost not matching its tier (was set to an Uncommon cost)
- *OP: Beard* - Reduced +Elemental to +4, reduced Armor to +1
- *OP: Blueprint* - Increased cost
- *OP: Surgical Bot (too much lifesteal)* - Was reworked in 0.3 to give HP Regen instead
- *OP: Red Laser* - Was reworked in 0.3
- *Cost: Brain (good but needs to be cheaper)* - That cost might have been from an older version, reduced cost anyway

### Weapon Balancing

- Nail Bat: Major buffs (cooldown, dmg, Lifesteal scaling)
- Big Hand: Increased scaling for Max HP
- Clone: Buffed scaling at higher tiers

### Notes

- Fruit Bag stats idea from [ArosRising](https://discord.com/channels/630060181086142487/1033154329718292540/1053833206975185027) ("Golden Apple")



## 0.3.0 (Shields)

- Preview version, only released on Discord & GitHub
- Introduces **shields**, which convert some of the damage you take into temporary stats, while also increasing Dodge slightly
- 4 new items (shields):
	- *Bloody Shield, Lucky Shield, Plasma Shield, Siphoning Shield*
	- Bloody Shield
	- Lucky Shield
	- Plasma Shield
	- Siphoning Shield
- 7 new items (general):
	- *Alien Artifact 1, Alien Artifact 2, Alien Hat, Blood Fuel, Lost Soul's Cape, Sir Bronnie's Armor, Metal Boots*
	- Alien Artifact 1
	- Alien Artifact 2
	- Alien Hat
	- Blood Fuel
	- Lost Soul's Cape
	- Sir Bronnie's Armor
	- Lucky Shield
	- Metal Boots
- Lots of item balancing, see the GitHub 0.3.0 release for the full list.
- *Thanks again to Pétra for many item ideas*
- *Thanks to RogueAbyss for the encouragement!*

**Fixes:**
- Fix icon for Nail Bat

**Credits:**
- *Thanks again to @Pétra#8316 for many item ideas*
- *Thanks to @RogueAbyss#4682 for the encouragement!*

### Item Balancing

- Ankh: Max HP +20 > +10
- Asteroid: +Damage 5% > 10%
- Ball and Chain: Speed -25% > 20%
- Captured Energy: Elemental +6 > +8
- Explosive Vest: Max HP -5 > Speed - 5%
- Explosive Vest: Removed elemental scaling
- Explosive Vest: Engineering scaling 100% > 200%
- Golden Veins: Harvesting +18 > +20
- Golden Veins: Melee +3 > +5
- Gold Armor: Armor +4 > +2
- White Armor: Armor +2 > +1
- Red Laser: No longer unique
- Red Laser: Ranged/Engineering/Elemental Damage +4 > +5
- Red Laser: Range +80 > +100
- Red Laser: Dodge -20 > -25
- Ring: Added Pickup Range (+25%)
- Skull: Luck -8 > -4
- Vampirism: Now tier 2
- Vampirism: Life Steal +11 > +10
- Vampirism: Harvesting: -5 > -15



## 0.2.0 (Armor Pieces)

- Preview version, only released on Discord & GitHub
- Introduces armor pieces, which give stats based on your current Armor.
- 4 new items (armor pieces): Devil Armor, Gold Armor, Metal Plate, White Armor
- 3 new items (general): Backpack, Jumbee, Pants Ant
- Lots of item balancing, most items have been updated
- Added a special mod info item that shows the current version and is automatically added
- Fixed a lot of misplaced item tags
- Thanks to Pétra for many item ideas



## 0.1.1-fix

- Fixed the download for the Mod Loader PCK.
- Released 2022-12-13 (13th Dec)



## 0.1.1

- Initial release on the wiki.
- Lots of balance tweaks and a few fixes. Changelog is here.
- Released 2022-12-11 (11th Dec)



## 0.1.0

- Initial release on Discord.
