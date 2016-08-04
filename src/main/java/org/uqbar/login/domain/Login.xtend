package org.uqbar.login.domain

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Dependencies
import org.uqbar.commons.utils.Observable

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
		password?.equals(passwordValida)
	}	
}