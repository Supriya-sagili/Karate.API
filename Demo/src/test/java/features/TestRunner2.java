package features;
import static org.junit.Assert.assertTrue;
import org.junit.Test;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
public class TestRunner2 
{
	      
		 @Test
		    public void testParallel() {
		        Results results = Runner.path("classpath:features").tags("~@ignore")
		        		.outputCucumberJson(true)
		        		.parallel(2);
		        generateReport(results.getReportDir());
		        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
		        
		    }
		 public static void generateReport(String karateOutputPath) {        
		        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
		        List<String> jsonPaths = new ArrayList<String>(jsonFiles.size());
		        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
		        Configuration config = new Configuration(new File("target"), "demo");
		        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
		        reportBuilder.generateReports();        
		    }
	 }