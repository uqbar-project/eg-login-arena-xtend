package org.uqbar.login.domain

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Dependencies
import org.uqbar.commons.model.annotations.Observable

@Accessors
@Observable
class Login {
	String usuario
	String password
	String passwordValida
	
	new(String unaPassword) {
		passwordValida = unaPassword	
	}
	
	@Dependencies("password")	
	def getPasswordOk() {
		password !== null && password.equals(passwordValida)
	}
	
}