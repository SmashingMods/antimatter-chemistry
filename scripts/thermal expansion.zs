import mods.thermalexpansion.ReactantDynamo;

val gearMetas = [24,25,26,27,256,257,258,259,260,261,262,263,264,288,289,290,291,292,293,294,295] as int[];
for i in gearMetas {
	recipes.remove(<thermalfoundation:material>.definition.makeStack(i));
}

//mods.thermalexpansion.Transposer.removeFillRecipe(IItemStack input, ILiquidStack fluid);
//mods.thermalexpansion.Pulverizer.removeRecipe(IItemStack input);
for i in 0 .. 16 {
	val powder = <minecraft:concrete_powder>.definition.makeStack(i);
	val concrete = <minecraft:concrete>.definition.makeStack(i);
	mods.thermalexpansion.Transposer.removeFillRecipe(powder, <liquid:water>);
	mods.thermalexpansion.Pulverizer.removeRecipe(concrete);
}

val copperGear = <thermalfoundation:material:256>;
val redstoneCoil = <thermalfoundation:material:513>;
val lumiumGear = <thermalfoundation:material:294>;


//induction smelter
recipes.remove(<thermalexpansion:machine:3>);
recipes.addShaped(<thermalexpansion:machine:3>,
[[null,lumiumGear,null],
 [<ore:sand>,<thermalexpansion:frame>,<ore:sand>],
 [copperGear,redstoneCoil,copperGear]]);

val magmaCrucible = <thermalexpansion:machine:6>;
recipes.remove(magmaCrucible);
recipes.addShaped(magmaCrucible,
[[<minecraft:obsidian>,<minecraft:glass>,<minecraft:obsidian>],
 [<minecraft:nether_brick>,<thermalexpansion:frame>,<minecraft:nether_brick>],
 [copperGear,redstoneCoil,copperGear]]);

//mods.thermalexpansion.Insolator.addRecipe(IItemStack primaryOutput, IItemStack primaryInput, IItemStack secondaryInput, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);
mods.thermalexpansion.Insolator.addRecipe(<atum:palm_log>*6, <atum:palm_sapling>, <thermalfoundation:fertilizer>, 9600, <atum:palm_sapling>, 100);
mods.thermalexpansion.Insolator.addRecipe(<atum:palm_log>*12, <atum:palm_sapling>, <thermalfoundation:fertilizer:1>, 14400, <atum:palm_sapling>, 125);
mods.thermalexpansion.Insolator.addRecipe(<atum:palm_log>*18, <atum:palm_sapling>, <thermalfoundation:fertilizer:2>, 19200, <atum:palm_sapling>, 150);

recipes.remove(<thermaldynamics:retriever>);
recipes.addShaped(<thermaldynamics:retriever>,
[[<minecraft:iron_nugget>,<ore:blockGlass>,<minecraft:iron_nugget>],
 [<ore:ingotIron>,<minecraft:dye:4>,<ore:ingotIron>]]);

val hydrogen = mods.alchemistry.Util.get("hydrogen");
mods.thermalexpansion.ReactantDynamo.addReaction(hydrogen, <liquid:oxygen>, 15000);
//mods.thermalexpansion.ReactantDynamo.addReactionElemental(hydrogen, <liquid:oxygen>, 15000);

mods.thermalexpansion.Coolant.addCoolant(<liquid:nitrogen>, 3000000, 60);