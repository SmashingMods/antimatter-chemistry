val seared = <tconstruct:materials>;


recipes.remove(<tconstruct:smeltery_controller>);
<tconstruct:smeltery_controller>.addTooltip("Unlocked in Chapter 3");
mods.recipestages.Recipes.addShaped("tinkers",<tconstruct:smeltery_controller>,
[[seared,seared,seared],
 [seared,<ore:blockBronze>,seared],
 [seared,seared,seared]]);

//mods.tconstruct.Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:23>, <liquid:gold>, 288, true, 100);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:23>, <liquid:alubrass>, 288, true, 100);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:19>, <thermalfoundation:material:24>, <liquid:stone>, 1296, true, 200);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:15>, <thermalfoundation:material:24>, <liquid:electrum>, 1296, true, 200);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:14>, <thermalfoundation:material:24>, <liquid:diamond>, 1332, true, 200);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:13>, <thermalfoundation:material:24>, <liquid:quartz>, 1296, true, 200);

//mods.tconstruct.Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int temp);
mods.tconstruct.Melting.addRecipe(<liquid:quartz> * 144, <minecraft:quartz>);


val lightGray = <minecraft:concrete:8>;
val white = <minecraft:concrete>;

val stoneSharpeningKit = <tconstruct:sharpening_kit>.withTag({Material: "stone"});
recipes.addShaped(stoneSharpeningKit,
[[white,lightGray],
 [lightGray,white]]);

val ironSharpeningKit = <tconstruct:sharpening_kit>.withTag({Material: "iron"});
recipes.addShaped(ironSharpeningKit,
[[<ore:ingotIron>,lightGray],
 [lightGray,<ore:ingotIron>]]);

//mods.tconstruct.Alloy.removeRecipe(ILiquidStack output);
mods.tconstruct.Alloy.removeRecipe(<liquid:steel>);

