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
	public partial class ExerciciosForm : Form
	{
		private List<String> idList;
		public ExerciciosForm(List<String> idList)
		{
			InitializeComponent();
			this.idList = idList;
		}

		private void ExerciciosForm_Load(object sender, EventArgs e)
		{

		}
	}
}

