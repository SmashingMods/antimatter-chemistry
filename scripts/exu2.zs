import crafttweaker.item.IItemStack;


function disable(input as IItemStack) {
	recipes.remove(input);
	input.addTooltip(format.red("Disabled"));
}

val triCobble = <extrautils2:compressedcobblestone:2>;
val quadCobble = <extrautils2:compressedcobblestone:3>;
recipes.remove(<extrautils2:teleporter:1>);
recipes.addShaped(<extrautils2:teleporter:1>,
[[triCobble,quadCobble,triCobble],
 [quadCobble,triCobble,quadCobble],
 [triCobble,quadCobble,triCobble]]);

<extrautils2:cursedearth>.addTooltip(format.green("Works properly in the antimatter dimension"));
<extrautils2:ingredients:10>.addTooltip(format.green("Works properly in the antimatter dimension"));

disable(<extrautils2:rainbowgenerator:2>);
disable(<extrautils2:rainbowgenerator:1>);
disable(<extrautils2:rainbowgenerator>);
disable(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}));