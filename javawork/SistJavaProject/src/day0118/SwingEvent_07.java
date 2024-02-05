package day0118;

import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;

public class SwingEvent_07 extends JFrame{

	Container cp;
	JButton btn1,btn2;

	public SwingEvent_07(String title) {
		super(title); 

		cp=this.getContentPane();

		this.setBounds(2700, 100, 500, 300);
		cp.setBackground(new Color(255,204,204));
		initDesign();
		this.setVisible(true);	
	}
	
	public void initDesign()
	{
		//Flow레이아웃으로 버튼2개생성
		//버튼색상 그레이로 변경,버튼색상 그린으로변경
		this.setLayout(new FlowLayout());
		
		btn1=new JButton("버튼색상 그레이로 변경");
		btn2=new JButton("버튼색상 그린으로 변경");
		
		this.add(btn1);
		this.add(btn2);
		
		//버튼1생성및 이벤트 주기(익명내부클래스 형식)
		btn1.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				//getContentPane().setBackground(Color.GRAY);
				cp.setBackground(Color.GRAY);
			}
		});
		
		//버튼2
		btn2.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				cp.setBackground(Color.GREEN);
			}
		});
		
		
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		new SwingEvent_07("버튼이벤트_7");
	}

}
