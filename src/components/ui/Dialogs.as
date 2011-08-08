package
components.ui{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	import qnx.ui.buttons.Button;
	
	import qnx.dialog.AlertDialog;
	
	public class Dialogs extends Sprite
	{
		public function Dialogs()
		{
			super();
			
			var btn:Button = new Button();
			addChild( btn );
			btn.addEventListener( MouseEvent.CLICK, mouseClicked );
			
		}
		
		private function mouseClicked( e:MouseEvent ):void
		{
			showDialog();
		}
		
		
		private function showDialog():void
		{
			var alertDialog:AlertDialog = new AlertDialog();
			
			alertDialog.addButton("OK");
			alertDialog.title = "Alert Dialog";
			alertDialog.message = "This is a sample of an Alert Dialog";
			alertDialog.show();
		}
	}
}