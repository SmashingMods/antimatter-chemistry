import crafttweaker.item.IItemStack;
import scripts._func.disable;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;

mods.jei.JEI.hideCategory("xu2_machine_extrautils2:crusher");

val triCobble = <extrautils2:compressedcobblestone:2>;
val quadCobble = <extrautils2:compressedcobblestone:3>;
recipes.remove(<extrautils2:teleporter:1>);
recipes.addShaped(<extrautils2:teleporter:1>,
[[triCobble,quadCobble,triCobble],
 [quadCobble,triCobble,quadCobble],
 [triCobble,quadCobble,triCobble]]);

<extrautils2:cursedearth>.addTooltip(format.green("Works properly in the antimatter dimension"));
<extrautils2:ingredients:10>.addTooltip(format.green("Works properly in the antimatter dimension"));


val furnaceGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator"});
val netherGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"});
recipes.remove(netherGen);
recipes.addShaped(netherGen,
[[<minecraft:nether_star>,<minecraft:nether_star>,<minecraft:nether_star>],
 [<minecraft:nether_star>,<singularities:singularity:39>,<minecraft:nether_star>],
 [<avaritia:singularity:3>, furnaceGen, <avaritia:singularity:3>]]);

<ore:pink>.add(mods.alchemistry.Util.get("methane"));
<ore:pink>.add(mods.alchemistry.Util.get("magnesium oxide"));

disable(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}));

recipes.remove(<extrautils2:resonator>);
recipes.addShaped(<extrautils2:resonator>,
[[<deepmoblearning:soot_covered_redstone>,<minecraft:coal_block>,<deepmoblearning:soot_covered_redstone>],
 [<ore:ingotAluminum>,<extrautils2:ingredients>,<ore:ingotAluminum>],
 [<ore:ingotAluminum>,<ore:ingotAntimony>,<ore:ingotAluminum>]]);

val ingredient = [<ore:blockGlass>,<minecraft:feather>,<ore:dyePink>,<minecraft:leather>,<minecraft:gold_nugget>,<minecraft:coal>] as IIngredient[];
val palladium = <alchemistry:ingot:46>;
val samarium = <alchemistry:ingot:62>;
for i in 0 to 6 {
val ring = <extrautils2:angelring>.definition.makeStack(i);
recipes.remove(ring);
recipes.addShaped(ring,
[[ingredient[i],palladium,ingredient[i]],
 [palladium,<extrautils2:chickenring:1>,palladium],
 [samarium,palladium,<minecraft:ghast_tear>]]);
//recipes.replaceAllOccurences(<minecraft:gold_ingot>,<alchemistry:ingot:46>,ring);
//recipes.replaceAllOccurences(<extrautils2:goldenlasso>,<alchemistry:ingot:62>,ring);
//recipes.replaceAllOccurences(<extrautils2:goldenlasso:1>,<minecraft:ghast_tear>,ring);
/*recipes.replaceAllOccurences(<minecraft:gold_ingot>,draconium,<extrautils2:angelring:1>);
recipes.replaceAllOccurences(<minecraft:gold_ingot>,draconium,<extrautils2:angelring:2>);
recipes.replaceAllOccurences(<minecraft:gold_ingot>,draconium,<extrautils2:angelring:3>);
recipes.replaceAllOccurences(<minecraft:gold_ingot>,draconium,<extrautils2:angelring:4>);
recipes.replaceAllOccurences(<minecraft:gold_ingot>,draconium,<extrautils2:angelring:5>);
*/
}




<extrautils2:enderlilly>.addTooltip("Will not grow outside of a machine, as time is frozen");