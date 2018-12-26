using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BodyByMiguel
{
	public partial class TreinoForm : Form
	{
		public TreinoForm()
		{
			InitializeComponent();
		}

		private void flowLayoutPanel1_Paint(object sender, PaintEventArgs e)
		{

		}

		public void setup()
		{
			ApiDB api = new ApiDB();
			int newSize = 15;
			api.ReturnBodyParts().ForEach(part =>
			{
				//Button myButton = new Button();
				//myButton.Tag = part.Id;
				//myButton.Text = part.Name;
				//myButton.BackColor = Color.FromArgb(236, 219, 83);
				//myButton.Visible = true;
				//myButton.Size = new Size(200, 100);
				//myButton.Font = new Font(myButton.Font.FontFamily, newSize);


				CheckBox box = new CheckBox();
				box.Tag = part.Id;
				box.Text = part.Name;
				box.BackColor = Color.FromArgb(236, 219, 83);
				box.Visible = true;
				box.Size = new Size(200, 100);
				//box.CheckAlign = ContentAlignment.MiddleCenter;
				//box.TextAlign = ContentAlignment.MiddleRight;
				box.Font = new Font(box.Font.FontFamily, newSize);

				//box.AutoSize = true;
				//box.Location = new Point(10, i * 50); //vertical
				//box.Location = new Point(i * 50, 10); //horizontal
				//this.Controls.Add(box);

				flowLayoutPanel1.Controls.Add(box);

			});

			/*int i = 0;
			while (i < 5)
			{
				CheckBox xis = new CheckBox();
				xis.Text = "ola";
				xis.AutoSize = true;
				xis.Size = new Size(100, 100);
				xis.Visible = true;
				flowLayoutPanel1.Controls.Add(xis);
				i++;
			}*/
		}

		private void metroButton2_Click(object sender, EventArgs e)
		{
			List<int> idList = new List<int>();

			foreach (Control control in flowLayoutPanel1.Controls)
			{
				if (control is CheckBox mycheck && mycheck.Checked == true)
					idList.Add(Convert.ToInt32(mycheck.Tag));
			}

			if (idList.Count > 0)
			{
				this.Hide();
				ExerciciosForm form = new ExerciciosForm();
				form.ShowDialog();
			}
		}

		private void TreinoForm_Load(object sender, EventArgs e)
		{

		}
	}
}
