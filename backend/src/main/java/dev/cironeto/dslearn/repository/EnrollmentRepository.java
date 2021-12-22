package dev.cironeto.dslearn.repository;

import dev.cironeto.dslearn.entity.Enrollment;
import dev.cironeto.dslearn.entity.pk.EnrollmentPk;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EnrollmentRepository extends JpaRepository<Enrollment, EnrollmentPk> {
}
