package components.gesture {
	import com.greensock.TweenLite;
	import components.assets.AHorizontalSwipe;

	import qnx.events.QNXApplicationEvent;
	import qnx.system.QNXApplication;

	import flash.events.MouseEvent;
	import flash.system.Capabilities;

	/**
	 * @author Arthur
	 * source: http://blogs.adobe.com/flashplatform/2011/02/using-swipe-events-with-the-blackberry-playbook.html
	 */
	public class HorizontalSwipe extends AHorizontalSwipe {
		private var startX : Number;
		private var endX : Number;

		public function HorizontalSwipe() {
			leftArrow.alpha = rightArrow.alpha = 0;

			if (Capabilities.os.indexOf("PlayBook") > -1) {
				QNXApplication.qnxApplication.addEventListener(QNXApplicationEvent.SWIPE_START, onSwipeStart);
			}
		}

		private function onSwipeStart(event : QNXApplicationEvent) : void {
			stage.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
			stage.addEventListener(MouseEvent.MOUSE_UP, onMouseUp);
		}

		protected function onMouseDown(event : MouseEvent) : void {
			startX = event.localX;
			trace('mouse down: ' + event.localX);
		}

		protected function onMouseUp(event : MouseEvent) : void {
			endX = event.localX;
			var diff : Number = startX - endX;
			// if it's negative, we're moving right
			if (diff > 0) {
				leftArrow.alpha = 1;
				TweenLite.to(leftArrow, 2, {alpha:0});
			} else {
				rightArrow.alpha = 1;
				TweenLite.to(rightArrow, 2, {alpha:0});
			}

			stage.removeEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
			stage.removeEventListener(MouseEvent.MOUSE_UP, onMouseUp);
		}
	}
}
