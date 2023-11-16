using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Web.UI.WebControls;

namespace Desempeno2
{
    public partial class gestionDeArchivos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGrilla();
        }

        public void cargarGrilla()
        {
            string path = $"{Server.MapPath(".")}/files";
            if (Directory.Exists(path))
            {
                string[] files = Directory.GetFiles(path);
                List<archivo> fileList = new List<archivo>();
                foreach (string file in files)
                {
                    var fileNew = new archivo(Path.GetFileName(file), file);
                    fileList.Add(fileNew);
                }
                GridView1.DataSource = fileList;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = $"{Server.MapPath(".")}/files";
            string result = string.Empty;

            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);


            }

            foreach (HttpPostedFile archivo in FileUpload1.PostedFiles)
            {
                FileUpload1.SaveAs($"{path}/{archivo.FileName}");
                if (archivo.ContentLength > 100)
                {
                    result = $"El archivo {archivo.FileName} supera los 100 bytes";
                }
                else
                {
                    if (File.Exists($"{path}/{archivo.FileName}"))
                    {
                        result += $"El archivo {archivo.FileName} ya existe";
                    }
                    else
                    {
                        FileUpload1.SaveAs($"{path}/{archivo.FileName}");
                    }

                }

            }
            Label1.Text = result;
            cargarGrilla();
        }

        protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Descargar")
            {
                GridViewRow registro = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
                string filePath = registro.Cells[2].Text;

                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
                Response.TransmitFile(filePath);
                Response.End();
            }
        }
    }
}
