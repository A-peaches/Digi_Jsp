
<%@ page import="java.io.*,java.net.*,java.util.*,org.json.*" contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Weather Information</title>
</head>
<body>
<%
    String apiKey = "0774b00dce86d28cb338061e92fdfb43"; // 여기에 OpenWeatherMap API 키를 입력하세요.
    String cityName = "Seoul"; // 날씨 정보를 조회할 도시 이름
    String urlString = "http://api.openweathermap.org/data/2.5/weather?q=" + cityName + "&appid=" + apiKey + "&units=metric";

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
            double tempMax = json.getJSONObject("main").getDouble("temp_max");

            out.println("<h2>Weather Information for " + cityName + "</h2>");
            out.println("<p>Maximum Temperature: " + info);
       
			/*     Weather Information for Seoul
            {"coord":{"lon":126.9778,"lat":37.5683},"weather":[{"id":804,"main":"Clouds","description":
            	"overcast clouds","icon":"04d"}],"base":"stations","main":{"temp":19.41,"feels_like":19.05,
            	"temp_min":16.69,"temp_max":21.66,"pressure":1007,"humidity":63},"visibility":9000,"wind":{
            		"speed":3.09,"deg":290},"clouds":{"all":100},"dt":1714445981,"sys":{"type":1,"id":8105,"
            			country":"KR","sunrise":1714423072,"sunset":1714472432},"timezone":32400,"id":1835848,
            	"name":"Seoul","cod":200}  */
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<p>Error: " + e.getMessage() + "</p>");
    }
%>    
</body>
</html>