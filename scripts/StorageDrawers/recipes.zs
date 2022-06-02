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

var mapRecipe as IIngredient[][][][IItemStack] = {
    <storagedrawers:upgrade_creative> * 2 : [
        [
            [<ore:stickWood>,<industrialforegoing:black_hole_unit>,<ore:stickWood>],
            [<storagedrawers:upgrade_template>,<forbidden_arcanus:dark_nether_star>,<storagedrawers:upgrade_template>],
            [<ore:stickWood>,<industrialforegoing:black_hole_unit>,<ore:stickWood>]
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
