package BankPro2.BTask2;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;


@Repository
public interface CreateRepository extends JpaRepository<CreateBean, Integer> 
{	 


}
