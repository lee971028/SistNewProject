package day0118;

import java.awt.Color;
import java.awt.Container;
import java.awt.GridLayout;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;

public class SwingImageIcon_06 extends JFrame{

	Container cp;
	
	//이미지 아이콘 가져온다
	ImageIcon icon1=new ImageIcon("C:\\sist0103\\image\\swingimage\\LEFT.GIF");
	ImageIcon icon2=new ImageIcon("C:\\sist0103\\image\\swingimage\\leftDown.gif");
	ImageIcon icon3=new ImageIcon("C:\\sist0103\\image\\swingimage\\leftRollover.gif");
	ImageIcon icon4=new ImageIcon("C:\\sist0103\\image\\swingimage\\chick.gif");
	ImageIcon icon5=new ImageIcon("C:\\sist0103\\image\\swingimage\\an07.gif");
	
	JButton btn1,btn2,btn3,btn4;

	public SwingImageIcon_06(String title) {
		super(title); 

		cp=this.getContentPane();

		this.setBounds(2700, 100, 300, 300);
		cp.setBackground(new Color(255,204,204));
		initDesign();
		this.setVisible(true);
	}
	public void initDesign()
	{
		//2행2열
		this.setLayout(new GridLayout(2, 2));
		btn1=new JButton("hello", icon1);
		btn1.setHorizontalTextPosition(JButton.CENTER); //텍스트가로위치
		btn1.setVerticalTextPosition(JButton.BOTTOM); //텍스트 세로위치
		this.add(btn1);
		
		btn1.setRolloverIcon(icon2); 
		btn1.setPressedIcon(icon3);
		
		//버튼2
		btn2=new JButton(icon4);
		this.add(btn2);
		
		//버튼3
		btn3=new JButton("스윙버튼");
		this.add(btn3);
		
		//버튼4
		btn4=new JButton("안녕", icon5);
		this.add(btn4);
		
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		new SwingImageIcon_06("이미지버튼6");
	}

}
