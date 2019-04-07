recipes.remove(<openblocks:paintbrush>);
<openblocks:paintbrush>.addTooltip(format.red("Disabled, for now"));

recipes.remove(<openblocks:block_breaker>);
recipes.addShaped(<openblocks:block_breaker>,
[[<ore:ingotIron>,<ore:cobblestone>,<ore:cobblestone>],
 [<extrautils2:spike_stone>,<minecraft:redstone>,<ore:cobblestone>],
 [<ore:ingotIron>,<ore:cobblestone>,<ore:cobblestone>]]);