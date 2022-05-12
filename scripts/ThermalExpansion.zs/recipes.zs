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

var redstoneCoil as IItemStack = <thermalfoundation:material:513>;

var mapRecipe as IIngredient[][][][IItemStack] = {
    <thermaldynamics:retriever> : [
        [
            [<ore:nuggetIron>,<ore:blockGlass>,<ore:nuggetIron>],
            [<ore:ingotIron>,<minecraft:dye:4>,<ore:ingotIron>]
        ]
    ],
    <thermalexpansion:frame> : [
        [
            [<ore:ingotIndium>,<ore:blockGlass>,<ore:ingotScandium>],
            [<ore:blockGlass>,<ore:gearTin>,<ore:blockGlass>],
            [<ore:ingotScandium>,<ore:blockGlass>,<ore:ingotIndium>]
        ]
    ],
    <thermalexpansion:frame:64> : [
        [
            [<ore:ingotOsmium>,<ore:blockGlass>,<ore:ingotManganese>],
            [<ore:blockGlass>,<ore:gearCopper>,<ore:blockGlass>],
            [<ore:ingotManganese>,<ore:blockGlass>,<ore:ingotOsmium>]
        ]
    ],
    <thermalexpansion:machine:6> : [
        [
            [<minecraft:obsidian>,<minecraft:glass>,<minecraft:obsidian>],
            [<minecraft:nether_brick>,<thermalexpansion:frame>,<minecraft:nether_brick>],
            [<ore:gearCopper>,redstoneCoil,<ore:gearCopper>]
        ]
    ],
    <thermalexpansion:machine:4> : [
        [
            [<ore:ingotThallium>,<ore:gearLumium>,<ore:ingotThallium>],
            [<ore:dirt>,<thermalexpansion:frame>,<ore:dirt>],
            [<ore:gearCopper>,redstoneCoil,<ore:gearCopper>]
        ]
    ],
    <thermalexpansion:machine:3> : [
        [
            [<ore:ingotArsenic>,<ore:gearLumium>,<ore:ingotArsenic>],
            [<ore:sand>,<thermalexpansion:frame>,<ore:sand>],
            [<ore:gearCopper>,redstoneCoil,<ore:gearCopper>]
        ]
    ],
    <thermalexpansion:machine:5> : [
        [
            [<ore:ingotMagnesium>,<minecraft:piston>,<ore:ingotMagnesium>],
            [<ore:ingotBronze>,<thermalexpansion:frame>,<ore:ingotBronze>],
            [<ore:gearCopper>,redstoneCoil,<ore:gearCopper>]
        ]
    ],
    <thermalexpansion:machine:1> : [
        [
            [<ore:ingotPotassium>,<minecraft:piston>,<ore:ingotPotassium>],
            [<minecraft:flint>,<thermalexpansion:frame>,<minecraft:flint>],
            [<ore:gearCopper>,redstoneCoil,<ore:gearCopper>]
        ]
    ],
    <thermalfoundation:material:657> : [
        [
            [<ore:ingotTungsten>,<ore:ingotTungsten>,null],
            [<ore:ingotTungsten>,<ore:ingotSteel>,<ore:ingotTungsten>],
            [null,<ore:ingotTungsten>,<ore:ingotTungsten>]
        ]
    ]
};

for output, listRecipe in mapRecipe {
    var index as int = 0;
    recipes.remove(output);
    for recipe in listRecipe {
        var name as string = toString(output)+"_"+index;
        recipes.addShaped(name, output, recipe);
        index += 1;
    }
}

var gearMetas as int[] = [24,25,26,27,256,257,258,259,260,261,262,263,264,288,289,290,291,292,293,294,295];

for i in gearMetas {
	recipes.remove(<thermalfoundation:material>.definition.makeStack(i));
}
