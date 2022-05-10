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

recipes.addShapeless(<deepmoblearning:data_model_shulker>,[<deepmoblearning:data_model_blank>,<forbidden_arcanus:chorus_pearl>]);

var mapRecipe as IIngredient[][][][IItemStack] = {
    <deepmoblearning:soot_covered_plate> : [
        [
            [<deepmoblearning:soot_covered_redstone>,<deepmoblearning:soot_covered_redstone>,<deepmoblearning:soot_covered_redstone>],
            [<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>],
            [<deepmoblearning:soot_covered_redstone>,<deepmoblearning:soot_covered_redstone>,<deepmoblearning:soot_covered_redstone>]
        ]
    ],
    <deepmoblearning:machine_casing> : [
        [
            [<deepmoblearning:soot_covered_plate>,<ore:ingotMolybdenum>,<deepmoblearning:soot_covered_plate>],
            [<ore:ingotMolybdenum>,<ore:gearSignalum>,<ore:ingotMolybdenum>],
            [<deepmoblearning:soot_covered_plate>,<ore:ingotMolybdenum>,<deepmoblearning:soot_covered_plate>]
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
