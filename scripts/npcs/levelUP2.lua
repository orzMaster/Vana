--[[
Copyright (C) 2008-2009 Vana Development Team

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; version 2
of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
--]]
-- NimaKIN, credits TerraEnvy of Ragezone/Terra of dev.chisoft & Bri/Zak for adding new skills

if isGM() == 1 then
	addText("Hi #h #! Would you like your skills maxed?");
	yes = askYesNo();
	if yes == 1 then
		-- Beginner
		addSkillLevel(1003, 1);--	Legendary Spirit
		addSkillLevel(1004, 1);--	Monster Rider
		addSkillLevel(1005, 1);--	Echo of Hero
		addSkillLevel(1002, 1);--	Nimble Feet
		addSkillLevel(1001, 1);--	Recovery
		addSkillLevel(1000, 1);--	Three Snails
		addSkillLevel(8, 1);--	Follow the Lead
		-- Warrior (1st job)
		addSkillLevel(1000002, 8);--	Endure
		addSkillLevel(1000000, 16);--	Improving HP Recovery
		addSkillLevel(1000001, 10);--	Improving MaxHP Increase
		addSkillLevel(1001003, 20);--	Iron Body
		addSkillLevel(1001004, 20);--	Power Strike
		addSkillLevel(1001005, 20);--	Slash Blast
		-- Magician (1st Job)
		addSkillLevel(2001004, 20);--	Energy Bolt
		addSkillLevel(2000001, 10);--	Improving Max MP Increase
		addSkillLevel(2000000, 16);--	Improving MP recovery
		addSkillLevel(2001003, 20);--	Magic Armor
		addSkillLevel(2001005, 20);--	Magic Claw
		addSkillLevel(2001002, 20);--	Magic Guard
		-- Bowman (1st Job)
		addSkillLevel(3001004, 20);--	Arrow Blow
		addSkillLevel(3000001, 20);--	Critical Shot
		addSkillLevel(3001005, 20);--	Double Shot
		addSkillLevel(3001003, 20);--	Focus
		addSkillLevel(3000000, 16);--	The Blessing of Amazon
		addSkillLevel(3000002, 8);--	The Eye of Amazon
		-- Thief (1st Job)
		addSkillLevel(4001003, 20);--	Dark Sight
		addSkillLevel(4001002, 20);--	Disorder
		addSkillLevel(4001334, 20);--	Double Stab
		addSkillLevel(4000001, 8);--	Keen Eyes
		addSkillLevel(4001344, 20);--	Lucky Seven
		addSkillLevel(4000000, 20);--	Nimble Body
		-- Pirate (1st Job)
		addSkillLevel(5000000, 20);--	Bullet Time
		addSkillLevel(5001001, 20);--	Flash Fist
		addSkillLevel(5001002, 20);--	Sommersault Kick
		addSkillLevel(5001003, 20);--	Double Shot
		addSkillLevel(5001005, 10);--	Dash
		-- Fighter (2nd Job)
		addSkillLevel(1101005, 20);--	Axe Booster
		addSkillLevel(1100001, 20);--	Axe Mastery
		addSkillLevel(1100003, 30);--	Final Attack : Axe
		addSkillLevel(1100002, 30);--	Final Attack : Sword
		addSkillLevel(1101007, 30);--	Power Guard
		addSkillLevel(1101006, 20);--	Rage
		addSkillLevel(1101004, 20);--	Sword Booster
		addSkillLevel(1100000, 20);--	Sword Mastery
		-- Page (2nd Job)
		addSkillLevel(1201005, 20);--	BW Booster
		addSkillLevel(1200001, 20);--	BW Mastery
		addSkillLevel(1200003, 30);--	Final Attack : BW
		addSkillLevel(1200002, 30);--	Final Attack : Sword
		addSkillLevel(1201007, 30);--	Power Guard
		addSkillLevel(1201004, 20);--	Sword Booster
		addSkillLevel(1200000, 20);--	Sword Mastery
		addSkillLevel(1201006, 20);--	Threaten
		-- Spearman (2nd Job)
		addSkillLevel(1300003, 30);--	Final Attack : Pole Arm
		addSkillLevel(1300002, 30);--	Final Attack : Spear
		addSkillLevel(1301007, 30);--	Hyper Body
		addSkillLevel(1301006, 20);--	Iron Will
		addSkillLevel(1301005, 20);--	Pole Arm Booster
		addSkillLevel(1300001, 20);--	Pole Arm Mastery
		addSkillLevel(1301004, 20);--	Spear Booster
		addSkillLevel(1300000, 20);--	Spear Mastery
		-- Fire/Poison Wizard (2nd Job)
		addSkillLevel(2101004, 30);--	Fire Arrow
		addSkillLevel(2101001, 20);--	Meditation
		addSkillLevel(2100000, 20);--	MP Eater
		addSkillLevel(2101005, 30);--	Poison Brace
		addSkillLevel(2101003, 20);--	Slow
		addSkillLevel(2101002, 20);--	Teleport
		-- Ice/Lightning Wizard (2nd Job)
		addSkillLevel(2201004, 30);--	Cold Beam
		addSkillLevel(2201001, 20);--	Meditation
		addSkillLevel(2200000, 20);--	MP Eater
		addSkillLevel(2201003, 20);--	Slow
		addSkillLevel(2201002, 20);--	Teleport
		addSkillLevel(2201005, 30);--	Thunderbolt
		-- Cleric (2nd Job)
		addSkillLevel(2301004, 20);
		addSkillLevel(2301002, 30);--	Heal
		addSkillLevel(2301005, 30);--	Holy Arrow
		addSkillLevel(2301003, 20);--	Invincible
		addSkillLevel(2300000, 20);--	MP Eater
		addSkillLevel(2301001, 20);--	Teleport
		-- Hunter (2nd Job)
		addSkillLevel(3101005, 30);--	Arrow Bomb : Bow
		addSkillLevel(3101002, 20);--	Bow Booster
		addSkillLevel(3100000, 20);--	Bow Mastery
		addSkillLevel(3100001, 30);--	Final Attack : Bow
		addSkillLevel(3101003, 20);--	Power Knock-Back
		addSkillLevel(3101004, 20);--	Soul Arrow : Bow
		-- Crossbowman (2nd Job)
		addSkillLevel(3201002, 20);--	Crossbow Booster
		addSkillLevel(3200000, 20);--	Crossbow Mastery
		addSkillLevel(3200001, 30);--	Final Attack : Crossbow
		addSkillLevel(3201005, 30);--	Iron Arrow : Crossbow
		addSkillLevel(3201003, 20);--	Power Knock-Back
		addSkillLevel(3201004, 20);--	Soul Arrow : Crossbow
		-- Assassin (2nd Job)
		addSkillLevel(4101003, 20);--	Claw Booster
		addSkillLevel(4100000, 20);--	Claw Mastery
		addSkillLevel(4100001, 30);--	Critical Throw
		addSkillLevel(4101005, 30);--	Drain
		addSkillLevel(4100002, 20);--	Endure
		addSkillLevel(4101004, 20);--	Haste
		-- Bandit (2nd Job)
		addSkillLevel(4201002, 20);--	Dagger Booster
		addSkillLevel(4200000, 20);--	Dagger Mastery
		addSkillLevel(4200001, 20);--	Endure
		addSkillLevel(4201003, 20);--	Haste
		addSkillLevel(4201005, 30);--	Savage Blow
		addSkillLevel(4201004, 30);--	Steal
		-- Buccaneer (2nd Job)
		addSkillLevel(5100000, 10);--	Improve MaxHP
		addSkillLevel(5100001, 20);--	Knuckler Mastery
		addSkillLevel(5101006, 20);--	Knuckler Booster
		addSkillLevel(5101002, 20);--	Backspin Blow
		addSkillLevel(5101003, 20);--	Double Uppercut
		addSkillLevel(5101004, 20);--	Corkscrew Blow
		addSkillLevel(5101005, 10);--	MP Recovery
		addSkillLevel(5101007, 10);--	Oak Barrel
		-- Gunslinger (2nd Job)
		addSkillLevel(5200000, 20);--	Gun Mastery
		addSkillLevel(5201001, 20);--	Invisible Shot
		addSkillLevel(5201002, 20);--	Grenade
		addSkillLevel(5201003, 20);--	Gun Booster
		addSkillLevel(5201004, 20);--	Blank Shot
		addSkillLevel(5201005, 10);--	Wings
		addSkillLevel(5201006, 20);--	Recoil Shot
		-- Crusader (3rd Job)
		addSkillLevel(1111007, 20);--	Armor Crash
		addSkillLevel(1111006, 30);--	Coma: Axe
		addSkillLevel(1111005, 30);--	Coma: Sword
		addSkillLevel(1111002, 30);--	Combo Attack
		addSkillLevel(1110000, 20);--	Improving MP recovery
		addSkillLevel(1111004, 30);--	Panic: Axe
		addSkillLevel(1111003, 30);--	Panic: Sword
		addSkillLevel(1110001, 20);--	Shield Mastery
		addSkillLevel(1111008, 30);--	Shout
		--White Knight (3rd Job)
		addSkillLevel(1211006, 30);--	Blizzard Charge: BW
		addSkillLevel(1211002, 30);--	Charged Blow
		addSkillLevel(1211004, 30);--	Fire Charge: BW
		addSkillLevel(1211003, 30);--	Fire Charge: Sword
		addSkillLevel(1211005, 30);--	Ice Charge: Sword
		addSkillLevel(1210000, 20);--	Improving MP recovery
		addSkillLevel(1211008, 30);--	Lightning Charge: BW
		addSkillLevel(1211009, 20);--	Magic Crash
		addSkillLevel(1210001, 20);--	Shield Mastery
		addSkillLevel(1211007, 30);--	Thunder Charge: Sword
		-- Dragon Knight (3rd Job)
		addSkillLevel(1311008, 20);--	Dragon Blood
		addSkillLevel(1311004, 30);--	Dragon Fury: Pole Arm
		addSkillLevel(1311003, 30);--	Dragon Fury: Spear
		addSkillLevel(1311006, 30);--	Dragon Roar
		addSkillLevel(1310000, 20);--	Elemental Resistance
		addSkillLevel(1311002, 30);--	Pole Arm Crusher
		addSkillLevel(1311007, 20);--	Power Crash
		addSkillLevel(1311005, 30);--	Sacrifice
		addSkillLevel(1311001, 30);--	Spear Crusher
		-- Fire/Poison Mage (3rd Job)
		addSkillLevel(2110001, 30);--	Element Amplification
		addSkillLevel(2111006, 30);--	Element Composition
		addSkillLevel(2111002, 30);--	Explosion
		addSkillLevel(2110000, 20);--	Partial Resistance
		addSkillLevel(2111003, 30);--	Poison Mist
		addSkillLevel(2111004, 20);--	Seal
		addSkillLevel(2111005, 20);--	Spell Booster
		-- Ice/Lightning Mage (3rd Job)
		addSkillLevel(2210001, 30);--	Element Amplification
		addSkillLevel(2211006, 30);--	Element Composition
		addSkillLevel(2211002, 30);--	Ice Strike
		addSkillLevel(2210000, 20);--	Partial Resistance
		addSkillLevel(2211004, 20);--	Seal
		addSkillLevel(2211005, 20);--	Spell Booster
		addSkillLevel(2211003, 30);--	Thunder Spear
		-- Priest (3rd Job)
		addSkillLevel(2311001, 20);--	Dispel
		addSkillLevel(2311005, 30);--	Doom
		addSkillLevel(2310000, 20);--	Elemental Resistance
		addSkillLevel(2311003, 30);--	Holy Symbol
		addSkillLevel(2311002, 20);--	Mystic Door
		addSkillLevel(2311004, 30);--	Shining Ray
		addSkillLevel(2311006, 30);--	Summon Dragon
		-- Ranger (3rd Job)
		addSkillLevel(3111004, 30);--	Arrow Rain
		addSkillLevel(3111003, 30);--	Inferno
		addSkillLevel(3110001, 20);--	Mortal Blow
		addSkillLevel(3111002, 20);--	Puppet
		addSkillLevel(3111005, 30);--	Silver Hawk
		addSkillLevel(3111006, 30);--	Strafe
		addSkillLevel(3110000, 20);--	Thrust
		-- Sniper (3rd Job)
		addSkillLevel(3211004, 30);--	Arrow Eruption
		addSkillLevel(3211003, 30);--	Blizzard
		addSkillLevel(3211005, 30);--	Golden Eagle
		addSkillLevel(3210001, 20);--	Mortal Blow
		addSkillLevel(3211002, 20);--	Puppet
		addSkillLevel(3211006, 30);--	Strafe
		addSkillLevel(3210000, 20);--	Thrust
		-- Hermit (3rd Job)
		addSkillLevel(4110000, 20);--	Alchemist
		addSkillLevel(4111005, 30);--	Avenger
		addSkillLevel(4111006, 20);--	Flash Jump
		addSkillLevel(4111001, 20);--	Meso Up
		addSkillLevel(4111004, 30);--	Shadow Meso
		addSkillLevel(4111002, 30);--	Shadow Partner
		addSkillLevel(4111003, 20);--	Shadow Web
		-- Chief Bandit (3rd Job)
		addSkillLevel(4211002, 30);--	Assaulter
		addSkillLevel(4211004, 30);--	Band of Thieves
		addSkillLevel(4211001, 30);--	Chakra
		addSkillLevel(4211006, 30);--	Meso Explosion
		addSkillLevel(4211005, 20);--	Meso Guard
		addSkillLevel(4211003, 20);--	Pickpocket
		addSkillLevel(4210000, 20);--	Shield Mastery
		-- Marauder (3rd Job)
		addSkillLevel(5110000, 20);--	Stun Mastery
		addSkillLevel(5110001, 40);--	Energy Charge
		addSkillLevel(5111002, 30);--	Energy Blast
		addSkillLevel(5111004, 20);--	Energy Drain
		addSkillLevel(5111005, 20);--	Transformation
		addSkillLevel(5111006, 30);--	Shockwave
		-- Outlaw (3rd Job)
		addSkillLevel(5210000, 20);--	Burst Fire
		addSkillLevel(5211001, 30);--	Octopus
		addSkillLevel(5211002, 30);--	Gaviota
		addSkillLevel(5211004, 30);--	Flamethrower
		addSkillLevel(5211005, 30);--	Ice Splitter
		addSkillLevel(5211006, 30);--	Homing Beacon
		-- Hero (4th Job)
		addSkillLevel(1120004, 30);--	Achilles
		addSkillLevel(1120003, 30);--	Advanced Combo
		addSkillLevel(1121011, 1);--	Awakening
		addSkillLevel(1120005, 30);--	Blocking
		addSkillLevel(1121008, 30);--	Brandish
		addSkillLevel(1121010, 30);--	Enrage
		addSkillLevel(1121000, 20);--	Maple Warrior
		addSkillLevel(1121001, 30);--	Monster Magnet
		addSkillLevel(1121006, 30);--	Rush
		addSkillLevel(1121002, 30);--	Stance
		-- Paladin (4th Job)
		addSkillLevel(1220005, 30);--	Achilles
		addSkillLevel(1220010, 10);--	Advanced Charge
		addSkillLevel(1221012, 1);--	Awakening
		addSkillLevel(1221009, 30);--	Blast
		addSkillLevel(1220006, 30);--	Blocking
		addSkillLevel(1221004, 20);--	Divine Charge: Mace
		addSkillLevel(1221003, 20);--	Holy Charge: Sword
		addSkillLevel(1221000, 20);--	Maple Warrior
		addSkillLevel(1221001, 30);--	Monster Magnet
		addSkillLevel(1221007, 30);--	Rush
		addSkillLevel(1221011, 30);--	Sanctuary
		addSkillLevel(1221002, 30);--	Stance
		-- Dark Knight (4th Job)
		addSkillLevel(1320005, 30);--	Achilles
		addSkillLevel(1321010, 1);--	Awakening
		addSkillLevel(1321007, 10);--	Beholder
		addSkillLevel(1320009, 25);--	Beholder's Buff
		addSkillLevel(1320008, 25);--	Beholder's Healing
		addSkillLevel(1320006, 30);--	Berserk
		addSkillLevel(1321000, 20);--	Maple Warrior
		addSkillLevel(1321001, 30);--	Monster Magnet
		addSkillLevel(1321003, 30);--	Rush
		addSkillLevel(1321002, 30);--	Stance
		-- Fire/Poison Arch Mage (4th Job)
		addSkillLevel(2121008, 1);--	Awakening
		addSkillLevel(2121001, 30);--	Big Bang
		addSkillLevel(2121005, 30);--	Elquines
		addSkillLevel(2121003, 30);--	Fire Demon
		addSkillLevel(2121004, 30);--	Infinity
		addSkillLevel(2121002, 30);--	Mana Reflection
		addSkillLevel(2121000, 20);--	Maple Warrior
		addSkillLevel(2121007, 30);--	Meteo
		addSkillLevel(2121006, 30);--	Paralyze
		-- Ice/Lightning Arch Mage (4th Job)
		addSkillLevel(2221008, 1);--	Awakening
		addSkillLevel(2221001, 30);--	Big Bang
		addSkillLevel(2221007, 30);--	Blizzard
		addSkillLevel(2221006, 30);--	Chain Lightning
		addSkillLevel(2221003, 30);--	Ice Demon
		addSkillLevel(2221005, 30);--	Ifrit
		addSkillLevel(2221004, 30);--	Infinity
		addSkillLevel(2221002, 30);--	Mana Reflection
		addSkillLevel(2221000, 20);--	Maple Warrior
		-- Bishop (4th Job)
		addSkillLevel(2321007, 30);--	Angel's Ray
		addSkillLevel(2321009, 1);--	Awakening
		addSkillLevel(2321003, 30);--	Bahamut
		addSkillLevel(2321001, 30);--	Big Bang
		addSkillLevel(2321008, 30);--	Genesis
		addSkillLevel(2321005, 30);--	Holy Shield
		addSkillLevel(2321004, 30);--	Infinity
		addSkillLevel(2321002, 30);--	Mana Reflection
		addSkillLevel(2321000, 20);--	Maple Warrior
		addSkillLevel(2321006, 10);--	Resurrection
		-- Bow Master (4th Job)
		addSkillLevel(3121009, 1);--	Awakening
		addSkillLevel(3120005, 30);--	Bow Expert
		addSkillLevel(3121008, 30);--	Concentration
		addSkillLevel(3121003, 30);--	Dragon Pulse
		addSkillLevel(3121007, 30);--	Hamstring
		addSkillLevel(3121000, 20);--	Maple Warrior
		addSkillLevel(3121006, 30);--	Phoenix
		addSkillLevel(3121002, 30);--	Sharp Eyes
		addSkillLevel(3121004, 30);--	Storm Arrow
		-- Crossbow Master (4th Job)
		addSkillLevel(3221008, 1);--	Awakening
		addSkillLevel(3221006, 30);--	Blind
		addSkillLevel(3220004, 30);--	Crossbow Expert
		addSkillLevel(3221003, 30);--	Dragon Pulse
		addSkillLevel(3221005, 30);--	Freezer
		addSkillLevel(3221000, 20);--	Maple Warrior
		addSkillLevel(3221001, 30);--	Piercing
		addSkillLevel(3221002, 30);--	Sharp Eyes
		addSkillLevel(3221007, 30);--	Sniping
		-- Night Lord (4th Job)
		addSkillLevel(4121009, 1);--	Awakening
		addSkillLevel(4120002, 30);--	Fake
		addSkillLevel(4121000, 20);--	Maple Warrior
		addSkillLevel(4121004, 30);--	Ninja Ambush
		addSkillLevel(4121008, 30);--	Ninja Storm
		addSkillLevel(4121003, 30);--	Showdown
		addSkillLevel(4121006, 30);--	Spirit Claw
		addSkillLevel(4121007, 30);--	Triple Throw
		addSkillLevel(4120005, 30);--	Venom
		-- Shadower (4th Job)
		addSkillLevel(4221001, 30);--	Assassinate
		addSkillLevel(4221008, 1);--	Awakening
		addSkillLevel(4221007, 30);--	Boomerang Step
		addSkillLevel(4220002, 30);--	Fake
		addSkillLevel(4221000, 20);--	Maple Warrior
		addSkillLevel(4221004, 30);--	Ninja Ambush
		addSkillLevel(4221003, 30);--	Showdown
		addSkillLevel(4221006, 30);--	Smoke Shell
		addSkillLevel(4220005, 30);--	Venom
		-- Buccaneer (4th Job)
		addSkillLevel(5121000, 20);--	Maple Warrior
		addSkillLevel(5121001, 30);--	Dragon Strike
		addSkillLevel(5121002, 30);--	Energy Orb
		addSkillLevel(5121003, 20);--	Super Transformation
		addSkillLevel(5121004, 30);--	Demolition
		addSkillLevel(5121005, 30);--	Snatch
		addSkillLevel(5121007, 30);--	Barrage
		addSkillLevel(5121008, 1);--	Pirate's Rage
		addSkillLevel(5121009, 20);--	Speed Infusion
		addSkillLevel(5121010, 30);--	Time Leap
		-- Corsair (4th Job)
		addSkillLevel(5220001, 30);--	Elemental Boost
		addSkillLevel(5220002, 20);--	Wrath of the Octopi
		addSkillLevel(5220011, 20);--	Bullseye
		addSkillLevel(5221000, 20);--	Maple Warrior
		addSkillLevel(5221003, 30);--	Aerial Strike
		addSkillLevel(5221004, 30);--	Rapid Fire
		addSkillLevel(5221006, 10);--	Battleship
		addSkillLevel(5221007, 30);--	Battleship Cannon
		addSkillLevel(5221008, 30);--	Battleship Torpedo
		addSkillLevel(5221009, 20);--	Hypnotize
		addSkillLevel(5221010, 1);--	Speed Infusion
		-- GM Skills
		addSkillLevel(9001000, 1);--	Haste (Normal)
		addSkillLevel(9001001, 1);--	Super Dragon Roar
		addSkillLevel(9001002, 1);--	Teleport
		-- SuperGM Skills
		addSkillLevel(9101000, 1);--	Heal + Dispel
		addSkillLevel(9101001, 1);--	Haste (Super)
		addSkillLevel(9101002, 1);--	Holy Symbol
		addSkillLevel(9101003, 1);--	Bless
		addSkillLevel(9101004, 1);--	Hide
		addSkillLevel(9101005, 1);--	Resurrection
		addSkillLevel(9101006, 1);--	Super Dragon Roar
		addSkillLevel(9101007, 1);--	Teleport
		addSkillLevel(9101008, 1);--	Hyper Body
		addText("There we go! Have fun!");
	else
		addText("Okay, come back to me any time if you change your mind.")
	end
else
	addText("You need to be a GM in order for me to max your skills, #h #!");
	sendOK();
end
