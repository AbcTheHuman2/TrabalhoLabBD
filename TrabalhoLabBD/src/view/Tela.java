package view;

import java.awt.EventQueue;
import java.sql.SQLException;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import controller.EscolaController;
import persistence.NotaDAO;

import javax.swing.JLabel;
import javax.swing.JComboBox;
import javax.swing.JTextField;
import javax.swing.JButton;

public class Tela extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField tf_Nota;
	private String[] escolas = new String[14];
	private String[] quesitos = new String[9];
	private JComboBox<String> comboBoxEscola;
	private JComboBox<String> comboBoxQuesito;
	private JComboBox<String> comboBoxJurado = new JComboBox<String>();
	private EscolaController controller;
	private NotaDAO dao = new NotaDAO();
	
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Tela frame = new Tela();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	public Tela() {
		setTitle("Apuração de Escolas de Samba");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 555, 390);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblEscola = new JLabel("Escola:");
		lblEscola.setBounds(70, 82, 89, 14);
		contentPane.add(lblEscola);
		
		JLabel lblJurado = new JLabel("Jurado:");
		lblJurado.setBounds(70, 121, 89, 14);
		contentPane.add(lblJurado);
		
		JLabel lblQuesito = new JLabel("Quesito:");
		lblQuesito.setBounds(70, 167, 121, 14);
		contentPane.add(lblQuesito);
		
		try {
			escolas = dao.carregarEscolas();
			quesitos = dao.carregarQuesitos();
			dao.carregarJurados(comboBoxJurado, 0);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		comboBoxEscola = new JComboBox<String>(escolas);
		comboBoxEscola.setBounds(122, 79, 262, 20);
		contentPane.add(comboBoxEscola);
		
		comboBoxJurado.setBounds(122, 118, 262, 20);
		contentPane.add(comboBoxJurado);
		
		comboBoxQuesito = new JComboBox<String>(quesitos);
		comboBoxQuesito.setBounds(122, 164, 262, 20);
		contentPane.add(comboBoxQuesito);
		
		JLabel lblNota = new JLabel("Nota:");
		lblNota.setBounds(70, 244, 89, 14);
		contentPane.add(lblNota);
		
		tf_Nota = new JTextField();
		tf_Nota.setBounds(105, 241, 86, 20);
		contentPane.add(tf_Nota);
		tf_Nota.setColumns(10);
		
		JButton btnInserir = new JButton("Inserir");
		btnInserir.setBounds(228, 240, 89, 23);
		contentPane.add(btnInserir);
		
		JButton btnVerQuesito = new JButton("Ver Quesito");
		btnVerQuesito.setBounds(88, 292, 130, 23);
		contentPane.add(btnVerQuesito);
		
		JButton btnVerTotal = new JButton("Ver Total");
		btnVerTotal.setBounds(228, 292, 130, 23);
		contentPane.add(btnVerTotal);
		
		controller = new EscolaController(comboBoxEscola, comboBoxQuesito, comboBoxJurado, tf_Nota);
		
		comboBoxQuesito.addActionListener(controller);
		btnInserir.addActionListener(controller);
		btnVerQuesito.addActionListener(controller);
		btnVerTotal.addActionListener(controller);
	}
}
