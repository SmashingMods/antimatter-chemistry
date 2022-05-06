import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.functions.toString;
import scripts.functions.getOreDict;
import scripts.functions.getItem;
import scripts.functions.getItemAny;
import scripts.functions.getItemMeta;
import scripts.functions.getItemString;
import scripts.functions.getArrayString;
import scripts.functions.getItemsFromMod;
import scripts.functions.getFluid;
import scripts.functions.getBucket;
import scripts.functions.getBucketDefault;
import scripts.functions.findFirstItemFromMod;

import mods.alchemistry.Dissolver;

import scripts.functions.alch;

Dissolver.addRecipe(<minecraft:reeds>, true, 1, [
    [1, alch("sucrose")]
]);

Dissolver.addRecipe(AM["white"], true, 1, [
    [10, null],
    [10, alch("silicon dioxide")],
    [1, alch("tungsten")]
]);

Dissolver.addRecipe(AM["lightGray"], true, 1, [
    [5, null],
    [15, alch("iron")],
    [40, alch("silicon dioxide")],
    [5, alch("carbon")],
    [1, alch("tungsten")]
]);

Dissolver.addRecipe(AM["orange"], true, 1, [
    [5, null],
    [15, alch("copper")],
    [10, alch("silicon dioxide")],
    [3, alch("tungsten")]
]);

Dissolver.addRecipe(AM["red"], true, 1, [
    [5, null],
    [15, alch("iron_oxide")],
    [10, alch("strontium")],
    [5, alch("silicon dioxide")]
]);

Dissolver.addRecipe(AM["gray"], true, 1, [
    [5, null],
    [25, alch("iron")],
    [8, alch("tungsten")],
    [6, alch("carbon")]
]);

Dissolver.addRecipe(AM["pink"],true,1, [
    [5, null],
    [30, alch("magnesium")],
    [20, alch("phosphorus")],
    [5, alch("carbon")]
]);

Dissolver.addRecipe(AM["black"],true,1, [
    [5, null],
    [30, alch("aluminum")],
    [20, alch("carbon")],
    [5, alch("tungsten")]
]);

Dissolver.addRecipe(AM["magenta"],true,1, [
    [5, null],
    [10, alch("gallium")],
    [2, alch("manganese")],
    [1, alch("tungsten")]
]);

Dissolver.addRecipe(AM["lightBlue"],true,1, [
    [10, null],
    [10, alch("niobium")],
    [1, alch("germanium")],
    [1, alch("tungsten")]
]);

Dissolver.addRecipe(AM["yellow"],true,1, [
    [6, null],
    [4, alch("sulfur")],
    [3, alch("scandium")],
    [3, alch("chromium")]
]);

Dissolver.addRecipe(AM["lime"],true,1, [
    [8, null],
    [5, alch("neon")],
    [3, alch("bromine")],
    [1, alch("tungsten")]
]);

Dissolver.addRecipe(AM["cyan"],true,1, [
    [6, null],
    [9, alch("barium")],
    [3, alch("indium")],
    [1, alch("tungsten")],
    [2, alch("mercury")]
]);

Dissolver.addRecipe(AM["purple"],true,1, [
    [5, null],
    [8, alch("iodine")],
    [3, alch("vanadium")],
    [1, alch("tungsten")]
]);

Dissolver.addRecipe(AM["blue"],true,1, [
    [5, null],
    [8, alch("argon")],
    [3, alch("neptunium")],
    [1, alch("tungsten")]
]);

Dissolver.addRecipe(AM["brown"],true,1, [
    [5, null],
    [8, alch("neodymium")],
    [3, alch("samarium")],
    [1, alch("tungsten")]
]);

Dissolver.addRecipe(AM["green"],true,1, [
    [5, null],
    [8, alch("rubidium")],
    [3, alch("tellurium")],
    [1, alch("tungsten")]
]);

Dissolver.removeRecipe(<minecraft:stone:2>);
Dissolver.addRecipe(<minecraft:stone:2>, true, 1, [
    [5.0, <alchemistry:compound:3>], 
    [2.0, <alchemistry:element:26>], 
    [10.0, <alchemistry:compound:1>],
    [6.0, alch("beryllium")]
]);

Dissolver.removeRecipe(<minecraft:stone:4>);
Dissolver.addRecipe(<minecraft:stone:4>, true, 1, [
    [3.0, <alchemistry:compound:3>], 
    [2.0, <alchemistry:element:26>], 
    [2.0, <alchemistry:compound:5>], 
    [3.0, <alchemistry:compound:1>], 
    [1.5, <alchemistry:element:49>], 
    [2.0, <alchemistry:element:25>], 
    [2.0, <alchemistry:element:76>], 
    [3.0, <alchemistry:element:50>]
]);

Dissolver.removeRecipe(<minecraft:stone:5>);
Dissolver.addRecipe(<minecraft:stone:5>, true, 1, [
    [75.0, null], 
    [4.0, <alchemistry:element:21>],
    [4.0, <alchemistry:compound:3>], 
    [3.0, <alchemistry:element:26>], 
    [4.0, <alchemistry:compound:5>], 
    [10.0, <alchemistry:compound:1>], 
    [2.0, <alchemistry:element:78>], 
    [4.0, <alchemistry:element:20>]
]);

Dissolver.removeRecipe(<minecraft:soul_sand>);
Dissolver.addRecipe(<minecraft:soul_sand>,false,1,[
    [100.0, alch("silicon dioxide") * 4],
    [50.0, alch("thallium")]
]);

// Monster Eggs
var monsterEgg as IItemStack[] = [
	<minecraft:monster_egg>,
	<minecraft:monster_egg:1>,
	<minecraft:monster_egg:2>,
	<minecraft:monster_egg:3>,
	<minecraft:monster_egg:4>,
	<minecraft:monster_egg:5>,
];

for block in monsterEgg {
	Dissolver.addRecipe(block, true, 1, [
		[20.0, null],
		[2.0, alch("aluminum")],
		[4.0, alch("iron")],
		[1.5, alch("gold")],
		[20.0, alch("silicon dioxide")],
		[0.5, alch("dysprosium")],
		[1.25, <alchemistry:element:40>],
		[1.0, alch("tungsten")],
		[1.0, <alchemistry:element:28>],
		[1.0, alch("gallium")],
		[1.5, <alchemistry:compound:9>]
	]);
}
