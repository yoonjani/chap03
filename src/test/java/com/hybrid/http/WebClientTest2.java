package com.hybrid.http;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.Scanner;

public class WebClientTest2 {

	public static void main(String[] args) throws UnknownHostException, IOException {
		GET();
//		POST();
	}
	static void POST() throws UnknownHostException, IOException {
		System.out.println("START...");
		Socket sok = new Socket("localhost", 8080);
		PrintWriter request = new PrintWriter(sok.getOutputStream());
		Scanner response = new Scanner(sok.getInputStream());
		
		/*
		 *  Request 전문 송신
		 */
		String body = "id=" + URLEncoder.encode("호 길 동", "utf-8")
					+ "&pw=" + URLEncoder.encode("123456", "utf-8");
		
		System.out.println("body= " + body);
		System.out.println("body length= " + body.length());
		
		request.println("POST /request.jsp HTTP/1.1");
		request.println("Host:localhost:8080");
		request.println("Content-Type:application/x-www-form-urlencoded");
		request.println("Content-Length:" + body.length());
		request.println();
		request.println(body);
		request.flush();
		
		/*
		 *  Request 전문 수신
		 */
		
		while(response.hasNext()) {
			String line = response.nextLine();
			System.out.println(line);
			if (line.toLowerCase().lastIndexOf("</html>") != -1)
				break;
		}
		
		sok.close();
		System.out.println("END...");
	}
	
	static void GET() throws UnknownHostException, IOException {
		System.out.println("START...");

		Socket sok = new Socket("localhost", 8080);
		InputStream in = sok.getInputStream();
		OutputStream out = sok.getOutputStream();
		
		PrintWriter request = new PrintWriter(out);
		Scanner response = new Scanner(in);
		
		String id = "홍 길동";
		String pw = "123456";
		id = URLEncoder.encode(id);
		System.out.println("id = " + id);
		pw = URLEncoder.encode(pw);
		System.out.println("pw = " + pw);
		
		request.println("GET /request.jsp?id=" + id + "&pw=" + pw + " HTTP/1.1");
		request.println("Host:localhost:8080");
		request.println();
		request.println();
		request.flush();
		
		while(response.hasNextLine()) {
			String line = response.nextLine();
			System.out.println(line);
			if (line.toLowerCase().lastIndexOf("</html>") != -1)
				break;
		}
		
		sok.close();
		
		System.out.println("END....");
		
	}
}

