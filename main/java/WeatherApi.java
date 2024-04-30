import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.*;
import java.util.*;
import org.json.*;

@WebServlet("/WeatherApi")
public class WeatherApi extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String apiKey = "0774b00dce86d28cb338061e92fdfb43"; // 여기에 OpenWeatherMap API 키를 입력하세요.
		String cityName = "Seoul"; // 날씨 정보를 조회할 도시 이름
		String urlString = "http://api.openweathermap.org/data/2.5/weather?q=" + cityName + "&appid=" + apiKey
				+ "&units=metric";

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
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
