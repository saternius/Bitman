class bullet extends MovieClip {
	var xspeed;
	var yspeed;
	function onLoad() {
		_x = _root.w._x;
		_y = _root.w._y;
		if (_root.w._currentframe == 3) {
			xspeed = 5;
			yspeed = 0;
		}
		if (_root.w._currentframe == 2) {
			xspeed = 5;
			yspeed = 5;
		}
		if (_root.w._currentframe == 1) {
			xspeed = 0;
			yspeed = 5;
		}
	}
	function onEnterFrame() {
		if (this.hitTest(_root.hm)) {
			if (_root.w.muaha>0) {
				var killsamueljackson = _root.attachMovie("flashing", "flashing"+_root.getNextHighestDepth(), _root.getNextHighestDepth());
			}
		}
		if (_root.hm._y>368) {
			this.removeMovieClip();
		}
		if (_root.hm._y<50) {
			this.removeMovieClip();
		}
		if (_root.hm._x<10) {
			this.removeMovieClip();
		}
		_x += xspeed;
		_y += yspeed;
		if (_x>700) {
			this.removeMovieClip();
		}
		if (_x<-30) {
			this.removeMovieClip();
		}
		if (_y>800) {
			this.removeMovieClip();
		}
		if (_y<-50) {
			this.removeMovieClip();
		}
	}
}
