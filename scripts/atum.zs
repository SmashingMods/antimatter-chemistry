import crafttweaker.oredict.IOreDictEntry;

<atum:coin_dirty>.addTooltip("Toss in water to clean");
<atum:loot_dirty_idol>.addTooltip("Toss in water to clean");
<atum:loot_dirty_necklace>.addTooltip("Toss in water to clean");
<atum:loot_dirty_ring>.addTooltip("Toss in water to clean");
<atum:loot_dirty_broach>.addTooltip("Toss in water to clean");
<atum:loot_dirty_scepter>.addTooltip("Toss in water to clean");

<atum:anubiss_mercy>.addTooltip("Only works if worn in offhand or bauble slot");

val demonIngot = <extrautils2:ingredients:11>;
val cobaltPlate = <tconstruct:large_plate>.withTag({Material: "cobalt"});


recipes.remove(<atum:scarab>);
mods.recipestages.Recipes.addShaped("energy",<atum:scarab>,
[[demonIngot,<thermalfoundation:material:134>,demonIngot],
 [<minecraft:diamond>,cobaltPlate,<minecraft:diamond>],
 [demonIngot,null,demonIngot]]);

//<atum:scarab>.addTooltip(format.green("Must be crafted in a crafting table"));
<atum:scarab>.addTooltip("Unlocked in chapter 3");

<ore:blockGlass>.remove(<atum:crystal_glass>);
<ore:cobblestone>.remove(<atum:limestone_cracked>);
<ore:stone>.remove(<atum:limestone>);

<ore:logWood>.remove(<atum:palm_log>);