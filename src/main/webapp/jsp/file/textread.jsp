<!-- #���� ���� �б� -->
<%@page contentType="text/html;charset=euc-kr" %>
<%@page import="java.io.*"%>
<%
	String fileName = "test.txt"; //������ ���ϸ�
	String fileDir = "C:\\fileDir\\"; //������ ������ ���丮
	String filePath = request.getRealPath(fileDir) + "/"; //������ ������ ��ü���
	filePath += fileName; //������ ���ϸ��� ��ü��ο� ����

	try {

		File f = new File(filePath); // ���ϰ�ü����
		f.createNewFile(); //���ϻ���

		// ���Ͼ���
		FileWriter fw = new FileWriter(filePath); //���Ͼ��ⰴü����
		String data = "���Ͽ��� �ƹ��ų� �����ϴ�.\n�̰Ŵ� �ι�° ���ε� �ƹ��ų� �����ϴ�";
		fw.write(data); //���Ͽ��� �ۼ�
		fw.close(); //�����ڵ� �ݱ�

		// �����б�
		FileReader fr = new FileReader(filePath); //�����бⰴü����
		BufferedReader br = new BufferedReader(fr); //���۸�����ü����

		String line = null;
		byte[] tx_seq = new byte[12];
		String strSeq = null;
		
		while ((line = br.readLine()) != null) { //���δ��� �б�
			//���� ���� �Ľ�
			byte[] tx_ary = line.getBytes();
			System.arraycopy(tx_ary, 0, tx_seq, 0, 12);
			strSeq = new String(tx_seq); //����Ʈ ADD
			
			//���� �����Ľ�, ��ū
			
			out.println(line + "<br>");
		}

	} catch (IOException e) {
		System.out.println(e.toString()); //���� �߻��� �޽��� ���
	}
	
	
	FileInputStream ins = null;
    FileOutputStream outs = null;

    try {
       ins = new FileInputStream("input.txt");
       outs = new FileOutputStream("output.txt");
       
       int c;
       while ((c = ins.read()) != -1) { //byte ���� �б�
          outs.write(c);
       }
    }finally {
       if (ins != null) {
          ins.close();
       }
       if (outs != null) {
          outs.close();
       }
    }
    
    
    FileReader inc = null;
    FileWriter outc = null;

    try {
       inc = new FileReader("input.txt");
       outc = new FileWriter("output.txt");
       
       int c;
       while ((c = inc.read()) != -1) {
          outc.write(c);
       }
    }finally {
       if (inc != null) {
          inc.close();
       }
       if (outc != null) {
          outc.close();
       }
    }

%>
