package dev.repository;

import dev.domain.Income;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class IncomeRepository {

    private final SessionFactory sessionFactory;

    public IncomeRepository(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void save(Income income) {
        Session session = sessionFactory.getCurrentSession();
        session.save(income);
    }
}
