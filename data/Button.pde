public class Button implements Artist {
	public static void createButton(int x, int y, int width, int height, color upColor, color downColor, String content, int size) {
		textSize(size);
		fill(downColor);
		rect(x, y, width, height);
		fill(upColor);
    textAlign(CENTER);
		text(content, x + (width/2), y + (height/2));
	}
}
