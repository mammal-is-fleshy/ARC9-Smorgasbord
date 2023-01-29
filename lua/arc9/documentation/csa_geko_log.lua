[originally]Contre Srike Sorse in 2022 Gmod Tactile Reelesm :tm: 

[ Created by Geckololt (all wrongs reserved, dont care didnt ask) ]

--- Credits -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Cylo - Annoying little burger -- i love this man as if he's my little cabbage :))
CturiX - Mauser Sound

Counter Strike Source: (horrid)Models, Textures [AWP/M4/AK/M9]
+ Arctic - Incredibly doggy -original- restoration models (css)
Day of Defeat Source: (horrid)Models [Garand/Mauser]
FAS1: Claymore
FAS2: M79/Sterling
Enemy Front[??? honestly i cant remember]: Sten
Medal of Hounor Airborne: M18
+ Moon - Ripping
Soldier of Fortune 3 - Muzzles and Tac/Flashlight, some ak stuff, Tishina


Google Images - ref
Kali - Some M4 Parts (  Dragoon Guard, 607,608 Stock/Guard, Swire Stock  )
Counter Strike Online 2 - Some M4 Parts (  The Taiwanese looking stuff  )
Fesiug??? - Nade ent

https://gamebanana.com/mods/173290 - Garand??? --(genuinely forgo :skull::skull::skull::skull:)
https://gamebanana.com/mods/173805 - Mauser

Tactical Intervention - Stuff (Holo/Acog2/Aimpoint/Silencer2)
Rainbow Six Vegas 2 - Mass26
CSGO, CSCZ, DOD:S - Sounds??
https://gamebanana.com/mods/210646 - SPR Guard, Elcan
https://gamebanana.com/mods/210602 - Targeter Guard [M4]

https://gamebanana.com/models/3241 - T1
https://gamebanana.com/skins/162976 - MRS 
https://gamebanana.com/models/4134 - OKP7
-- the attachment models are probably from contract wars

https://gamebanana.com/mods/39876 - Muzzle/Grip/T1

-- sounds --
https://gamebanana.com/sounds/18970
https://gamebanana.com/sounds/18302
https://gamebanana.com/sounds/21639
https://gamebanana.com/sounds/57239


The entire Kingdom of Sweden - being so fvcking zased


-------------
[checklist]
-------------
AWP (receiver:3)
Garand (receiver:5)
M4 (handguard:18 | receiver:14 | stock:13 | grip:5)
AK (handguard:9 | receiver:7 | stock:12 | grip:4)
M9 (receiver:6)
M79 (receiver:6)
Glock??? [NOPE NOPE NOPE]
MP5/UMP/G3 -- cant believe mwii steal from me --
Mac10?? -- or mp9 --
M3 (handguard:4 | receiver:3 | stock:4) -- probably not --
Makarov?? [NOPE NOPE NOPE]
FAL??????????? [Only the canadian variants]
M18 (receiver:3)
STEN (receiver:4-5)


-------------
[wishlist]
-------------
[M4]
- .30 dmr stuff
- single shot .50cal

[Garand]
- 22lr/9mm Ruger

[AK]
- Bolt action

[M18]
- Sounds

