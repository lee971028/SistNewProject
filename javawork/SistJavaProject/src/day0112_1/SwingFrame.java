package day0112_1;

import javax.swing.JFrame;

public class SwingFrame extends JFrame{

	public SwingFrame() {
		super("프레임연습");
		this.setBounds(300, 100, 300, 300);
		this.setVisible(true);
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SwingFrame sw=new SwingFrame();
	}

}
