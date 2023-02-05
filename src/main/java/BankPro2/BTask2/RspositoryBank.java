package BankPro2.BTask2;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
@Repository
public interface RspositoryBank extends JpaRepository<BeanLayer,String>
{

public BeanLayer findByName(String name);
	
}

