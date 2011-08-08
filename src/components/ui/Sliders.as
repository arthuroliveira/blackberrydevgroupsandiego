package
components.ui{
	import flash.display.Sprite;
	
	import qnx.ui.slider.Slider;
	import qnx.ui.slider.VolumeSlider;
	
	
	
	public class Sliders extends Sprite
	{
		public function Sliders()
		{
			super();
			
			
			var slider:Slider = new Slider();
			addChild( slider );
			slider.width = 300;
			slider.y = 100;
			
			var vol:VolumeSlider = new VolumeSlider();
			addChild( vol );
			vol.width = 300;
			vol.y = 150;
			
			
		}
	}
}