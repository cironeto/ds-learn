package dev.cironeto.dslearn.service;

import dev.cironeto.dslearn.dto.DeliverReviewDto;
import dev.cironeto.dslearn.entity.Deliver;
import dev.cironeto.dslearn.repository.DeliverRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DeliverService {

    @Autowired
    private DeliverRepository deliverRepository;

    @PreAuthorize("hasAnyRole('ADMIN', 'INSTRUCTOR')")
    @Transactional
    public void saveReview(Long id, DeliverReviewDto dto) {
        Deliver deliver = deliverRepository.getOne(id);
        deliver.setStatus(dto.getStatus());
        deliver.setFeedback(dto.getFeedback());
        deliver.setCorrectCount(dto.getCorrectCount());
        deliverRepository.save(deliver);
    }

}
