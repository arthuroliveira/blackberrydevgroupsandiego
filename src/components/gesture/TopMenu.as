package components.gesture {
	import components.assets.AMenu;

	import qnx.events.QNXApplicationEvent;
	import qnx.system.QNXApplication;

	import com.greensock.TweenLite;

	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.system.Capabilities;

	/**
	 * @author Arthur
	 */
	public class TopMenu extends AMenu {
		private var isVisible : Boolean;

		public function TopMenu() {
			addEventListener(Event.ADDED_TO_STAGE, init);
		}

		private function init(event : Event) : void {
			removeEventListener(Event.ADDED_TO_STAGE, init);

			 this.y = - barBg.height;

			if (Capabilities.os.indexOf("PlayBook") > -1) {
				QNXApplication.qnxApplication.addEventListener(QNXApplicationEvent.SWIPE_DOWN, onSwipe);
			} else {
				trace('[Playbook device]', false);
				stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDownListener);
			}

			btnHide.addEventListener(MouseEvent.MOUSE_DOWN, hideMenu);
			btnHide.visible = false;
		}

		private function keyDownListener(event : KeyboardEvent) : void {
			if (event.keyCode == 82) {
				toogleMenu();
			}
		}

		private function onSwipe(event : *) : void {
			toogleMenu();
		}

		private function toogleMenu() : void {
			if (isVisible) {
				hideMenu();
			} else {
				showMenu();
			}
		}

		private function showMenu() : void {
			isVisible = true;
			btnHide.visible = true;
			TweenLite.to(this, .3, {y:0});
		}

		private function hideMenu(event : MouseEvent = null) : void {
			isVisible = false;
			btnHide.visible = false;
			TweenLite.to(this, .5, {y:-this.barBg.height});
		}
	}
}
