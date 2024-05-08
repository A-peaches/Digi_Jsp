package test;

public enum WeatherKR {
    CLEAR("맑은 하늘"),
    FEWCLOUDS("구름이 거의 없다"),
    OVERCASTCLOUDS("흐린 구름"),
    LIGHTRAIN("이슬비"),
    RAIN("비"),
    SHOWERRAIN("샤워 비"),
    THUNDERSTORM("뇌우"),
    SNOW("눈"),
    MIST("안개");

    private final String state;

    // Constructor
    WeatherKR(String state) {
        this.state = state;
    }

    // Getter
    public String getState() {
        return state;
    }
    
    public static String getWeatherKR(String state) {
    	for(WeatherKR weatherKR : WeatherKR.values()) {
    		if(weatherKR.name().equalsIgnoreCase(state)) {
    			return weatherKR.getState();
    		}
    	}
    	return "날씨 정보를 불러올 수 없습니다.";
    }
}
