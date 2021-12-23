package dev.cironeto.dslearn.service;

import dev.cironeto.dslearn.dto.NotificationDto;
import dev.cironeto.dslearn.entity.Notification;
import dev.cironeto.dslearn.entity.User;
import dev.cironeto.dslearn.repository.NotificationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class NotificationService {

    @Autowired
    private NotificationRepository notificationRepository;

    @Autowired
    private AuthService authService;

    @Transactional(readOnly = true)
    public Page<NotificationDto> getNotificationsForCurrentUser(Pageable pageable) {
        User user = authService.getAuthenticatedUser();
        Page<Notification> notificationsPaged = notificationRepository.findByUser(user, pageable);
        return notificationsPaged.map(NotificationDto::new);
    }

}
