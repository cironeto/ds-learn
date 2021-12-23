package dev.cironeto.dslearn.resource;

import dev.cironeto.dslearn.dto.DeliverReviewDto;
import dev.cironeto.dslearn.service.DeliverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/deliveries")
public class DeliverResource {

    @Autowired
    private DeliverService deliverService;

    @PutMapping(value = "/{id}")
    public ResponseEntity<Void> updateDeliverWithReview(@PathVariable Long id, @RequestBody DeliverReviewDto dto) {
        deliverService.saveReview(id, dto);
        return ResponseEntity.noContent().build();
    }

}
