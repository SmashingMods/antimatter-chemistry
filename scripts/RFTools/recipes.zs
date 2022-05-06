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

var mapRecipe as IIngredient[][][][IItemStack] = {
    <rftools:shape_card:2> : [
        [
            [<ore:ingotDraconium>,<tp:emerald_pickaxe>,<ore:ingotDraconium>],
            [<draconicevolution:wyvern_core>,<rftools:shape_card>,<ore:ingotEvilMetal>],
            [<ore:ingotDraconium>,<tp:emerald_spade>,<ore:ingotDraconium>]
        ]
    ],
    <rftoolsdim:dimension_builder> : [
        [
            [<minecraft:ender_eye>,<minecraft:nether_star>,<minecraft:ender_eye>],
            [<ore:gemEmerald>,<rftools:machine_frame>,<ore:gemEmerald>],
            [<ore:ingotEnderium>,<ore:ingotEnderium>,<ore:ingotEnderium>]
        ]
    ],
    <rftools:machine_frame> : [
        [
            [<ore:ingotSteel>,<ore:dyeBlue>,<ore:ingotSteel>],
            [<ore:nuggetGold>,null,<ore:nuggetGold>],
            [<ore:ingotSteel>,<ore:dyeBlue>,<ore:ingotSteel>]
        ]
    ],
    <rftools:powercell_creative> : [
        [
            [<rftools:powercell_advanced>,<avaritia:resource:6>,<rftools:powercell_advanced>],
            [<avaritia:resource:6>,<rftools:powercell_advanced>,<avaritia:resource:6>],
            [<rftools:powercell_advanced>,<avaritia:resource:6>,<rftools:powercell_advanced>]
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
