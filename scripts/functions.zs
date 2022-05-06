#modloaded crafttweaker
#priority 100000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.alchemistry.Util;

// Functions
// credit: _MasterEnderman_ [2022-05-04]

function toString(item as IIngredient) as string {
	return item.commandString.replace("<","").replace(">","").replace(":","_");
}

function getOreDict(dict as string, material as string) as IIngredient {
    if (dict == "null" | material == "null") {
        return null;
    } else {
        return oreDict.get(dict~material.substring(0,1).toUpperCase()~material.substring(1));
    }
}

function getItem(mod as string, item as string) as IItemStack {
    return itemUtils.getItem(mod~":"~item);
}

function getItemAny(mod as string, item as string) as IItemStack {
    return itemUtils.getItem(mod~":"~item,32767);
}

function getItemMeta(mod as string, item as string, meta as int) as IItemStack {
    return itemUtils.getItem(mod~":"~item,meta);
}

function getItemString(input as string) as IItemStack {
    var counter as int = 0;
    var star as int = 0;
    var mod as string = "";
    var item as string = "";
    var meta as string = "";
    for symbol in getArrayString(input) {
        if (symbol == ":") {
            counter += 1;
        }
        if (symbol == "*") {
            star += 1;
        }
        if (counter == 0 & symbol != ":") {
            mod += symbol;
        }
        if (counter == 1 & symbol != ":") {
            item += symbol;
        }
        if (counter == 2 & symbol != ":") {
            meta += symbol;
        }
    }
    if (star >= 1) {
        return getItemAny(mod,item);
    }
    if (counter == 1) {
        return getItem(mod,item);
    } else {
        return getItemMeta(mod,item,meta as int);
    }
}

function getArrayString(line as string) as string[] {
    var array as string[] = [];
    for i in 0 .. line.length {
        array += line[i];
    }
    return array;
}

function getItemsFromMod(mod as string) as IItemStack[] {
    return loadedMods[mod].items;
}

function getFluid(fluid as string) as ILiquidStack {
    var bucket as IItemStack = <minecraft:bucket>;
    if (fluid == "water") {
        bucket = <minecraft:water_bucket>;
    }
    if (fluid == "lava") {
        bucket = <minecraft:lava_bucket>;
    }
    if (fluid != "lava" & fluid != "water") {
        bucket = <forge:bucketfilled>.withTag({FluidName: fluid, Amount: 1000});
    }
    for liquid in bucket.liquids {
        return liquid.definition * 1;
    }  
}

function getBucket(fluid as string, bucket as IItemStack) as IItemStack {
    return bucket.withTag({FluidName: fluid, Amount: 1000});
}

function getBucketDefault(fluid as string) as IItemStack {
    if (fluid == "water") {
        return <minecraft:water_bucket>;
    }
    if (fluid == "lava") {
        return <minecraft:lava_bucket>;
    }
    if (fluid == "milk") {
        return <minecraft:milk_bucket>;
    }
    if (fluid != "water" & fluid != "lava") {
        return getBucket(fluid, <forge:bucketfilled>);
    }
}

function findFirstItemFromMod(mod as string, type as string, metal as string) as IItemStack {
    for item in getOreDict(type,metal).items {
        if (mod == item.definition.owner) {
            return item;
        }
    }
}

function itemMS(part as string, metal as string) as IItemStack {
    return findFirstItemFromMod("contenttweaker", part, metal);
}

function firstItemFromOreDict(dict as string, material as string) as IItemStack {
    return oreDict.get(dict~material.substring(0,1).toUpperCase()~material.substring(1)).firstItem;
}

function sum(numbers as int[]) as int {
    var y as int = 0;
    for x in numbers {
        y += x;
    }
    return y;
}

// special mod functions

function alch(chem as string) as IItemStack {
    return Util.get(chem);
}

function s(x as int) as IItemStack {
	return <singularities:singularity>.definition.makeStack(x);
}

// legacy functions

function disable(input as IItemStack) {
	recipes.remove(input);
	input.addTooltip(format.red("[-Disabled-]"));
}
