package
components.ui{
	import flash.display.Sprite;
	
	import qnx.ui.progress.ActivityIndicator;
	import qnx.ui.progress.ProgressBar;
	
	public class Progress extends Sprite
	{
		public function Progress()
		{
			super();

			var bar:ProgressBar = new ProgressBar();
			bar.width = 200;
			bar.progress = .5;
			addChild( bar );
			bar.x = 100;
			bar.y = 100;
			
			var ind:ActivityIndicator = new ActivityIndicator();
			addChild( ind );
			ind.animate(true );
			ind.y = 120;
			ind.x = 175;
			
			
		}
	}
}