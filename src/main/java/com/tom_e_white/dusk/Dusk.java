package com.tom_e_white.dusk;

import com.luckycatlabs.sunrisesunset.SunriseSunsetCalculator;
import com.luckycatlabs.sunrisesunset.dto.Location;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

public class Dusk {
  public static void main(String[] args) {
    Location location = new Location("51.868383", "-3.151789"); // Crickhowell
    TimeZone tz = TimeZone.getTimeZone("Europe/London");
    int year = 2014;
    SunriseSunsetCalculator calculator = new SunriseSunsetCalculator(location, tz);
    Calendar cal = Calendar.getInstance();
    cal.set(Calendar.DATE, 1);
    cal.set(Calendar.MONTH, Calendar.JANUARY);
    cal.set(Calendar.YEAR, year);
    DateFormat df = DateFormat.getDateInstance(DateFormat.SHORT, Locale.UK);
    System.out.println("date\tofficial_sunrise\tofficial_sunset\tcivil_sunrise" +
        "\tcivil_sunset\tnautical_sunrise\tnautical_sunset\tastronomical_sunrise" +
        "\tastronomical_sunset");
    while (cal.get(Calendar.YEAR) == year) {
      System.out.printf("%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n", df.format(cal.getTime()),
          calculator.getOfficialSunriseForDate(cal),
          calculator.getOfficialSunsetForDate(cal),
          calculator.getCivilSunriseForDate(cal),
          calculator.getCivilSunsetForDate(cal),
          calculator.getNauticalSunriseForDate(cal),
          calculator.getNauticalSunsetForDate(cal),
          calculator.getAstronomicalSunriseForDate(cal),
          calculator.getAstronomicalSunsetForDate(cal)
          );
      cal.add(Calendar.DATE, 1);
    }
  }
}
