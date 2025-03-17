status = 0 => Lên kế hoạch
status = 1 => Đã xác nhận
status = 2 => Đang diễn ra
status = 3 => Đã kết thúc
status = 4 => Đã hủy

<!-- Cán bộ -->
<!-- Cán bộ/Soạn Lịch/Lịch nháp --> 0
<!-- Cán bộ/Soạn lịch/Đã trình duyệt --> 1

<!-- Trưởng phòng  -->
<!-- Trưởng phòng/Soạn lịch/Lịch nháp -->

Trả lại => 0
Trình duyệt => 2

<!-- Cục trưởng -->
<!-- Cục trưởng/Soạn lịch/Lịch nháp -->

Trả lại => 1
Phê duyệt => 3

Xuất bản lịch = cuối cùng = 4

<!-- ?Xem phần permissions -->

<!-- ! -->

<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.POST, value = "meeting-resources") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.POST, value = "new-meeting-resource") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.PUT, value = "meeting-resources/{id}") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.DELETE, value = "meeting-resources/{id}") -->

@RequestMapping(produces = ["application/json"], method = RequestMethod.GET, value = "meeting-resources/available")
@RequestMapping(produces = ["application/json"], method = RequestMethod.GET, value = "meeting-resources/{id}/availability")
@RequestMapping(produces = ["application/json"], method = RequestMethod.GET, value = "meeting-resources/types")
@RequestMapping(produces = ["application/json"], method = RequestMethod.GET, value = "meeting-resources/{id}/stats")

<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.POST, value = "meeting-types") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.GET, value = "meeting-types/{id}") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.POST, value = "new-meeting-type") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.PUT, value = "meeting-types/{id}") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.DELETE, value = "meeting-types/{id}") -->

<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.POST, value = "meetings") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.GET, value = "meetings/{id}") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.POST, value = "new-meeting") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.PUT, value = "meetings/{id}") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.DELETE, value = "meetings/{id}") -->

<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.POST, value = "meetings/transfer-options") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.POST, value = "meetings/transfer") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.POST, value = "meetings/{meetingId}/comments") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.DELETE, value = "meetings/{meetingId}/comments/{commentId}") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.GET, value = "meetings/{meetingId}/comments") -->


@RequestMapping(produces = ["application/json"], method = RequestMethod.GET, value = "meetings/{meetingId}/bookings")
@RequestMapping(produces = ["application/json"], method = RequestMethod.POST, value = "meetings/{meetingId}/bookings")
@RequestMapping(produces = ["application/json"], method = RequestMethod.DELETE, value = "meetings/{meetingId}/bookings/{bookingId}")

@RequestMapping(produces = ["application/json"], method = RequestMethod.PUT, value = "meetings/{id}/status")
@RequestMapping(produces = ["application/json"], method = RequestMethod.PUT, value = "meetings/{id}/cancel")
@RequestMapping(produces = ["application/json"], method = RequestMethod.GET, value = "meetings/stats")

<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.GET, value = "meetings/{meetingId}/minutes") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.GET, value = "meeting-minutes/{id}") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.POST, value = "meetings/{meetingId}/minutes") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.PUT, value = "meeting-minutes/{id}") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.DELETE, value = "meeting-minutes/{id}") -->



 




<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.POST, value = "meetings/{meetingId}/participants") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.POST, value = "meetings/{meetingId}/new-participant") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.PUT, value = "meetings/{meetingId}/participants/{participantId}/status") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.DELETE, value = "meetings/{meetingId}/participants/{participantId}") -->
<!-- @RequestMapping(produces = ["application/json"], method = RequestMethod.GET, value = "meetings/{meetingId}/available-participants") -->

<!-- ! -->

<!-- ! -->


<!-- ! -->

Các bảng quan tâm

<!-- meeting_types -->
<!-- meeting_resources -->
<!-- meetings -->
<!-- meeting_resource_bookings -->
<!-- meetings_comments -->

meeting_participants = tham gia
meeting_minutes = giấy tờ biên bản
