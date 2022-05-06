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

<alchemistry:element:6>.addTooltip("Can be used as furnace fuel");
<alchemistry:element:1>.addTooltip("Can be used as furnace fuel");

var mapRecipe as IIngredient[][][][IItemStack] = {
    <alchemistry:fission_controller> : [
        [
            [<ore:ingotSteel>,<alchemistry:fission_casing>,<ore:ingotSteel>],
            [<minecraft:glass>,<nuclearcraft:isotope_separator_idle>,<ore:ingotSteel>],
            [<ore:ingotSteel>,<alchemistry:fission_casing>,<ore:ingotSteel>]
        ]
    ],
    <alchemistry:chemical_dissolver> : [
        [
            [<ore:ingotIron>,<minecraft:piston>,<ore:ingotIron>],
            [<minecraft:magma>,<ore:ingotSteel>,<minecraft:magma>],
            [<ore:ingotIron>,<minecraft:piston>,<ore:ingotIron>]
        ]
    ],
    <alchemistry:chemical_combiner> : [
        [
            [<ore:ingotIron>,<minecraft:diamond>,<ore:ingotIron>],
            [<minecraft:obsidian>,<ore:ingotSteel>,<minecraft:obsidian>],
            [<ore:ingotIron>,<minecraft:piston>,<ore:ingotIron>]
        ]
    ]
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
