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

var stage as string = "tinkers";

var searedBrick as IItemStack = <tconstruct:materials>;

<tconstruct:smeltery_controller>.addTooltip("Unlocked in Chapter 3");

var mapRecipe as IIngredient[][][][IItemStack] = {
    <tconstruct:smeltery_controller> : [
        [
            [searedBrick,searedBrick,searedBrick],
            [searedBrick,<ore:blockBronze>,searedBrick],
            [searedBrick,searedBrick,searedBrick]
        ]
    ],
    <tconstruct:faucet> : [
        [
            [searedBrick,null,searedBrick],
            [null,searedBrick,null]
        ]
    ]
};

for output, listRecipe in mapRecipe {
    recipes.remove(output);
    for recipe in listRecipe {
        stageRecipes.addShaped(stage, output, recipe);
    }
}
