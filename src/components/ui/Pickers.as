package
components.ui{
	import flash.display.Sprite;
	
	import qnx.ui.data.DataProvider;
	import qnx.ui.listClasses.DropDown;
	import qnx.ui.picker.Picker;
	
	public class Pickers extends Sprite
	{
		public function Pickers()
		{
			super();
			var arr:Array=[];
			
			for (var i:int=0; i<15; i++) {
				arr.push({label:"Label "+i.toString()});
			}
			var arrDP:DataProvider=new DataProvider(arr);
			var dpp:Array = new Array();
			dpp.push(arrDP);
			dpp.push(arrDP);
			dpp.push(arrDP);
			
			var picker:Picker = new Picker();
			picker.x = 100;
			picker.y = 200;
			
			picker.dataProvider=new DataProvider(dpp);
			
			addChild(picker);
			
			picker.selectedIndices = [5,2];

			picker.width = 300;
			
			var dropdown:DropDown = new DropDown();
			dropdown.dataProvider = arrDP;
			addChild( dropdown );
			dropdown.y = 200;
			dropdown.x = 450;
		}
	}
}