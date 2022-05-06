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

import mods.tconstruct.Casting;

// Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);

Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:23>, <liquid:gold>, 288, true, 100);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:23>, <liquid:alubrass>, 288, true, 100);

Casting.addTableRecipe(<appliedenergistics2:material:19>, <thermalfoundation:material:24>, <liquid:stone>, 1296, true, 200);
Casting.addTableRecipe(<appliedenergistics2:material:15>, <thermalfoundation:material:24>, <liquid:electrum>, 1296, true, 200);
Casting.addTableRecipe(<appliedenergistics2:material:14>, <thermalfoundation:material:24>, <liquid:diamond>, 1332, true, 200);
Casting.addTableRecipe(<appliedenergistics2:material:13>, <thermalfoundation:material:24>, <liquid:quartz>, 1296, true, 200);
