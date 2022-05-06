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

recipes.remove(<tp:iron_cobblegen_block>);
Combiner.addRecipe(<tp:iron_cobblegen_block>, [
    <minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>,
    <minecraft:iron_ingot>,<tp:cobblegen_block>,<minecraft:iron_ingot>,
    <minecraft:iron_ingot>,alch("selenium")*64,<minecraft:iron_ingot>
]);

recipes.remove(<tp:diamond_cobblegen_block>);
Combiner.addRecipe(<tp:diamond_cobblegen_block>, [
    <minecraft:diamond>,<minecraft:diamond>,<minecraft:diamond>,
    <minecraft:diamond>,<tp:iron_cobblegen_block>,<minecraft:diamond>,
    <minecraft:diamond>, alch("zinc")*64,<minecraft:diamond>
]);

recipes.remove(<tp:blaze_cobblegen_block>);
Combiner.addRecipe(<tp:blaze_cobblegen_block>, [
    <minecraft:blaze_rod>,<minecraft:blaze_rod>,<minecraft:blaze_rod>,
    <minecraft:blaze_rod>,<tp:diamond_cobblegen_block>,<minecraft:blaze_rod>,
    <minecraft:blaze_rod>,alch("thallium")*64,<minecraft:blaze_rod>
]);
