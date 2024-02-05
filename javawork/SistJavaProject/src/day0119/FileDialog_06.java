package day0119;

import java.awt.Color;
import java.awt.Container;
import java.awt.FileDialog;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

public class FileDialog_06 extends JFrame{

	Container cp;
	JTextArea area;
	JButton btnOpen,btnSave;
	
	
	public FileDialog_06(String title) {
		super(title); 

		cp=this.getContentPane();

		this.setBounds(2700, 100, 400, 500);
		cp.setBackground(new Color(255,204,204));
		initDesign();
		this.setVisible(true);
	}
	
	public void initDesign()
	{
		this.setLayout(null);
		
		btnOpen=new JButton("파일불러오기");
		btnOpen.setBounds(40, 20, 120, 30);
		this.add(btnOpen);
		
		//불러오기 이벤트
		btnOpen.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				FileDialog dlg=
						new FileDialog(FileDialog_06.this, "파일열기", FileDialog.LOAD);
				
				dlg.setVisible(true);
				
				//선택한 디렉토리
				String dir=dlg.getDirectory();
				//선택한 파일명
				String file=dlg.getFile();
				
				System.out.println(dir+"\n"+file);
				
				//만약취소누르면 메서드 종료
				if(dir==null)
					return;
				
				FileReader fr=null;
				BufferedReader br=null;
				
				try {
					fr=new FileReader(dir+file);
					br=new BufferedReader(fr);
					
					//기존데이타 삭제후 불러오기
					area.setText("");
					while(true)
					{
						String s=br.readLine();
						
						if(s==null)
							break;
						
						//읽은 데이타를 area에 출력
						area.append(s+"\n");
					}
				} catch (FileNotFoundException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}catch (IOException e2) {
					// TODO: handle exception
				}finally {
					try {
						if(br!=null) br.close();
						if(fr!=null) fr.close();
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					
				}
			}
		});
		
		
		btnSave=new JButton("파일저장");
		btnSave.setBounds(200, 20, 120, 30);
		this.add(btnSave);
		
		//저장이벤트
		btnSave.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				
				FileDialog dlg=
						new FileDialog(FileDialog_06.this, "파일저장", FileDialog.SAVE);
				dlg.setVisible(true);
				
				String dir=dlg.getDirectory();
				String file=dlg.getFile();
				
				if(dir==null)
					return;
				
				//파일저장
				FileWriter fw=null;
				
				try {
					fw=new FileWriter(dir+file);
					
					//area의 내용을 가져와서 파일에저장
					fw.write(area.getText()+"\n");
					
					//저장메세지
					area.setText(file+" 파일로 저장됨");
					
					
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}finally {
					try {
						fw.close();
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
				}
			}
		});
		
		
		//출력영역
		area=new JTextArea();
		area.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		
		JScrollPane js=new JScrollPane(area);
		js.setBounds(20, 70, 340, 300);
		this.add(js);
		
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		new FileDialog_06("파일다이얼로그_6");
	}

}
