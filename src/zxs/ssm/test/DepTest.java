package zxs.ssm.test;

import java.util.List;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import zxs.ssm.services.DepartmentService;

public class DepTest {

	@Autowired
	private DepartmentService depService;
	
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		List<String> depList = depService.selectDepNameList();
		System.out.println(depList);
	}

}
