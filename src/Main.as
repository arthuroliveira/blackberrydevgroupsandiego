package {
	import components.gesture.HorizontalSwipe;
	import components.gesture.TopMenu;
	import components.ui.Buttons;
	import components.ui.Dialogs;
	import components.ui.Lists;
	import components.ui.Pickers;
	import components.ui.Progress;
	import components.ui.Sliders;
	import components.ui.Texts;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.display.StageScaleMode;
	import qnx.ui.data.DataProvider;
	import qnx.ui.events.ListEvent;
	import qnx.ui.listClasses.List;
	import qnx.ui.listClasses.ListSelectionMode;
	import qnx.ui.listClasses.ScrollDirection;
	import qnx.ui.theme.ThemeGlobals;


	[SWF(width="1024", height="600", backgroundColor="#FFFFFF", frameRate="30")]
	public class Main extends Sprite
	{
		private var dp:DataProvider;
		private var list:List;
		private var currentView : DisplayObject;
		private var topMenu : TopMenu;
		private var horizontalSwipe : HorizontalSwipe;
		
		public function Main()
		{
			ThemeGlobals.currentTheme = ThemeGlobals.BLACK;
			
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			
			var view:Sprite = new Buttons();
			//var view:Sprite = new Lists();
			//var view:Sprite = new Pickers();
			//var view:Sprite = new Sliders();
			//var view:Sprite = new Texts();
			//var view:Sprite = new Progress();
			//var view:Sprite = new Dialogs();
			currentView = view;
			
			addChild( view );
			
			dp = new DataProvider();
			dp.addItem( {label:"Buttons", view:Buttons } );
			dp.addItem( {label:"Lists", view:Lists} );
			dp.addItem( {label:"Pickers", view:Pickers } );
			dp.addItem( {label:"Sliders", view:Sliders } );
			dp.addItem( {label:"Texts", view:Texts } );
			dp.addItem( {label:"Progress", view:Progress } );
			dp.addItem( {label:"Dialogs", view:Dialogs } );
			
			
			
			list = new List();
			
			list.width = 1024;
			list.height = 48;
			list.y = 600 - 48;
			list.columnWidth = 200;
			list.scrollBarAlpha = 0;
			list.allowDeselect = false;
			list.selectionMode = ListSelectionMode.SINGLE;
			list.scrollDirection = ScrollDirection.HORIZONTAL;
			list.addEventListener( ListEvent.ITEM_CLICKED, onSelect );
			
			list.dataProvider = dp;
			list.selectedIndex = 0;
			addChild( list );
			
			
//			topMenu = new TopMenu();
//			addChild(topMenu); 

			horizontalSwipe = new HorizontalSwipe();
			addChild(horizontalSwipe);

		}
		
		private function onSelect(event:ListEvent):void 
		{
			var item:Object = event.data;
			var view:Class = item.view as Class;
			if( list.selectedIndex >=0 )
			{
				
				if( currentView != null )
				{
					removeChild( currentView );
				}
				
				currentView = new view();
				addChild( currentView );
				
			}
		}
	}
}