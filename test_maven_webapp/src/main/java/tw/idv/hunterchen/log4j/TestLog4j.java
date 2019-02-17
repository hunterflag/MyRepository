package tw.idv.hunterchen.log4j;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;

public class TestLog4j {
	final static Logger logger = Logger.getLogger(TestLog4j.class);
	
	public TestLog4j() {
	}

	public static void main(String[] args) {
		Logger x = Logger.getLogger("x");
		x.setLevel(Level.INFO);
		Logger xy = Logger.getLogger("x.y");
		
		logger.debug("should Show Message for debug");
		logger.info("should Show Message for info");
		logger.warn("should Show Message for warn");
		logger.error("should Show Message for error");
		logger.fatal("should Show Message for fatal");

		x.debug("x should Show Message for debug");
		x.info("x should Show Message for info");
		x.warn("x should Show Message for warn");
		xy.error("xy should Show Message for error");
		xy.fatal("xy should Show Message for fatal");
	}

}
