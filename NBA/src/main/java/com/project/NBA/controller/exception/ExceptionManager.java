package com.project.NBA.controller.exception;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.project.NBA.model.ValidationErrors;
import com.project.NBA.model.ValidationErrors.ErrorCustom;
import lombok.extern.slf4j.Slf4j;

@ControllerAdvice
@Slf4j
public class ExceptionManager {

	@ExceptionHandler(Exception.class)
	public ResponseEntity<Object> genericError(Exception e) {
		log.error("Ha ocurrido una excepción genérica no controlada");
		return new ResponseEntity<>(e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@ExceptionHandler(MethodArgumentNotValidException.class)
	public ResponseEntity<Object> validationError(MethodArgumentNotValidException e) {
		final List<FieldError> errors = e.getBindingResult().getFieldErrors();

		final ValidationErrors validationErrors = new ValidationErrors();

		for (final FieldError error : errors) {

			final ErrorCustom custom = new ErrorCustom();
			custom.setField(error.getField());
			custom.setMessage(error.getDefaultMessage());
			validationErrors.getErrors().add(custom);


		}

		return new ResponseEntity<>(validationErrors, HttpStatus.INTERNAL_SERVER_ERROR);

	}
}