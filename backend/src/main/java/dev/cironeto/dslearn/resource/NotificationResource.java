package dev.cironeto.dslearn.resource;

import dev.cironeto.dslearn.dto.NotificationDto;
import dev.cironeto.dslearn.service.NotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/notifications")
public class NotificationResource {

    @Autowired
    private NotificationService notificationService;

    @GetMapping
    public ResponseEntity<Page<NotificationDto>> getNotificationsForCurrentUser(Pageable pageable) {
        Page<NotificationDto> notificationDtoPage = notificationService.getNotificationsForCurrentUser(pageable);
        return ResponseEntity.ok(notificationDtoPage);
    }
}
