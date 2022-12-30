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

import scripts.functions.disable;

var crystalIngot as IItemStack = <avaritia:resource:1>;

<avaritia:resource:5>.displayName = "Antimatter Catalyst";
<avaritia:resource:6>.displayName = "Pure Antimatter Ingot";
<avaritia:block_resource:1>.displayName = "Pure Antimatter Block";

disable(<avaritia:endest_pearl>);

var mapRecipe as IIngredient[][][][IItemStack] = {
    <avaritia:extreme_crafting_table> : [
        [
            [crystalIngot,<draconicevolution:awakened_core>,crystalIngot],
            [crystalIngot,<avaritia:double_compressed_crafting_table>,crystalIngot],
            [crystalIngot,<draconicevolution:awakened_core>,crystalIngot]
        ]
    ],
    <avaritiaddons:avaritiaddons_chest> : [
        [
            [<ore:chest>,<ore:chest>,<ore:chest>],
            [<ore:chest>,<avaritia:resource:5>,<ore:chest>],
            [<ore:chest>,<ore:chest>,<ore:chest>]
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
