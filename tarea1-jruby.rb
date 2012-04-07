#Tarea1 jruby
#Mi primera clase omg que emocion
class Tarea1 < Java::javax.swing.JFrame
		def initialize(title)
			super(title)
		titulo1 = Java::javax.swing.JLabel.new('Una simple application')
		lblloginid = Java::javax.swing.JLabel.new('Login ID : ')
		txtloginid = Java::javax.swing.JTextField.new('')
		lblpassword = Java::javax.swing.JLabel.new('Password : ')
		txtpassword = Java::javax.swing.JPasswordField.new('')
		lblMessage = Java::javax.swing.JLabel.new('Message : ')
		txtMessage = Java::javax.swing.JTextField.new('')
		Enviarbtn = Java::java.awt.Button.new('Enviar') #error aqui?
		Limpiarbtn = Java::java.awt.Button.new('Limpiar')
		panel = Java::java.awt.Panel.new
		panel.add(titulo1)
		panel.add(lblloginid)
		panel.add(txtloginid)
		panel.add(lblpassword)
		panel.add(txtpassword)
		panel.add(lblMessage)
		panel.add(txtMessage)
		panel.add(Enviarbtn)
		panel.add(Limpiarbtn)
		set_size (500,500)
		set_visible(true)
		Enviarbtn.add_action_listener Enviarclick.new
	end
end

class Enviarclick
		#Metodo de envio
		include Java::Java.awt.event.ActionListener

		def actionPerformed(e)
			txtMessage.set "Registro completado"
		end
	end

mt=Tarea1.new('Assignment 1')