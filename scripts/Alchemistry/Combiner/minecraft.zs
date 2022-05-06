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

Combiner.removeRecipe(<minecraft:nether_star>);
Combiner.addRecipe(<minecraft:nether_star>,[
    alch("lutetium") * 64,alch("hydrogen") * 64,alch("titanium") * 64,
    alch("hydrogen") * 64,alch("rhodium") * 64,alch("hydrogen") * 64,
    alch("dysprosium") * 64,alch("hydrogen") * 64,alch("mendelevium") * 64
]);

Combiner.removeRecipe(<minecraft:soul_sand>);
Combiner.addRecipe(<minecraft:soul_sand>,[alch("silicon dioxide") * 4, alch("thallium")]);
