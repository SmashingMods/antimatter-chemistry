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

var stage as string = "mummy";

<deepmoblearning:deep_learner>.addTooltip("Unlocked in chapter 4");
<deepmoblearning:simulation_chamber>.addTooltip("Unlocked in chapter 4");
<deepmoblearning:extraction_chamber>.addTooltip("Unlocked in chapter 4");

var listItems as IItemStack[] = [
    <deepmoblearning:deep_learner>,
    <deepmoblearning:simulation_chamber>,
    <deepmoblearning:extraction_chamber>,
];

for item in listItems {
    stageRecipes.setRecipeStage(stage,item);
}
