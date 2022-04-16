for allItems in game.items {
	if (allItems.getDefinition().getTags().length > 0) {
		allItems.modifyTooltip((stack, tooltip, isAdvanced) => {
			if (stack.empty || tooltip.length == 0) {
				return;
			}
			var index = tooltip.length;
			var removingTags = true;
			while (removingTags) {
				while(index-- > 0 && !(stack.empty) && !(tooltip.length == 0)) {
					var line = tooltip[index];
					if (line.getStringTruncated(1) == "#" || line.getStringTruncated(((" Hardness ").length as int)) == " Hardness ") {
						tooltip.remove(tooltip[(index as int)]);
						removingTags = true;
						break;
					}
					if (index == 0) {
						removingTags = false;
						break;
					}
				}
			}
		});
	}
}