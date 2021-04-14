import javax.swing.*;
import java.awt.*;

public interface remark_Interface
{
    public JTextField patron_text = new JTextField(20); 
    public JTextField name_text = new JTextField(20);
    public JTextField passport_text = new JTextField(20);
    public JTextField expiry_date_text = new JTextField(20);
    public JTextField reg_by_text = new JTextField(20);
    public JTextField reg_date_text = new JTextField(20);
    public JLabel patron = new JLabel("Администратор");
    public JLabel patron_no = new JLabel("PNo");
    public JLabel name = new JLabel("Имя");
    public JLabel salute = new JLabel("Адрес");
    public JLabel passport = new JLabel("IC/Passport");
    public JLabel group = new JLabel("Тип");
    public JLabel status = new JLabel("Статус");
    public JLabel expiry_date = new JLabel("Date");
    public JLabel reg_by = new JLabel("Зарегистрирован в ");
    public JLabel reg_date = new JLabel("Дата регистрации");
    public String group_str[] = {"   Пользователь   ","   Оператор   "};
    public String status_str[] = {" Включен ", "Отключен"};
    public String salute_str[] = {"   М   ", "   Ж   "};
    public JComboBox group_combo = new JComboBox(group_str);
    public JComboBox status_combo = new JComboBox(status_str);
    public JComboBox salute_combo = new JComboBox(salute_str);
    public JPanel main_panel = new JPanel();
}