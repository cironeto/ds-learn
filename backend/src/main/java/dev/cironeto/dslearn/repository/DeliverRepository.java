package dev.cironeto.dslearn.repository;

import dev.cironeto.dslearn.entity.Deliver;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DeliverRepository extends JpaRepository<Deliver, Long> {
}