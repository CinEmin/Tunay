using System;
using System.Windows;
using Excel = Microsoft.Office.Interop.Excel;

namespace TunayDeneme
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private string filepath = @"\\adserver\FABRIKA\Emre\";
        private string filename = @"Veritabanı.xlsx";
        Excel.Application xlApp;
        Excel.Workbook xlWorkbook;
        Excel._Worksheet xlWorksheet;
        private Excel.Range Range;
        public string CellValue { get; set; }

        public MainWindow()
        {

            OpenFile(filepath+filename,1);
            Range = GetRange(xlWorksheet);
            CellValue = ShowTextAtCell(Range, 1, 1);
            InitializeComponent();
            txtBlock1.Text = CellValue;
            txtBoxRow.Text = Range.Rows.Count.ToString();
            txtBoxCol.Text = Range.Columns.Count.ToString();
        }

        public void OpenFile(string fullpath, int sheetnum)
        {
            xlApp = new Excel.Application();
            xlWorkbook = xlApp.Workbooks.Open(fullpath, Type.Missing , false);
            xlWorksheet = xlWorkbook.Sheets[sheetnum];

        }

        public Excel.Range GetRange(Excel._Worksheet worksheet)
        {
            return worksheet.UsedRange;

        }

        public string ShowTextAtCell(Excel.Range xlRange, int row, int col)
        {
            return xlRange.Cells[row, col].Value2.ToString();
        }

        public void WriteCell(Excel.Range Range, int row, int col, string value)
        {
            Range.Cells[row,col].Value2 = value;
        }

        public void WriteCell(Excel.Range Range, int row, int col,int value)
        {
            Range.Cells[row, col].Value2 = value;
        }

        public void WriteCell(Excel.Range Range, int row, int col,double value)
        {
            Range.Cells[row, col].Value2 = value;
        }

        public void WriteCell(Excel.Range Range, int row, int col,decimal value)
        {
            Range.Cells[row, col].Value2 = value;
        }

        private void btnSendText1_Click(object sender, RoutedEventArgs e)
        {
            string textToBeSent = txtBox1.Text;
            WriteCell(Range,1,1, textToBeSent);
            xlWorkbook.Save();
            xlWorkbook.Close();
            xlApp.Quit();
            OpenFile(filepath + filename, 1);
            Range = GetRange(xlWorksheet);
            CellValue = ShowTextAtCell(Range, 1, 1);
            txtBlock1.Text = CellValue;

        }
    }
}