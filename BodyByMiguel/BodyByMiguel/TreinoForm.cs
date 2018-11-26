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
				Button myButton = new Button();
				myButton.Tag = part.Id;
				myButton.Text = part.Name;
				myButton.BackColor = Color.FromArgb(236, 219, 83);
				myButton.Visible = true;
				myButton.Size = new Size(200, 100);
				myButton.Font = new Font(myButton.Font.FontFamily, newSize);
				flowLayoutPanel1.Controls.Add(myButton);
				//CheckBox xis = new CheckBox();
				//xis.Text = part.ToString();
				//xis.AutoSize = true;
				//xis.Visible = true;
				//flowLayoutPanel1.Controls.Add(xis);
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
			List<int> myList = new List<int>{ };
			flowLayoutPanel1.Controls.OfType<Control>().ToList().ForEach(
				xis =>
				{
					//if (xis is Button buttonTest && buttonTest.Click)
					//{
					//	myList.Add(Int32.Parse(buttonTest.Tag.ToString()));
					//}
				}
				);
			
		}

		private void TreinoForm_Load(object sender, EventArgs e)
		{

		}
	}
}
