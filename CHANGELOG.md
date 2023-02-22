# Invasion Mod Changelog

Showing most recent changes first.

<!--
- [0.10.0](#0100)
- [0.9.0](#090)
- [0.8.0 (Workshop)](#080-workshop)
- [0.6.0 (ModLoader)](#060-modloader)
- [0.7.0](#070)
- [0.5.2](#052)
- [0.5.1](#051)
- [0.5.0](#050)
- [0.4.0 (Critters)](#040-critters)
- [0.3.0 (Shields)](#030-shields)
- [0.2.0 (Armor Pieces)](#020-armor-pieces)
- [0.1.1-fix](#011-fix)
- [0.1.1](#011)
- [0.1.0](#010)
-->

## 0.10.0

Major balancing patch focusing on Uncommon items, plus weapon buffs and a few minor fixes.

### Weapon Tweaks

* \[[`684ca1d128`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/684ca1d128)] - Alien Arm: Increase scaling for MaxHP (eg. T1 = 5% > 10%)
* \[[`5ec11b7b3d`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/5ec11b7b3d)] - Alien Arm: Add Hunter as a starting character
* \[[`215e682c20`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/215e682c20)] - Alien Arm: Add more starting characters (Chunky, Gladiator, Demon, Generalist)
* \[[`9947b118b8`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/9947b118b8)] - Demon Stick: Increase bounce damage (0.5 > 0.75)
* \[[`ca1f6bf868`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/ca1f6bf868)] - Demon Stick: Increase HPRegen scaling (T1/4 = 0.3/0.5 > 0.4/0.75)

### Item Reworks

* \[[`24db218ec8`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/24db218ec8)] - Bully Helmet: Now gives +RangedDamage instead of +%Damage
* \[[`2d2fc7e77b`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/2d2fc7e77b)] - Eyes: Change +CritChance (+5%) to +Range (+20)
* \[[`23871dad3e`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/23871dad3e)] - Cactus: Replace +MaxHP with +Melee
* \[[`43172eae14`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/43172eae14)] - Seismic Device: Use Engineering instead of Luck
* \[[`f6ece70a18`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/f6ece70a18)] - Surgical Bot: (Rework) Now gives +1 HPRegen per +2 Engineering
* \[[`4f7fa21b0a`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/4f7fa21b0a)] - Surgical Bot: Engineering +1 > +2
* \[[`65897dc424`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/65897dc424)] - Surgical Bot: Uncommon

### Item Balancing

* \[[`6c3722c3e8`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/6c3722c3e8)] - Ankh: Remove +MaxHP, add -Damage
* \[[`beb6caccbc`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/beb6caccbc)] - Batteries: Reduced +Speed (3 > 2)
* \[[`362c2265ba`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/362c2265ba)] - Blobfish: Increase ItemCost penalty (-4 > -5%)
* \[[`91e270ba9f`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/91e270ba9f)] - Captured Energy: Remove +HPRegen
* \[[`3d2492f8f1`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/3d2492f8f1)] - Dead Fish: Reduce cost (60 > 50), Increase +Enemyspeed (+2% > +3)
* \[[`60bd300dda`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/60bd300dda)] - Hairy Foot: Reduce HPRegen (3 > 2)
* \[[`bfaae7ea84`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/bfaae7ea84)] - Horn: Reduced +MeleeDmg (3 > 2), reduced Range penalty (-8 > -5)
* \[[`07f8c7d368`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/07f8c7d368)] - Horse Shoe: Remove +Speed, increase +Dodge (2 > 3)
* \[[`1d5697e5ca`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/1d5697e5ca)] - Knowledge: Increased -Luck penalty
* \[[`4da294eb0f`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/4da294eb0f)] - Knowledge: Increased +Elemental
* \[[`7c45b89627`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/7c45b89627)] - Knowledge: Increased +XP
* \[[`cd54bb802a`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/cd54bb802a)] - Maggot Soup: Fix tier being Uncommon, should be Rare
* \[[`341a20557b`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/341a20557b)] - Maggot Soup: Reduce +Harvesting (30 > 25)
* \[[`3ba1af9dea`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/3ba1af9dea)] - Metal Scrapper: Now Rare
* \[[`8693222f70`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/8693222f70)] - Natural Scent: Reduced cost
* \[[`9abc834e8a`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/9abc834e8a)] - Red Laser: Reduce +Range (100 > 50)
* \[[`09c4e22724`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/09c4e22724)] - Red Laser: Remove +Elemental, remove +CritChance
* \[[`1362a9c2f9`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/1362a9c2f9)] - Shields: Reduce received stats
* \[[`8d6d1e2d0c`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/8d6d1e2d0c)] - Stitched Bag: Increase +Harvesting (+4 > 5), decrease -AtkSpeed (-4 > -2)
* \[[`57947924fb`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/57947924fb)] - Stitched Bag: Increase +Harvesting (3 > 4)

### Fixes

**Text:**
* \[[`659740a15a`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/659740a15a)] - Ammo Box: Fix description (use the custom one instead of vanilla's)
* \[[`cb2bc36fc4`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/cb2bc36fc4)] - Mystery Machine: Fix recycling gains saying "more" instead of "less"
* \[[`a0e5b09dae`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/a0e5b09dae)] - Explosive Barrel: Change from plural (Barrels > Barrel)

**Tags:**
* \[[`38c2be1363`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/38c2be1363)] - Ammo Box - Fix being tagged as lifesteal
* \[[`f4e0aade0d`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/f4e0aade0d)] - Barrel: Fix tags
* \[[`79feff0bd8`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/79feff0bd8)] - Blobfish: Fix tags
* \[[`c6734ac572`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/c6734ac572)] - Bully Helmet: Fix tags
* \[[`d2cdd39656`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/d2cdd39656)] - Captured Energy: Fix tags
* \[[`1b17033f38`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/1b17033f38)] - Horse Shoe: fix tags
* \[[`4de419042c`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/4de419042c)] - Necklace: Fix item tags
* \[[`41ec2ef16c`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/41ec2ef16c)] - Pepper: Fix wrong item tags
* \[[`3b68b50dfd`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/3b68b50dfd)] - Pocket Magician: Fix wrong tag
* \[[`5bac65377e`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/5bac65377e)] - Poop: Fix item tags
* \[[`b37cde3a9c`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/b37cde3a9c)] - Spiky Shell: Fix being tagged as Lifesteal instead of HPRegen

**Args:**
* \[[`68928feb16`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/68928feb16)] - Asteroid: Fix args
* \[[`30cd1471bf`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/30cd1471bf)] - Devil Armor: Fix args
* \[[`fba64381ba`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/fba64381ba)] - Monks Blessing: Fix args

### Misc

**Renames**
* \[[`fcd5b26517`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/fcd5b26517)] - Rename "Big Hand" to "Bruiser Fist"
* \[[`39458d7cf1`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/39458d7cf1)] - Rename "Precision" to "Target Reticle"

**Other**
* \[[`dfd98c1c17`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/dfd98c1c17)] - Invasion Info Item- Remove, as the Mods screen now shows the current version
* \[[`2964958f4f`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/2964958f4f)] - Folder icon (desktop.ini) - for my own use
* \[[`d00e3fe9de`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/d00e3fe9de)] - Update manifest to use BBCode (test)
* \[[`cd8f7b8bd4`](https://github.com/BrotatoMods/brotato-invasion-mod/commit/cd8f7b8bd4)] - Auto godot stuff


## 0.9.0

- New Items:
	- Maggot Soup: +Harvesting, -MaxHP
		- > *Chug down this noxious concoction and become imbued with the filthy power of maggots!*
	- Magnet: +PickupRange, +Enemyspeed
		- > *Seems a bit too strong, it's pulling in everything!*
	- Precision: +RangedDmg, -AtkSpeed
		- > *Target training has taught you to slow down and focus your shots*
	- Family Heirloom: +TurretCritChance, -CritChance
		- > *It's a magical... something... that imbues your turrets with new power. But having it dangling from your neck really throws you off your game*
	- Pepper *(same effect as Spicy Sauce used to have: +dmg against burning enemies)*
- Tweaks:
	- **All Shields** (Bloody, Siphoning, Plasma, Coin): Now unique, fixed tag being set to `stat_armor` instead of `stat_dodge`
	- Abyssal Pact: Now legendary, Lifesteal reduced (+25 > +20)
	- Alien Artifact Alpha: Reduced penalty (-5 > -3)
	- Alien Artifact Omega: Reduced penalty (-5 > -3)
	- Alien Liver: Now has a negative effect (-MaxHP)
	- Baby Clothes: Reworked, now gives +Dodge (+10) but reduces crit on dmg taken (-3)
	- Beard: Reduced elemental bonus (+4 > +3)
	- Bell: Reduced stats (Engineering +2 > +1, AtkSpeed +5 > +3), reduced cost
	- Berserker's Mask: Removed -Harvesting, now deals 3 dmg p/sec
	- Bloody Tooth: Reduced +Melee (+5 > +3), increased -MaxHP (-1 > -3)
	- Cactus: Increased penalty (Luck -1 > -3)
	- Cross: Increases -Harvesting penalty (-3 > -10)
	- Cursed Octopus: Removed flat +Range
	- Dead Fish: Now uncommon, increased cost to match
	- Explosive Fruits: Removed all effects except the explosive fruits
	- Golden Statue: Increased +Luck (+30 > +40)
	- Jacob's Pride: Increased +Crit (+4 > +5), added -RangedDmg (-2), removed +Harvesting
	- Jumbee: Reduced cost (70 > 55)
	- Lost Soul's Cape: Reduced ranged damage gain (+5 > +3)
	- Maggot Bag: Increased -Harvesting (-5 > -10)
	- Magnificent Egg: Reduced +Harvesting (+15 > +10), increased -Engineering (-1 > -3)
	- Metal Boots: Reduced speed (10 > 8), added penalty (-2 MeleeDmg)
	- Mystery Machine: Penalty changed from -MaxHP to -RecylingRewards
	- Nanobug: Removed +ExplosinDmg
	- Pet Food: Now a cheap uncommon, increases %DmgPerStructure (+2% > +3%)
	- Picture: Now gives reroll discount, removed all old effects
	- Ring: Removed +PickupRange
	- Skull: Reduced RangedDmg (+8 > +4), increased -LifeSteal penalty (-4 > -8), removed -Luck
	- Spiky Shell: Reduced +Armor (2 > 1), increased -Dodge penalty (-4 > -5)
	- Stitched Bag: Increase AtkSpeed penalty (-2 > -4)
	- Surgical Bot: Increased cost (20 > 30)
	- Water Bottle: Now Uncommon, increased +MaxHP and +Harvesting, changed -CritChance to -ElementalDmg
- Removed:
	- *These were removed because their effects or sprites were added to vanilla*
	- Shield Breaker
	- Spicy Sauce
	- Rare Coin
- Fixes:
	- Fixed args for Monk's Blessing, Disgusting


## 0.8.0 (Workshop Update)

- Workshop update
- Add item: Explosive Barrels
- Finished Alien Arm
- Continued work on Demon Stick


## 0.7.0

- Internal updates


## 0.6.0 (ModLoader)

- Updates the mod to work with [ModLoader](https://github.com/GodotModding/godot-mod-loader)

**New Items:**

- Integrated Chipset - Increases iframes duration
- Mystery Machine - Gain +1 to 2 random stats when you level up
- Shield Breaker - Deal more damage against bosses (and elites)
- Spicy Sauce - Bonus damage to burning enemies

**Changes:**

- Rare Coin: Reworked. Now gives a % chance for free rerolls
- Shields: Now proc on dodge instead of taking damage. Stat gains increased slightly to account for this


## 0.5.2

- Add WIP weapon: Demon Stick
- Cleanup .import files - removes all old files, reducing the .import file count from ~2k to <400


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
