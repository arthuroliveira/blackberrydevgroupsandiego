package
components.ui{
	import flash.display.Sprite;
	
	import qnx.ui.data.DataProvider;
	import qnx.ui.data.SectionDataProvider;
	import qnx.ui.listClasses.List;
	import qnx.ui.listClasses.ListSelectionMode;
	import qnx.ui.listClasses.SectionList;
	
	public class Lists extends Sprite
	{
		public function Lists()
		{
			super();
			
			var dp:DataProvider = new DataProvider();
			var i:int = 0;
			for( i = 0; i<50; i++ )
			{
				var obj:Object = {};
				obj.label = "label " + i;
				dp.addItem( obj );
			}
			
			var singleList:List = new List();
			singleList.selectionMode = ListSelectionMode.SINGLE;
			
			singleList.width = 320;
			singleList.height = 400;
			singleList.dataProvider = dp;
			
			addChild( singleList );
			
			
			
			var dps:SectionDataProvider = new SectionDataProvider();
			
			for( i = 0; i<10; i++ )
			{
				var section:Object = new Object();
				section.label = "section " + i;
				
				dps.addItem( section );
				
				for( var j:int = 0; j<5; j++ )
				{
					dps.addChildToItem( {label:"child " + j + " of section " + i}, section );	
				}
				
			}
			
			var list:SectionList = new SectionList();
			list.width = 320;
			list.height = 400;
			list.selectionMode = ListSelectionMode.SINGLE;
			list.x = 400;
			
			list.dataProvider = dps;
			addChild( list );
			
		}
	}
}