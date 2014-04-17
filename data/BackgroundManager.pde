// Background Manager class
public class BackgroundManager implements Artist {
	public static final int CANVAS_WIDTH = 1200;
	public static final int CANVAS_HEIGHT = 700;
	public static final int PANEL_PERCENTAGE = 10;
	public static final int PANEL_COLOR = 120;
	public static final int BUTTON_WIDTH = 100;
	public static final int BUTTON_HEIGHT = 50;
	public static final color BUTTON_UP_COLOR = color(139, 125, 107);
	public static final color BUTTON_DOWN_COLOR = color(255, 239, 219);
	public static final int BUTTON_FONT_SIZE = 20;
	public static final int BUTTON_MARGIN_SIZE = 20;
	public static final String[] BUTTONS = new String[] {"Stars", "Comets"};

	public BackgroundManager() {
    background(0);
		this.setSize();
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

	private void drawSidePanel() {
		int panelWidth = BackgroundManager.CANVAS_WIDTH / BackgroundManager.PANEL_PERCENTAGE;
		int panelHeight = BackgroundManager.CANVAS_HEIGHT;
		int panelX = BackgroundManager.CANVAS_WIDTH - panelWidth;
		int panelY = 0;
		fill(BackgroundManager.PANEL_COLOR);
		rect(panelX, panelY, panelWidth, panelHeight);

		int buttonX = panelX + ((panelWidth / 2) - (BackgroundManager.BUTTON_WIDTH / 2));
		int buttonY = panelY;

    int currentY = buttonY;
    for(int i=0; i < BackgroundManager.BUTTONS.length; i++) {
      buttonY += BackgroundManager.BUTTON_MARGIN_SIZE;
      Button.createButton(buttonX, buttonY, BackgroundManager.BUTTON_WIDTH, BackgroundManager.BUTTON_HEIGHT, BackgroundManager.BUTTON_UP_COLOR, BackgroundManager.BUTTON_DOWN_COLOR, BackgroundManager.BUTTONS[i], BackgroundManager.BUTTON_FONT_SIZE);

      buttonY += BackgroundManager.BUTTON_HEIGHT;
    }
	}

	public void draw() {
		drawSidePanel();
	}
}

