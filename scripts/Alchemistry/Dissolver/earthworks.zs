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

function ds(input as IItemStack) {
    Dissolver.addRecipe(input, true, 1, [[10.0, alch("silicon_dioxide") * 4],[10.0, alch("aluminum_oxide") * 4],[10.0, alch("potassium_chloride") * 4]]);
}

ds(<earthworks:block_slate>);
ds(<earthworks:block_slate_green>);
ds(<earthworks:block_slate_purple>);
