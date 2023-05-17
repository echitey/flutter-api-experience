// To get a response, we basically need e types of data
// a status (enum) to show the status of the request [empty, loading, completed, error]
// a message (String) to show a message while the request is empty, loading or error
// a data (T) to show the data from the api response

//Status Enum
enum Status { empty, loading, completed, error }

// Api Response class. It is using a generic type so it can be reusable.
// Status is non-nullable. Data T depends on the response. Message too.
class ApiResponse<T> {
  Status status;
  T? data;
  String? message;

  // We now use named constructor to keep things organized
  ApiResponse.empty(this.message) : status = Status.empty;

  ApiResponse.loading(this.message) : status = Status.loading;

  ApiResponse.completed(this.data) : status = Status.completed;

  ApiResponse.error(this.message) : status = Status.error;

  @override
  String toString() {
    // TODO: implement toString
    return "Status: $status \nMessage: $message \nData: $data";
  }
}
