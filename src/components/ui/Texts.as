package
components.ui{
	import flash.display.Sprite;
	import flash.text.TextFormat;
	
	import qnx.ui.text.KeyboardType;
	import qnx.ui.text.Label;
	import qnx.ui.text.ReturnKeyType;
	import qnx.ui.text.TextInput;
	
	public class Texts extends Sprite
	{
		public function Texts()
		{
			super();
			
			var ti:TextInput = new TextInput();
			ti.keyboardType = KeyboardType.EMAIL;
			ti.returnKeyType = ReturnKeyType.SEND;
			addChild( ti );
			ti.y = 100;
			ti.x = 100;
			
			
			var label:Label = new Label();
			addChild( label );
			label.x = 100;
			label.y = 200;
			
			var format:TextFormat = label.format;
			format.color = 0x000000;
			label.format = format;
			
			
			
			label.text = "I'm a Label";
			
			
		}
	}
}