package
components.ui{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import qnx.ui.buttons.BackButton;
	import qnx.ui.buttons.Button;
	import qnx.ui.buttons.CheckBox;
	import qnx.ui.buttons.IconButton;
	import qnx.ui.buttons.LabelButton;
	import qnx.ui.buttons.LabelPlacement;
	import qnx.ui.buttons.RadioButton;
	import qnx.ui.buttons.RadioButtonGroup;
	import qnx.ui.buttons.SegmentedControl;
	import qnx.ui.buttons.ToggleSwitch;
	import qnx.ui.theme.ThemeGlobals;
	
	
	public class Buttons extends Sprite
	{
		public function Buttons()
		{
			
			
			
			
			var button:Button = new Button();
			addChild( button );
			
			
			var label:LabelButton = new LabelButton();
			label.label = "Label Button";
			addChild( label );
			
			label.y = button.y + button.height + 30;
			
			var check:CheckBox = new CheckBox();
			addChild( check );
			check.label = "Check Box";
			check.labelPlacement = LabelPlacement.RIGHT;
			check.selected = true;
			check.y = label.y + label.height + 30;
			
			var seg:SegmentedControl = new SegmentedControl();
			addChild( seg );
			seg.addItem( {label:"item 1" } );
			seg.addItem( {label:"item 2" } );
			seg.addItem( {label:"item 3" } );
			seg.width = 300;
			seg.y = check.y + check.height + 30;
			seg.selectedIndex = 1;

			
		}
	}
}