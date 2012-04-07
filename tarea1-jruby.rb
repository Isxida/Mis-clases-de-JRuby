#Tarea1 jruby
#Mi primera clase omg que emocion
class Tarea1 < Java::javax.swing.JFrame
		def initialize(title)
			super(title)
		titulo1 = Java::javax.swing.JLabel.new('Una simple application : ')
		lblloginid = Java::javax.swing.JLabel.new('Login ID : ')
		txtloginid = Java::javax.swing.JTextField.new('')
		lblpassword = Java::javax.swing.JLabel.new('Password : ')
		txtpassword = Java::javax.swing.JPasswordField.new('')
		lblMessage = Java::javax.swing.JLabel.new('Message : ')
		txtMessage = Java::javax.swing.JTextField.new('')
		enviarbtn = Java::java.awt.Button.new('Enviar') #error aqui?
		limpiarbtn = Java::java.awt.Button.new('Limpiar')
		panel = Java::java.awt.Panel.new
		panel.setLayout nil
		enviarbtn.add_action_listener Enviarclick.new
		titulo1.setBounds 20,20,220,30
		lblloginid.setBounds 20,50,120,30
		txtloginid.setBounds 170,50,120,30
		lblpassword.setBounds 20,90,120,30
		txtpassword.setBounds 170,100,120,30
		lblMessage.setBounds 20,150,120,30
		txtMessage.setBounds 170,150,120,30
		enviarbtn.setBounds 60,200,60,40
		limpiarbtn.setBounds 150,200,60,40
		txtMessage.disable()
		panel.add(titulo1)
		panel.add(lblloginid)
		panel.add(txtloginid)
		panel.add(lblpassword)
		panel.add(txtpassword)
		panel.add(lblMessage)
		panel.add(txtMessage)
		panel.add(enviarbtn)
		panel.add(limpiarbtn)
		add(panel, Java::java.awt.BorderLayout::CENTER)
		set_size(400,400)
		set_visible(true)
	end
end

class Enviarclick
		#Metodo de envio
		include Java::Java.awt.event.ActionListener

		def actionPerformed(e)
			txtMessage= "Registro completado"
		end
	end

mt=Tarea1.new('Assignment 1')