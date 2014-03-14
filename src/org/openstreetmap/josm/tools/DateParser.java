// License: GPL. Copyright 2007 by Immanuel Scholz and others
package org.openstreetmap.josm.tools;

import java.text.ParseException;
import java.util.Date;
import org.openstreetmap.josm.tools.PrimaryDateParser;

/**
 * A thin wrapper around PrimaryDateParser
 * TODO : get rid of this class
 *
 * @author Immanuel.Scholz
 */
public class DateParser {
    public static Date parse(String d) throws ParseException {
        return new PrimaryDateParser().parse(d);
    }
}
