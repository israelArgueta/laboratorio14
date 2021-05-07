using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace laboratorio14
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static List<producto> p = new List<producto>();
        static List<venta> v = new List<venta>();
        static List<Cliente> c = new List<Cliente>();
        static List<ordencs> o = new List<ordencs>();
      

        protected void Page_Load(object sender, EventArgs e)
        {
          if (!IsPostBack)
            {
                if (new FileInfo(@"C:\Users\PACO\source\repos\laboratorio14\laboratorio14\tienda.json").Exists == true)
                {
                    if (new FileInfo(@"C:\Users\PACO\source\repos\laboratorio14\laboratorio14\tienda.json").Length > 0)
                    {
                        string archivo = Server.MapPath("tienda.json");
                        StreamReader jsonStream = File.OpenText(archivo);
                        string json = jsonStream.ReadToEnd();
                        jsonStream.Close();
                        p = JsonConvert.DeserializeObject<List<producto>>(json);
                        GridView1.DataSource = p;
                        GridView1.DataBind();
                    }
                }

                if (new FileInfo(@"C:\Users\PACO\source\repos\laboratorio14\laboratorio14\dan.json").Exists == true)
                {
                    if (new FileInfo(@"C:\Users\PACO\source\repos\laboratorio14\laboratorio14\dan.json").Length > 0)
                    {
                        string arch = Server.MapPath("dan.json");
                        StreamReader jsonStrea = File.OpenText(arch);
                        string jso = jsonStrea.ReadToEnd();
                        jsonStrea.Close();
                        o = JsonConvert.DeserializeObject<List<ordencs>>(jso);
                       GridView2.DataSource = o;
                        GridView2.DataBind();
                    }
                    else if (new FileInfo(@"C:\Users\PACO\source\repos\laboratorio14\laboratorio14\dan.json").Length < 0)
                    {
                        Response.Write("<script>alert('El carrito se encuentra vaío')</script>");
                    }
                }
            }
        }
        private void guardarjson()
        {

        }
        void agregarJson()
        {
            String j = JsonConvert.SerializeObject(p);
            String archivo = Server.MapPath("tienda.json");
            System.IO.File.WriteAllText(archivo, j);
        }
        void leerJson()
        {
            string arch = Server.MapPath("Productos.json");
            StreamReader jsonStream = File.OpenText(arch);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();
            p = JsonConvert.DeserializeObject<List<producto>>(json);
            GridView1.DataSource = p;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            producto pds = new producto();
            pds.Codigo = TextBox1.Text;
            pds.Descripcion = TextBox2.Text;
            pds.Precio = Convert.ToInt32(TextBox4.Text);
            pds.Cantidad = Convert.ToInt32(TextBox3.Text);
            p.Add(pds);
            
            p.Add(pds);
            agregarJson();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            leerJson();


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string arch = Server.MapPath("tienda.json");
            StreamReader jsonStream = File.OpenText(arch);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();
            p = JsonConvert.DeserializeObject<List<producto>>(json);
            int seleccion = GridView1.SelectedIndex;
            TextBox1.Text = p[seleccion].Codigo;
            TextBox2.Text = p[seleccion].Descripcion;
            TextBox3.Text = p[seleccion].Cantidad.ToString();
            TextBox4.Text = p[seleccion].Precio.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string arch = Server.MapPath("tienda.json");
            StreamReader jsonstream = File.OpenText(arch);
            string json = jsonstream.ReadToEnd();
            jsonstream.Close();
            p = JsonConvert.DeserializeObject<List<producto>>(json);
            GridView1.DataSource = p; 
            GridView1.DataBind();
            p = JsonConvert.DeserializeObject<List<producto>>(json);
            int seleccion = GridView1.SelectedIndex;
            TextBox1.Text = p[seleccion].Codigo;
            TextBox2.Text = p[seleccion].Descripcion;
            TextBox3.Text = p[seleccion].Cantidad.ToString();
            TextBox4.Text = p[seleccion].Precio.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string arch = Server.MapPath("TiendaOn.json");
            StreamReader jsonstream = File.OpenText(arch);
            string json = jsonstream.ReadToEnd();
            jsonstream.Close();

            int seleccion = GridView1.SelectedIndex;
            p[seleccion].Codigo = TextBox1.Text;
            p[seleccion].Descripcion = TextBox2.Text;
            p[seleccion].Cantidad = Convert.ToInt32(TextBox3.Text);
            p[seleccion].Precio = Convert.ToDouble(TextBox4.Text);

            agregarJson();

            GridView1.DataSource = p;
            GridView1.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }
    }
}