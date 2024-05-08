package test;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.*;
import java.util.*;
import java.util.stream.Collectors;

import org.json.*;

@WebServlet("/WeatherApi")
public class WeatherApi extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String apiKey = "0774b00dce86d28cb338061e92fdfb43"; //  OpenWeatherMap API 키
		String cityName = "incheon"; // 날씨 정보를 조회할 도시 이름
		String urlString = "http://api.openweathermap.org/data/2.5/weather?q=" + cityName + "&appid=" + apiKey
				+ "&units=metric";

		//클라이언트 응답을 위한 출력 스트림 확보
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
				
		try {
			URL url = new URL(urlString);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.connect();

			int responseCode = conn.getResponseCode();

			if (responseCode != 200) {
				throw new RuntimeException("HttpResponseCode: " + responseCode);
			} else {
				StringBuilder info = new StringBuilder();
				Scanner scanner = new Scanner(url.openStream());

				while (scanner.hasNext()) {
					info.append(scanner.nextLine());
				}
				scanner.close();

				// JSON 파싱
				JSONObject json = new JSONObject(info.toString());
				double tempMin = json.getJSONObject("main").getDouble("temp_min");
				double tempMax = json.getJSONObject("main").getDouble("temp_max");
				
				// 'weather' 배열 접근
				JSONArray weatherArray = json.getJSONArray("weather");
				ArrayList<String> mainValues = new ArrayList<String>();

				// 'weather' 배열 내의 객체들을 순회하면서 'main' 항목 찾기
				for (int i = 0; i < weatherArray.length(); i++) {
				    JSONObject weatherItem = weatherArray.getJSONObject(i);
				    mainValues.add(weatherItem.getString("main"));  // 'main' 값을 리스트에 추가
				}
				
				List<String> upperValues = mainValues.stream() 
						.map(s-> s.replace(" ", "")) //공백 제거
						.map(String::toUpperCase)//대문자변환
						.collect(Collectors.toList()); //결과수집.
						
				String weather = "";  // 결과를 저장할 문자열 변수
				for (String main : upperValues) {
				    if (main != null) {  // null이 아닐 때만 실행
				        weather += main + "";  // 문자열에 추가
				    }
				}
				weather = WeatherKR.getWeatherKR(weather);
				/*
				 * Weather Information for Seoul
				 * {
				 * "coord": {"lon":126.9778,"lat":37.5683},
				 * 
				 * "weather":[{"id":804,"main":"Clouds",
				 * 
				 * "description": "overcast clouds","icon":"04d"}],
				 * 
				 * "base":"stations",
				 * 
				 * "main":{"temp":19.41, "feels_like":19.05, "temp_min":16.69,
				 * "temp_max":21.66,"pressure":1007,"humidity":63},
				 * 
				 * "visibility":9000, 
				 * 
				 * "wind":{ "speed":3.09,"deg":290},"clouds":{"all":100},"dt":1714445981,"sys":{"type":1,
				 * "id":8105," country":"KR","sunrise":1714423072,"sunset":1714472432},
				 * 
				 * "timezone":32400,"id"
				 * :1835848, "name":"Seoul","cod":200}*/
				
				System.out.println("오늘의 최저 기온은 : " + tempMin);
				System.out.println("오늘의 최고 기온은 : " + tempMax);
				System.out.println(weather);
				
				    out.println("<!DOCTYPE html>");
	                out.println("<html>");
	                out.println("<head>");
	                out.println("<style>@import url('https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap');\r\n"
	                		+ ".gowun-batang-regular {\r\n"
	                		+ "  font-family: \"Gowun Batang\", serif;\r\n"
	                		+ "  font-weight: 400;\r\n"
	                		+ "  font-style: normal;\r\n"
	                		+ "}\r\n"
	                		+ "* {\r\n"
	                		+ "	font-family : \"Gowun Batang\";\r\n"
	                		+ "	text-align : center;\r\n"
	                		+ "} </style>");
	                out.println("<title>Weather Information for " + cityName + "</title>");
	                out.println("<meta charset='UTF-8'>");
	                out.println("</head>");
	                out.println("<body>");
	                out.println("<h3>🌤날씨 알리미</h3>");
	                out.println("<hr>");
	                out.println("<p>도시 :" + cityName + "<p>");
	                out.println("<p>오늘의 날씨 : " + weather);
	                out.println("<p>오늘의 최고 기온 : " + tempMin + "°C</p>");
	                out.println("<p>오늘의 최저 기온 : " + tempMax + "°C</p>");
	                out.println("</body>");
	                out.println("</html>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
