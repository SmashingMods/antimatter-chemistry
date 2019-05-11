import crafttweaker.item.IItemStack;


function disable(input as IItemStack) {
	recipes.remove(input);
	input.addTooltip(format.red("Disabled"));
}