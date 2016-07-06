package org.uqbar.login.domain

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class Login {
	String usuario
	String password
	boolean passwordOk
	String passwordValida
	String aQueAposto
	
	new(String unaPassword) {
		passwordValida = unaPassword	
	}
	
	def void setPassword(String unaPassword) {
		password = unaPassword
		passwordOk = unaPassword == passwordValida
	}
	
}