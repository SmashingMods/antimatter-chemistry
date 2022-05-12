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

import mods.jei.JEI;

import scripts.functions.disable;

var triCobble as IItemStack = <extrautils2:compressedcobblestone:2>;
var quadCobble as IItemStack = <extrautils2:compressedcobblestone:3>;
var furnaceGen as IItemStack = <extrautils2:machine>.withTag({Type: "extrautils2:generator"});
var crusher as IItemStack = <extrautils2:machine>.withTag({Type: "extrautils2:crusher"});

JEI.hideCategory("xu2_machine_extrautils2:crusher");
disable(crusher);

<extrautils2:cursedearth>.addTooltip(format.green("Works properly in the antimatter dimension"));
<extrautils2:ingredients:10>.addTooltip(format.green("Works properly in the antimatter dimension"));
<extrautils2:enderlilly>.addTooltip(format.green("Will not grow outside of a machine, as time is frozen"));

var mapRecipe as IIngredient[][][][IItemStack] = {
    <extrautils2:teleporter:1> : [
        [
            [triCobble,quadCobble,triCobble],
            [quadCobble,triCobble,quadCobble],
            [triCobble,quadCobble,triCobble]
        ]
    ],
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}) : [
        [
            [<minecraft:nether_star>,<minecraft:nether_star>,<minecraft:nether_star>],
            [<minecraft:nether_star>,<singularities:singularity:39>,<minecraft:nether_star>],
            [<avaritia:singularity:3>, furnaceGen, <avaritia:singularity:3>]
        ]
    ],
    <extrautils2:resonator> : [
        [
            [<deepmoblearning:soot_covered_redstone>,<minecraft:coal_block>,<deepmoblearning:soot_covered_redstone>],
            [<ore:ingotAluminum>,<extrautils2:ingredients>,<ore:ingotAluminum>],
            [<ore:ingotAluminum>,<ore:ingotAntimony>,<ore:ingotAluminum>]
        ]
    ],
};

for output, listRecipe in mapRecipe {
    var index as int = 0;
    recipes.remove(output);
    for recipe in listRecipe {
        var name as string = toString(output)+"_"+index;
        recipes.addShaped(name, output, recipe);
        index += 1;
    }
}

var ingredient as IIngredient[] = [<ore:blockGlass>,<minecraft:feather>,<ore:dyePink>,<minecraft:leather>,<minecraft:gold_nugget>,<minecraft:coal>];

for i in 0 to 6 {
    var ring as IItemStack = <extrautils2:angelring>.definition.makeStack(i);
    recipes.remove(ring);
    recipes.addShaped(ring, [
        [ingredient[i],<ore:ingotPalladium>,ingredient[i]],
        [<ore:ingotPalladium>,<extrautils2:chickenring:1>,<ore:ingotPalladium>],
        [<ore:ingotSamarium>,<ore:ingotPalladium>,<minecraft:ghast_tear>]
    ]);
}
