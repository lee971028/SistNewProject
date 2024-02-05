package day0119;

import java.awt.Color;
import java.awt.Container;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;

import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.border.LineBorder;

public class CheckRadio_03 extends JFrame implements ActionListener,ItemListener{

	Container cp;
	JCheckBox [] cbHobby=new JCheckBox[4];
	JCheckBox cbDriver,cbBold;
	JButton btnHobby;
	JLabel lblResult;

	public CheckRadio_03(String title) {
		super(title); 

		cp=this.getContentPane();

		this.setBounds(2700, 100, 400, 300);
		cp.setBackground(new Color(255,204,204));
		initDesign();
		this.setVisible(true);
	}
	
	public void initDesign()
	{
		this.setLayout(null);
		
		cbDriver=new JCheckBox("운전면허");
		cbDriver.setBounds(20, 20, 100, 30);
		cbDriver.setOpaque(false);
		cbDriver.addItemListener(this); //ItemListener이벤트 핸들러와 연결되는 객체임을 표시
		this.add(cbDriver);
		
		
		//라벨굵게
		cbBold=new JCheckBox("라벨을 굵게");
		cbBold.setBounds(20, 60, 150, 30);
		cbBold.setOpaque(false);
		cbBold.addItemListener(this);
		this.add(cbBold);
		
		lblResult=new JLabel("Have a Nice Day!!!",JLabel.CENTER);
		lblResult.setBounds(20, 200, 300, 50);
		lblResult.setBorder(new LineBorder(Color.GREEN,5));
		this.add(lblResult);
		
		
		//취미체크박스
		String [] hobbys= {"여행","게임","넷플릭스감상","코딩"};
		int xpos=20;
		
		for(int i=0;i<cbHobby.length;i++)
		{
			cbHobby[i]=new JCheckBox(hobbys[i]);
			cbHobby[i].setBounds(xpos, 100, 80, 30);
			cbHobby[i].setOpaque(false);
			this.add(cbHobby[i]);
			xpos+=80;
		}
		
		
		//버튼
		btnHobby=new JButton("나의취미출력");
		btnHobby.setBounds(60, 140, 200, 30);
		this.add(btnHobby);
		
		btnHobby.addActionListener(this); //버튼에 이벤트 추가
	}
	
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		Object ob=e.getSource();
		
		if(ob==btnHobby)
		{
			String s="나의 취미는 ";
			int select=0;
			for(int i=0;i<cbHobby.length;i++)
			{
				if(cbHobby[i].isSelected())
				{
					select++;
					s+="["+cbHobby[i].getText()+"]";
				}
			}
			
			if(select==0)
				s+=" 없어요~~";
			else
				s+= " 입니다";
			
			//라벨에 출력
			lblResult.setText(s);
		}
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		new CheckRadio_03("체크박스_3");
	}

	@Override
	public void itemStateChanged(ItemEvent e) {
		// TODO Auto-generated method stub
		 Object ob=e.getSource();
		 
		 if(ob==cbDriver)
		 {
			 String s= "체크상태: "+cbDriver.isSelected()+" ,텍스트: "+cbDriver.getText();
			 lblResult.setText(s);
		 }else if(ob==cbBold)
		 {
			 if(cbBold.isSelected())
				 lblResult.setFont(new Font("", Font.BOLD, 20));
			 else
				 lblResult.setFont(new Font("", Font.PLAIN, 13));
				 
		 }
	}

}
