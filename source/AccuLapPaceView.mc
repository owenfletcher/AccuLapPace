using Toybox.WatchUi;

class AccuLapPaceView extends WatchUi.SimpleDataField {

    hidden var value;
    hidden var minutes;
    hidden var seconds;
    hidden var secondsString;
    hidden var milliseconds;
    hidden var millisecondsString;
    var distanceRan;
    var elapsedTime;

    function initialize() {
        DataField.initialize();
        value = 0.0f;
        minutes = 0;
        seconds = 0;
        milliseconds = 0;
        distanceRan = 0;
        elapsedTime = 0.0f;
    }
    
    function onTimerLap() {
    	var lapInfo = Activity.getActivityInfo();
    	distanceRan = lapInfo.elapsedDistance;
    	elapsedTime = lapInfo.elapsedTime;
    }

    function compute(info) {    
        if(info has :elapsedDistance){
            if(info.elapsedDistance != null && info.elapsedTime != null && info.elapsedDistance > 0 ){
            	if (info.elapsedDistance != distanceRan && info.elapsedTime.toFloat() != elapsedTime.toFloat()) {
                	value = 0.016666666666667f / (info.elapsedDistance - distanceRan) * (info.elapsedTime.toFloat() - elapsedTime.toFloat());
                	
                	minutes = value.toNumber();
					seconds = (value - minutes) * 60;
					milliseconds = (seconds - seconds.toNumber()) * 1000;
					
					if (seconds.toNumber() < 10) {
						secondsString = "0" + seconds.toNumber().toString(); }
					else {
						secondsString = seconds.toNumber().toString(); }
						
					millisecondsString = milliseconds.format("%.0f").toString();
					if (millisecondsString.length() == 1) {
						millisecondsString = millisecondsString + "00"; }
					else if (millisecondsString.length() == 2) {
						millisecondsString = millisecondsString + "0"; }
											
	        		return minutes.toString() + ":" + secondsString + "." + millisecondsString;
                }
                else {
                	return "0:00.000";
                }
            } else {
                return "0:00.000";
            }
        }
    }
    

}