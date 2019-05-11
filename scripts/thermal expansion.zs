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

recipes.remove(<thermalexpansion:frame>);
recipes.addShaped(<thermalexpansion:frame>,
[[<ore:ingotIndium>,<ore:blockGlass>,<ore:ingotScandium>],
 [<ore:blockGlass>,<ore:gearTin>,<ore:blockGlass>],
 [<ore:ingotScandium>,<ore:blockGlass>,<ore:ingotIndium>]]);

recipes.remove(<thermalexpansion:frame:64>);
recipes.addShaped(<thermalexpansion:frame:64>,
[[<ore:ingotOsmium>,<ore:blockGlass>,<ore:ingotManganese>],
 [<ore:blockGlass>,<ore:gearCopper>,<ore:blockGlass>],
 [<ore:ingotManganese>,<ore:blockGlass>,<ore:ingotOsmium>]]);


val magmaCrucible = <thermalexpansion:machine:6>;
recipes.remove(magmaCrucible);
recipes.addShaped(magmaCrucible,
[[<minecraft:obsidian>,<minecraft:glass>,<minecraft:obsidian>],
 [<minecraft:nether_brick>,<thermalexpansion:frame>,<minecraft:nether_brick>],
 [copperGear,redstoneCoil,copperGear]]);

recipes.remove(<thermalexpansion:machine:4>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.addShaped(<thermalexpansion:machine:4>,
[[<ore:ingotThallium>,<thermalfoundation:material:294>,<ore:ingotThallium>],
 [<ore:dirt>,<thermalexpansion:frame>,<ore:dirt>],
 [<ore:gearCopper>,redstoneCoil,<ore:gearCopper>]]);

recipes.remove(<thermalexpansion:machine:3>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
 recipes.addShaped(<thermalexpansion:machine:3>,
 [[<ore:ingotArsenic>,<ore:gearLumium>,<ore:ingotArsenic>],
  [<ore:sand>,<thermalexpansion:frame>,<ore:sand>],
  [<ore:gearCopper>,redstoneCoil,<ore:gearCopper>]]);

recipes.remove(<thermalexpansion:machine:5>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.addShaped(<thermalexpansion:machine:5>,
[[<ore:ingotMagnesium>,<minecraft:piston>,<ore:ingotMagnesium>],
 [<ore:ingotBronze>,<thermalexpansion:frame>,<ore:ingotBronze>],
 [<ore:gearCopper>,redstoneCoil,<ore:gearCopper>]]);

recipes.remove(<thermalexpansion:machine:1>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.addShaped(<thermalexpansion:machine:1>,
[[<ore:ingotPotassium>,<minecraft:piston>,<ore:ingotPotassium>],
 [<minecraft:flint>,<thermalexpansion:frame>,<minecraft:flint>],
 [<ore:gearCopper>,redstoneCoil,<ore:gearCopper>]]);


val sawBlade = <thermalfoundation:material:657>;
recipes.remove(sawBlade);
recipes.addShaped(sawBlade,
[[<ore:ingotTungsten>,<ore:ingotTungsten>,null],
 [<ore:ingotTungsten>,<ore:ingotSteel>,<ore:ingotTungsten>],
 [null,<ore:ingotTungsten>,<ore:ingotTungsten>]]);