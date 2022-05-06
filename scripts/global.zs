#priority 100

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

global AM_White as IItemStack = <minecraft:concrete>;
global AM_Orange as IItemStack = <minecraft:concrete:1>;
global AM_Magenta as IItemStack = <minecraft:concrete:2>;
global AM_LightBlue as IItemStack = <minecraft:concrete:3>;
global AM_Yellow as IItemStack = <minecraft:concrete:4>;
global AM_Lime as IItemStack = <minecraft:concrete:5>;
global AM_Pink as IItemStack = <minecraft:concrete:6>;
global AM_Gray as IItemStack = <minecraft:concrete:7>;
global AM_LightGray as IItemStack = <minecraft:concrete:8>;
global AM_Cyan as IItemStack = <minecraft:concrete:9>;
global AM_Purple as IItemStack = <minecraft:concrete:10>;
global AM_Blue as IItemStack = <minecraft:concrete:11>;
global AM_Brown as IItemStack = <minecraft:concrete:12>;
global AM_Green as IItemStack = <minecraft:concrete:13>;
global AM_Red as IItemStack = <minecraft:concrete:14>;
global AM_Black as IItemStack = <minecraft:concrete:15>;

global AM as IItemStack[string] = {
    "white" : AM_White,
    "orange" : AM_Orange,
    "magenta" : AM_Magenta,
    "lightBlue" : AM_LightBlue,
    "yellow" : AM_Yellow,
    "lime" : AM_Lime,
    "pink" : AM_Pink,
    "gray" : AM_Gray,
    "lightGray" : AM_LightGray,
    "cyan" : AM_Cyan,
    "purple" : AM_Purple,
    "blue" : AM_Blue,
    "brown" : AM_Brown,
    "green" : AM_Green,
    "red" : AM_Red,
    "black" : AM_Black
};

AM_White.displayName = "White Antimatter";
AM_Orange.displayName = "Orange Antimatter";
AM_Magenta.displayName = "Magenta Antimatter";
AM_LightBlue.displayName = "Light Blue Antimatter";
AM_Yellow.displayName = "Yellow Antimatter";
AM_Lime.displayName = "Lime Antimatter";
AM_Pink.displayName = "Pink Antimatter";
AM_Gray.displayName = "Gray Antimatter";
AM_LightGray.displayName = "Light Gray Antimatter";
AM_Cyan.displayName = "Cyan Antimatter";
AM_Purple.displayName = "Purple Antimatter";
AM_Blue.displayName = "Blue Antimatter";
AM_Brown.displayName = "Brown Antimatter";
AM_Green.displayName = "Green Antimatter";
AM_Red.displayName = "Red Antimatter";
AM_Black.displayName = "Black Antimatter";

<ore:antimatter>.addItems([
    AM_White,
    AM_Orange,
    AM_Magenta,
    AM_LightBlue,
    AM_Yellow,
    AM_Lime,
    AM_Pink,
    AM_Gray,
    AM_LightGray,
    AM_Cyan,
    AM_Purple,
    AM_Blue,
    AM_Brown,
    AM_Green,
    AM_Red,
    AM_Black
]);

global Antimatter as IIngredient = <ore:antimatter>;
