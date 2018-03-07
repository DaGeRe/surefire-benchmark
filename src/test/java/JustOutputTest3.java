import de.dagere.kopeme.datacollection.DataCollectorList;
import de.dagere.kopeme.junit3.KoPeMeTestcase;

public class JustOutputTest3 extends KoPeMeTestcase {

	private final int LINE_COUNT = (System.getenv("LINE_COUNT") != null ? Integer.parseInt(System.getenv("LINE_COUNT")) : 1000) ;

	@Override
	protected int getWarmupExecutions() {
		return 0;
	}

	@Override
	protected int getExecutionTimes() {
		return 100;
	}
	
	@Override
	protected DataCollectorList getDataCollectors() {
		return DataCollectorList.ONLYTIME;
	}

	public void testMe() {
		for (int i = 0; i < LINE_COUNT; i++) {
			System.out.println("This is my Öoutput: " + i);
		}
	}
}
