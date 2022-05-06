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

import mods.alchemistry.Combiner;

import scripts.functions.alch;

var asinine as IItemStack = <alchemistry:compound:1000>;
var cobaltIngot as IItemStack = <alchemistry:ingot:27>;
var palladiumIngot as IItemStack = <alchemistry:ingot:46>;
var sootPlate as IItemStack = <deepmoblearning:soot_covered_plate>;

recipes.remove(<deepmoblearning:data_model_blank>);
Combiner.addRecipe(<deepmoblearning:data_model_blank>, [
    cobaltIngot,palladiumIngot,cobaltIngot,
    sootPlate,asinine*16,sootPlate,
    cobaltIngot,palladiumIngot,cobaltIngot
]);
