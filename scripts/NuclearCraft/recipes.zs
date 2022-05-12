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

import scripts.functions.disable;

disable(<nuclearcraft:solar_panel_basic>);
disable(<nuclearcraft:solar_panel_advanced>);
disable(<nuclearcraft:solar_panel_elite>);
disable(<nuclearcraft:solar_panel_du>);

var mapRecipe as IIngredient[][][][IItemStack] = {
    <nuclearcraft:alloy_furnace_idle> : [
        [
            [<nuclearcraft:part>,<ore:ingotSteel>,<nuclearcraft:part>],
            [<ore:ingotSteel>,<ore:chassis>,<ore:ingotSteel>],
            [<nuclearcraft:part>,<ore:solenoidCopper>,<nuclearcraft:part>]
        ]
    ],
    <nuclearcraft:part:10> : [
        [
            [<ore:ingotSteel>,<minecraft:ender_pearl>,<ore:ingotSteel>],
            [<minecraft:ender_pearl>,<ore:ingotTough>,<minecraft:ender_pearl>],
            [<ore:ingotSteel>,<minecraft:ender_pearl>,<ore:ingotSteel>]
        ]
    ],
    <nuclearcraft:manufactory_idle> : [
        [
            [<ore:ingotSteel>,<minecraft:redstone>,<ore:ingotLead>],
            [<minecraft:flint>,<minecraft:piston>,<minecraft:flint>],
            [<ore:ingotLead>,<ore:solenoidCopper>,<ore:ingotSteel>]
        ]
    ],
    <nuclearcraft:part> * 2 : [
        [
            [<ore:ingotLead>,<ore:dustGraphite>],
            [<ore:dustGraphite>,<ore:ingotCadmium>]
        ]
    ]
};

recipes.remove(<nuclearcraft:part>);

for output, listRecipe in mapRecipe {
    var index as int = 0;
    recipes.remove(output);
    for recipe in listRecipe {
        var name as string = toString(output)+"_"+index;
        recipes.addShaped(name, output, recipe);
        index += 1;
    }
}
