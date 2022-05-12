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

import mods.recipestages.Recipes as stageRecipes;

var stage as string = "netherstar";

<alchemistry:fusion_controller>.addTooltip("Unlocked by completing nether star quest");

var mapRecipe as IIngredient[][][][IItemStack] = {
    <alchemistry:fusion_controller>: [
        [
            [<ore:ingotSelenium>,<alchemistry:fusion_casing>,<ore:ingotSelenium>],
            [<ore:blockGlass>,<minecraft:ender_pearl>,<ore:ingotSelenium>],
            [<ore:ingotSelenium>,<alchemistry:fusion_casing>,<ore:ingotSelenium>]
        ]
    ]
};

for output, listRecipe in mapRecipe {
    recipes.remove(output);
    for recipe in listRecipe {
        stageRecipes.addShaped(stage, output, recipe);
    }
}
