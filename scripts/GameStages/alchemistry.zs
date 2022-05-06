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

var stage as string = "energy";

var demonIngot as IItemStack = <extrautils2:ingredients:11>;
var cobaltPlate as IItemStack = <tconstruct:large_plate>.withTag({Material: "cobalt"});

<atum:scarab>.addTooltip("Unlocked in chapter 3");

var mapRecipe as IIngredient[][][][IItemStack] = {
    <atum:scarab> : [
        [
            [demonIngot,<thermalfoundation:material:134>,demonIngot],
            [<ore:gemDiamond>,cobaltPlate,<ore:gemDiamond>],
            [demonIngot,null,demonIngot]
        ]
    ]
};

for output, listRecipe in mapRecipe {
    recipes.remove(output);
    for recipe in listRecipe {
        stageRecipes.addShaped(stage, output, recipe);
    }
}
