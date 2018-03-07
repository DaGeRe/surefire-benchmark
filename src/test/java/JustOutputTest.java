import org.junit.Test;
import org.junit.runner.RunWith;

import de.dagere.kopeme.annotations.PerformanceTest;
import de.dagere.kopeme.junit.testrunner.PerformanceTestRunnerJUnit;

@RunWith(PerformanceTestRunnerJUnit.class)
public class JustOutputTest {
	@Test
	@PerformanceTest(executionTimes=20)
	public void testMe(){
		for (int i = 0; i < 10000; i++){
			System.out.println("This is my Öoutput: " + i);
		}
	}
}
