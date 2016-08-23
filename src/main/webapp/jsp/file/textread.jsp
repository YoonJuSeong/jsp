<!-- #파일 문서 읽기 -->
<%@page contentType="text/html;charset=euc-kr" %>
<%@page import="java.io.*"%>
<%
	String fileName = "test.txt"; //생성할 파일명
	String fileDir = "C:\\fileDir\\"; //파일을 생성할 디렉토리
	String filePath = request.getRealPath(fileDir) + "/"; //파일을 생성할 전체경로
	filePath += fileName; //생성할 파일명을 전체경로에 결합

	try {

		File f = new File(filePath); // 파일객체생성
		f.createNewFile(); //파일생성

		// 파일쓰기
		FileWriter fw = new FileWriter(filePath); //파일쓰기객체생성
		String data = "파일에다 아무거나 적습니다.\n이거는 두번째 줄인데 아무거나 적습니다";
		fw.write(data); //파일에다 작성
		fw.close(); //파일핸들 닫기

		// 파일읽기
		FileReader fr = new FileReader(filePath); //파일읽기객체생성
		BufferedReader br = new BufferedReader(fr); //버퍼리더객체생성

		String line = null;
		byte[] tx_seq = new byte[12];
		String strSeq = null;
		
		while ((line = br.readLine()) != null) { //라인단위 읽기
			//라인 정적 파싱
			byte[] tx_ary = line.getBytes();
			System.arraycopy(tx_ary, 0, tx_seq, 0, 12);
			strSeq = new String(tx_seq); //리스트 ADD
			
			//라인 가변파싱, 토큰
			
			out.println(line + "<br>");
		}

	} catch (IOException e) {
		System.out.println(e.toString()); //에러 발생시 메시지 출력
	}
	
	
	FileInputStream ins = null;
    FileOutputStream outs = null;

    try {
       ins = new FileInputStream("input.txt");
       outs = new FileOutputStream("output.txt");
       
       int c;
       while ((c = ins.read()) != -1) { //byte 단위 읽기
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
