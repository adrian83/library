import 'errors.dart';

import 'package:logging/logging.dart';

class ErrorHandler {
  static final Logger LOGGER = new Logger('ErrorHandler');

  List<ValidationError> _validationErrors;

  void handleError(e) {
    if (e is ValidationErrors) {
      this.validationErrors = e.validationErrors;
      LOGGER.info("Validation errors: $validationErrors");
      return;
    }
    LOGGER.info("Errors: $e");
  }

  void set validationErrors(List<ValidationError> errors){
    this._validationErrors = errors;
  }

  List<ValidationError> get validationErrors => this._validationErrors == null
      ? new List<ValidationError>()
      : this._validationErrors;

  void cleanValidationErrors(){
    this._validationErrors = new List<ValidationError>();
  }

}
