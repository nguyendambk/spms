package edu.hust.k54.persistence;


import java.util.List;
import javax.naming.InitialContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;

public class QuatrinhnghiencuuHome {

	private static final Log log = LogFactory
			.getLog(QuatrinhnghiencuuHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	public SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext()
					.lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException(
					"Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(Quatrinhnghiencuu transientInstance) {
		log.debug("persisting Quatrinhnghiencuu instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Quatrinhnghiencuu instance) {
		log.debug("attaching dirty Quatrinhnghiencuu instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Quatrinhnghiencuu instance) {
		log.debug("attaching clean Quatrinhnghiencuu instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(Quatrinhnghiencuu persistentInstance) {
		log.debug("deleting Quatrinhnghiencuu instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Quatrinhnghiencuu merge(Quatrinhnghiencuu detachedInstance) {
		log.debug("merging Quatrinhnghiencuu instance");
		try {
			Quatrinhnghiencuu result = (Quatrinhnghiencuu) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Quatrinhnghiencuu findById(java.lang.Integer id) {
		log.debug("getting Quatrinhnghiencuu instance with id: " + id);
		try {
			Quatrinhnghiencuu instance = (Quatrinhnghiencuu) sessionFactory
					.getCurrentSession().get(
							"edu.hust.k54.persistence.Quatrinhnghiencuu", id);
			if (instance == null) {
				log.debug("get successful, no instance found");
			} else {
				log.debug("get successful, instance found");
			}
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Quatrinhnghiencuu instance) {
		log.debug("finding Quatrinhnghiencuu instance by example");
		try {
			List results = sessionFactory
					.getCurrentSession()
					.createCriteria(
							"edu.hust.k54.persistence.Quatrinhnghiencuu")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
