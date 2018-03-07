import org.junit.Test;
import org.junit.runner.RunWith;

import de.dagere.kopeme.annotations.PerformanceTest;
import de.dagere.kopeme.junit.testrunner.PerformanceTestRunnerJUnit;

@RunWith(PerformanceTestRunnerJUnit.class)
public class JustOutputTest {
	private final int LINE_COUNT = (System.getenv("LINE_COUNT") != null ? Integer.parseInt(System.getenv("LINE_COUNT")) : 1000) ;
	
	@Test
	@PerformanceTest(executionTimes=100, dataCollectors="ONLYTIME")
	public void testMe(){
		for (int i = 0; i < LINE_COUNT; i++){
			System.out.println("This is my Öoutput: " + i);
		}
	}
}
