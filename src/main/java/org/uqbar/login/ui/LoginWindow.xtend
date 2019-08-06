package org.uqbar.login.ui

import java.awt.Color

import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.PasswordField
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.ErrorsPanel
import org.uqbar.arena.windows.MainWindow
import org.uqbar.login.domain.Login
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.bindings.ValueTransformer

/**
 * Ejemplo de Login
 */
class LoginWindow extends MainWindow<Login> {
	new() {
		super(new Login("arena"))
	}

	override createContents(Panel mainPanel) {
		this.title = "Ingreso al sistema"
		mainPanel.layout = new VerticalLayout
		
		new ErrorsPanel(mainPanel, "Ingrese usuario y contraseña")	
		new Label(mainPanel).text = "Usuario"
		new TextBox(mainPanel).value <=> "usuario"
		new Label(mainPanel).text = "Password (es arena, guiño guiño)"
		new PasswordField(mainPanel).value <=> "password"
		new Label(mainPanel) => [
			(background <=> "passwordOk").transformer = new PasswordOkTransformer 
			value <=> "passwordOk"	
		]
	}

	def static main(String[] args) {
		new LoginWindow().startApplication
	}

}

class PasswordOkTransformer implements ValueTransformer<Boolean, Color> {
	
	override getModelType() { Boolean }
	
	override getViewType() { Color }
	
	override modelToView(Boolean valueFromModel) {
		if (valueFromModel) Color.GREEN else Color.ORANGE
	}
	
	override viewToModel(Color valueFromView) { null }
	
}
