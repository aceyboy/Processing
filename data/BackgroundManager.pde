// Background Manager class
public class BackgroundManager {
	public static final int SPACE = 0;
	public static final int SEA = 1;
	public static final int SKY = 2;
	public static final int CANVAS_WIDTH = 1200;
	public static final int CANVAS_HEIGHT = 700;

	private int bg;

	public BackgroundManager(int defaultBackground) {
		this.setBackground(defaultBackground);
		this.setSize();
	}

	public void setBackground(int bg) {
		this.bg = bg;
		switch(this.bg) {
			case BackgroundManager.SPACE:
				background(0);
				break;
			case BackgroundManager.SEA:
				background(0, 0, 255);
				break;
			case BackgroundManager.SKY:
				background(0, 0, 100);
				break;
		}
	}

	public int getBackground() {
		return this.defaultBackground;
	}

	public void setSize() {
		size(BackgroundManager.CANVAS_WIDTH, BackgroundManager.CANVAS_HEIGHT);
	}

	public void getSize() {
		int[] size = new int[2];
		size[0] = BackgroundManager.CANVAS_WIDTH;
		size[1] = BackgroundManager.CANVAS_HEIGHT;
		return size;
	}
}