[Uni]
- Back up pistol/smg (ubgl)  -- mwii isnt real -- so darsu said not possible :((
- Grenade Rifle muzzle mount -- not possible yet, ik overides stuff
- Bayonet
- Equippable Suppressor -- same as grenade rifle
- Flip up/hybird/magnifying sight -- still a wip
- Bullpup Grenade Chasis mount -- gustavo fring
- Shield -- unless akimbo is a thing, nope
- Actual bipod animation with stock holding in deploy -- not possible for the latter yet, ik overides stuff

[UBGL]
- RPG
- M3
- UMP??
- AK??
- M320 (hate m203)







--- Basicall Dev Log -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Do care did ask
AWP: Done
M4: Done
M9: Done
Garand: Done
Mauser: Done
M79: Done
M18: Done?
AK: Done?
Sten: Done?
Tishina: WIP


M30: Scrapped???????
M3: Model Done [SCRAPPED??]
MP5/G3: Model Fifth [SCRAPPED??]
FAL: Model Quarter [SCRAPPED/ Rework?????]
Makarov: Model Half [SCRAPPED]


note myself: 
-use elements instead of attachment check
-you cant use $attachment as a spare point For offhand stuff       use $bonemerge instead
+you have to apply the animation point before exporting
-use a different path for material FUCK YOU CSGO  -- nope doesn't work
-maybe Write the calibre vague to keep the larping hardcore tactile realischism wankers away
-you suck at ubgl




EXAMINATION
Modular vs Total Conversion
Pros and Cons

Modular:
100000 bodygroups And potentially conflicting combinations
compiling issues 
Bodgy bodygroup logic
easier to Break (just look at fas2)
extremely tedious to Do
gives the player the feeling of "control" even If most combinations are just window dressings
	ie: If youre using a wooden handguard, youd probably pick a wooden stock and grip as well, might as well make that one option
		If youre using a high calibre mag, youd probably pick a longer handguard/barrel and similar with a low calibre
mixing is always fun (for the players, not me lol its so bloody boring)


Total Conv:
very few bodygroups
fast to prototype And to set up
easier to fix
guarantee to change almost every aspect of the weapons, making every attachment feels sort of different (this is a major strength)
"preset" feeling


the awp was the first gun i made And i opted For a Total Conversion method (barring the stocks), at the Time i thought i had to Do it because
the awp has horrid geometry And separating the grip from the frame is too bloody hard might as well change the entire gun up
as a result the awp was super fun to Do, only took me ~a week to properly set it up

the second gun was the m4 And it took me A WHOLE BLEEDING MONTH, arguably the animating was bloody horrible cuz art block And all but I did NOT Find
ANY JOY when doing the m4

the third gun was the garand (claymore, hammer and sickle dont count) and I opted for a FULL Total Conv method and it was brilliant, never had more fun prototyping
from that moment it was clear, doing modular is the worse way of handling this

the fourth gun was the m9 and I tried a hybird system but not like how I handle the awp, particularly with the auto and burst frame
ehhh not worth it, just window dressings but it feels necessary

the fifth was the mauser and of course it was quick, dirty and fun, but this is the only gun that i feel like i shouldve done a Modular on


the sixth was the m79, well there's not much to write about, alofs does it job		for the mts, well i couldve separate it further so the short version is an attachment of the long version
nope, glad i didnt

finally i had enough shit around my ass to Do the ak
it was
fucking
horrible
never again
during its development i constantly try to Do other things like attachment icons, naming convension, binged Bluey in 2 days (watch it or ill cut off your potato)       to balance out the drag, it was fucking slow
well i think i got most of the feature (as in /frames/) done in 3 days but it felt like months

final gun is the sten -- words, words


the main reason the ak fell off so hard was because		ehhh lazy	but again like the m4 its too modular
the m4 itself has some total conversion like the cs5, mass26 and so on but that was mostly because of bodygroup issue
/it was clear that my lazy arse no matter how much Time you grant me will refuse to finish the ak, too bloody much for an arse like mine to handle (dont take this out of context)/ -- this backfires :((

from there Then on only the optics, foregrips and muzzles will be Modular




-- where the inspirations from /naming convension --
 M4: [English] -- basic bitch        Common American L
9mm - Taiwanese Rail thing for ironsight
ak - angled Mk11 magwell, which i believe for the mutant, they just have no magwell
57 - just a p90 lol
sniper - yup thats a cs5
shotgun(drum) - part usas, part ar10
marksman - pre prototype ar10
40 ex - one of those dumb looking e2 duplex variants
crossbow - duh
shotgun(pump) - just a mass26
suppressed - honey badger


 M9: [Italian] -- basic bitch part 2
Suppressed - part PB9, part makarov
Welrod - duh
P38 - duh
Carbine - one of those flux frame for the p350(?) and a snail mag
Artillery - Same as above hence the snail mag to begin with
Auto - its just a burst frame with shorter guard
Burst - Robocock


 Garand: [French(lol)] -- something something canadian John Garand patented(is that the right word?) the garand		i keep the quebecois aspect of Jean Garand hence french		Common Canadian W
M14 - Duh
Mini 14 - Duh
Scav - Part SKS, part mauser selbstlader/fedorov, part romanian ak, part one of those stripper clip mini 14, lever action because why not
Slam - i have never seen this in team fortress 2, stop fucking commenting about it you cunts


 AWP: [English-English] -- my brain keep telling me to translate this to Finnish cuz arctic warfare or something
Lincoln - Cold War
Howell - duh, ww1 [semi] auto lee enfield, Charlton is not real
AX50 - De Lisle but 50AE --- thanks Cylo for the shout


 Mauser: [Dutch(lol)/German] -- im just more comfortable with Dutch
Shitberpunk 2077
one of those trench variants [default]
brazil [burst cuz reasons]
what Do you mean beta mag and carbine frame doesnt exist in second war 2?


 M79: [English] -- basic bitch part 3
Alofs is basically a magazine tube for single barrel self ejecting shotguns  -- STOP SAYING HUNT SHOWDOWN I HAVE NEVER PLAYED IT
MTS but break action


 Sten: [English-English]
MK 1,3,4,5
MK2 but those "pistol" grip
sterling mk4 (suppressed)
saladmender from Fortuna returns, with an actual belt


 AK: [Russian? Maybe Finnish for the lol]
919: saiga
556: trolled, bolt release based on one of them mp5/10
566: aps underwater dart gun -- maybe make it fires fletchette????
disk: Tachanka units during the Russian Civil War in ehh 1921? or something either use DP27s as a prone mount or strapped them on a horse    driveby lmg shooting
helica: bizon, the animala is defintely NOT mw22
stalker: asval
huntsman: ??? i saw something similar in tarkov once?? probably a saiga or a verp????
saiga: loosely based on one of them bullpup ak
modern: its literally an ak12


 M18: [Swedish(lol)] --- thanks Cylo for the shout          Common Swedish W
rpg convert -- obviously
tandem convert -- i knew this would happen
xm70 -- this is based on a real thing, back in world war cold, the swedes wanted to arm their infantry with an anti-tank 'auxiliary' option, this was back during the coldwar
-- the concept of oicw or multi-purpose weapons only takes form around ~90s so this is one of the forerunner, even then those are made to counter infantry, this was a panzerjaeger
-- 762 cuz the m4 already exist, and currently lacking in battle rifle
-- based on the second alteration, which i believe is a modern concept but the 'prototype' was like 70s



 Ham and Sex -- it was lying around in blackocks 1 so why not		common sydicalism W		theres a block animation but since the base doesnt do blocking		rare TFA W
 Claymore on a stick -- during late war 2 pacific front, the japs used lunge mine to take out tanks, i was wondering why they didnt throw it, then i realise you need pressure, oh well, videogame logic
 Bundle grenade -- during second war 2, both the german and the russian bundle up grenades to create a much bigger explosive device, cant remember if they could takeout tanks or not but oh well
-- oh you still need to remove the spoon thing irl       videogame logic




free text zone for
reasons





-- concept weapons --

Mosin
+ Artillery Guard (Kulakov Grenade Launcher): --around 1942, second war 2, post-ish Barbarossa and all that		Kulakov person design basically the first rotary grenade launcher, the forerunner of the M32 or whatever
--gas from the firing thing would be redirected to rotate the cylinder, how does it eject? ehhh
--oh and yes, the firing base is a	mosin because its the soviet
+ That fucking small ass mosin from battlefield 1
+ Shock Guard (ROKS-2/3): --during second war 2 (every cool soviet prototype starts with war 2) they made		flamethrowers, that shaped like mosins   of course
--flametroopers, snipers and machine gunners are highly targetted in any battle, snipers are usually hidden or at a longer range, machine gunners are fortified and flame troopers have to be EVEN closer than normal infantry
--flamers were a bit better compare to first war 1 but its still very much hazardous, one simple way to improve this was to mixed them with infantry, and give them a thing that looks like a normal infantry weapon
--the fuel storage is also just a backpack, so standard expidition force gear, the hose is smaller than normal flamethrower hose
--brilliant, if war crimes wasnt a thing i suspect this would be the norm, just imagine flamethrowing ak and fal in world war cold
because of videogame logic, ehhh its just a regular ass flamethrower but with mosin housing
+ That thing that looks like a Huot from Hunt Showdown
+ Auxiliary Guard (Pedersen Device): during first war 1, americunt people slap angled pistol stick magazine on their,   i assume springfield?  gun, fires in  semi		ofc videogame logic so full auto smg mosin

obviously, during second war 2 and world war cold, the Eastern Bloc[and Finland] have their own variants, mostly stays the same, however in  either Hungary or Romania, there's a sporting version its a cut downed front guard??
looks cool
and in modern Time, there are loads of   modernised version, which im not planning to Do, cuz slapping picatinny rail on everything is not   gaming
there are bullpup version    of course   no i wont be planning that
+ Darsu made ehh eft toz 106 with mosin frame, shotgun mosin? yeah im stealing






