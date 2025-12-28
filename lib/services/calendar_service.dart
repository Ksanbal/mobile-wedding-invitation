import 'dart:js_interop';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:url_launcher/url_launcher_string.dart';
import 'package:web/web.dart' as web;

/// Service for adding wedding event to user's calendar
/// Supports both Google Calendar URL (primary) and ICS file download (fallback)
class CalendarService {
  // Wedding event details
  static const String _weddingTitle = "김현균 ❤️ 유나영 결혼식";
  static const String _location = "스타시티아트홀, 서울 광진구 능동로 110";
  static const String _description = "Welcome to our wedding celebration";
  static final DateTime _eventStart = DateTime(2026, 3, 14, 17, 0); // 5:00 PM KST
  static final DateTime _eventEnd = DateTime(2026, 3, 14, 19, 0); // 7:00 PM KST

  /// Generate Google Calendar URL with event details
  /// Format: https://calendar.google.com/calendar/r/eventedit?text=...&dates=...&location=...
  static String generateGoogleCalendarUrl() {
    // Format datetime as YYYYMMDDTHHMMSS
    final startStr = _formatDateTimeForUrl(_eventStart);
    final endStr = _formatDateTimeForUrl(_eventEnd);

    // Build URL with query parameters
    final queryParams = {
      'text': _weddingTitle,
      'dates': '$startStr/$endStr',
      'location': _location,
      'details': _description,
    };

    final uri = Uri.https('calendar.google.com', '/calendar/r/eventedit', queryParams);

    return uri.toString();
  }

  /// Format DateTime to Google Calendar URL format: YYYYMMDDTHHMMSS
  static String _formatDateTimeForUrl(DateTime dateTime) {
    return '${dateTime.year}'
        '${dateTime.month.toString().padLeft(2, '0')}'
        '${dateTime.day.toString().padLeft(2, '0')}'
        'T'
        '${dateTime.hour.toString().padLeft(2, '0')}'
        '${dateTime.minute.toString().padLeft(2, '0')}'
        '${dateTime.second.toString().padLeft(2, '0')}';
  }

  /// Generate ICS file content following RFC 5545 standard
  /// Includes VTIMEZONE for Asia/Seoul timezone
  static String generateIcsContent() {
    final startStr = _formatDateTimeForIcs(_eventStart);
    final endStr = _formatDateTimeForIcs(_eventEnd);
    final now = DateTime.now();
    final dtstamp = _formatDateTimeForIcs(now);

    return '''BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Wedding Invitation//EN
CALSCALE:GREGORIAN
METHOD:PUBLISH
BEGIN:VTIMEZONE
TZID:Asia/Seoul
BEGIN:STANDARD
DTSTART:19700101T000000
TZOFFSETFROM:+0900
TZOFFSETTO:+0900
TZNAME:KST
END:STANDARD
END:VTIMEZONE
BEGIN:VEVENT
DTSTART;TZID=Asia/Seoul:$startStr
DTEND;TZID=Asia/Seoul:$endStr
DTSTAMP:$dtstamp
SUMMARY:$_weddingTitle
LOCATION:$_location
DESCRIPTION:$_description
GEO:37.540893;127.071495
STATUS:CONFIRMED
SEQUENCE:0
END:VEVENT
END:VCALENDAR''';
  }

  /// Format DateTime to ICS format: YYYYMMDDTHHMMSS
  static String _formatDateTimeForIcs(DateTime dateTime) {
    return '${dateTime.year}'
        '${dateTime.month.toString().padLeft(2, '0')}'
        '${dateTime.day.toString().padLeft(2, '0')}'
        'T'
        '${dateTime.hour.toString().padLeft(2, '0')}'
        '${dateTime.minute.toString().padLeft(2, '0')}'
        '${dateTime.second.toString().padLeft(2, '0')}';
  }

  /// Download ICS file in web browser
  /// Creates a Blob object and triggers download via anchor element
  static Future<void> downloadIcsFile() async {
    if (!kIsWeb) {
      throw UnsupportedError('ICS file download is only supported on web');
    }

    final icsContent = generateIcsContent();

    // Create blob with ICS content
    final parts = <JSAny>[icsContent.toJS].toJS;
    final blob = web.Blob(parts, web.BlobPropertyBag(type: 'text/calendar;charset=utf-8'));

    // Create object URL from blob
    final url = web.URL.createObjectURL(blob);

    // Create anchor element and trigger download
    final anchor =
        web.document.createElement('a') as web.HTMLAnchorElement
          ..href = url
          ..download = 'wedding_invitation.ics'
          ..style.display = 'none';

    web.document.body?.appendChild(anchor);
    anchor.click();

    // Cleanup
    web.document.body?.removeChild(anchor);
    web.URL.revokeObjectURL(url);
  }

  /// Main method to add event to calendar
  /// Tries Google Calendar URL first, falls back to ICS download if needed
  /// Returns true if successful, false otherwise
  static Future<bool> addToCalendar() async {
    try {
      // Primary method: Try to launch Google Calendar URL
      final url = generateGoogleCalendarUrl();
      final launched = await launchUrlString(url, mode: LaunchMode.externalApplication);

      if (launched) {
        return true;
      }

      // Fallback method: Download ICS file
      if (kIsWeb) {
        await downloadIcsFile();
        return true;
      }

      return false;
    } catch (e) {
      // If Google Calendar URL fails, try ICS download as fallback
      if (kIsWeb) {
        try {
          await downloadIcsFile();
          return true;
        } catch (icsError) {
          return false;
        }
      }
      return false;
    }
  }
}
