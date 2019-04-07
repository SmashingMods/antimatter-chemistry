recipes.remove(<tconstruct:smeltery_controller>);
val seared = <tconstruct:materials>;
recipes.addShaped(<tconstruct:smeltery_controller>,
[[seared,seared,seared],
 [seared,<ore:blockBronze>,seared],
 [seared,seared,seared]]);

//mods.tconstruct.Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:23>, <liquid:gold>, 288, true, 100);

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
