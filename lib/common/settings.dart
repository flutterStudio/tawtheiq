class AppIcons {
  static const String ICON_ADD_TASK = "assets/icons/add_task.svg";
  static const String ICON_CHECK_LIST = "assets/icons/check_list.svg";
  static const String ICON_CLOCK = "assets/icons/clock.svg";
  static const String ICON_DOC_SEARCH = "assets/icons/doc_search.svg";
  static const String ICON_DOC_SEARCH_FAILD =
      "assets/icons/doc_search_faild.svg";
  static const String ICON_LIST = "assets/icons/list.svg";
  static const String ICON_LOGO = "assets/icons/logo.svg";
  static const String ICON_MENU = "assets/icons/menu.svg";
  static const String ICON_NOTIFICATION = "assets/icons/notifications.svg";
  static const String ICON_SEARCH = "assets/icons/search.svg";
  static const String ICON_TASKS_LIST = "assets/icons/tasks_list.svg";
  static const String ICON_TODO_LIST = "assets/icons/todo_list.svg";
  static const String ICON_GOOGLE = "assets/icons/google.svg";
  static const String ICON_OFFICE = "assets/icons/office.svg";
  static const String ICON_LINKEDIN = "assets/icons/linkedin.svg";
  static const String ICON_APPLE = "assets/icons/apple.svg";
  static const String ICON_CALENDAR = "assets/icons/calendar.svg";
}

/// Where all app static settings should be set.
class Settings {
  static const double BORDER_RADIUS_SMALL = 5;
  static const double BORDER_RADIUS_MEDIUM = 10;
  static const double BORDER_RADIUS_LARGE = 20;

  static const Map<int, String> HTTP_REQUEST_STATE_CODE = {
    200: "Ok",
    400: "Bad Request",
    401: "Unauthorized",
    403: "Forbidden",
    404: "Not Found",
    408: "Request Timeout",
    409: "Can not Delete a warehouse that has a product group.",
  };
}

enum DataStatus { inProgress, succeed, faild, timeout, none }

enum NetworkState { connected, disconnected, none }

enum ErrorType { network, emptyResponse, other, none }
