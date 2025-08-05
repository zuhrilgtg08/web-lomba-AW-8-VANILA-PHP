<?php
include 'koneksi.php';
$kon = new Koneksi();
require_once 'vendor/PHPExcel3/PHPExcel.php';


// Panggil class PHPExcel nya
$excel = new PHPExcel();

// Settingan awal fil excel
$excel->getProperties()->setCreator('Automation Week')
    ->setLastModifiedBy('Automation Week')
    ->setTitle("fileplc")
    ->setSubject("plc")
    ->setDescription("Data File PLC")
    ->setKeywords("data PLC");
// styler
$style_col = array(
    'font' => array('bold' => true), // Set font nya jadi bold
    'alignment' => array(
        'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER, // Set text jadi ditengah secara horizontal (center)
        'vertical' => PHPExcel_Style_Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
    ),
    'borders' => array(
        'top' => array('style'  => PHPExcel_Style_Border::BORDER_THIN), // Set border top dengan garis tipis
        'right' => array('style'  => PHPExcel_Style_Border::BORDER_THIN),  // Set border right dengan garis tipis
        'bottom' => array('style'  => PHPExcel_Style_Border::BORDER_THIN), // Set border bottom dengan garis tipis
        'left' => array('style'  => PHPExcel_Style_Border::BORDER_THIN) // Set border left dengan garis tipis
    ),
    'fill' => array(
        'type' => PHPExcel_Style_Fill::FILL_SOLID,
        'color' => array('rgb' => 'ffff00')
    )
);

$style_row = array(
    'alignment' => array(
        'vertical' => PHPExcel_Style_Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
    ),

);

// end styler

// header
$excel->setActiveSheetIndex(0)->setCellValue('A1', "NO");
$excel->setActiveSheetIndex(0)->setCellValue('B1', "EMAIL");
$excel->setActiveSheetIndex(0)->setCellValue('C1', "NAMA TIM");
$excel->setActiveSheetIndex(0)->setCellValue('D1', "NAMA KETUA");
$excel->setActiveSheetIndex(0)->setCellValue('E1', "ASAL SEKOLAH");
$excel->setActiveSheetIndex(0)->setCellValue('F1', "WAKTU");
$excel->setActiveSheetIndex(0)->setCellValue('G1', "NAMA FILE");



$excel->getActiveSheet()->getStyle('A1:G1')->applyFromArray($style_row);

// Set height baris ke 1, 2 dan 3
$excel->getActiveSheet()->getRowDimension('1')->setRowHeight(20);
$excel->getActiveSheet()->getRowDimension('2')->setRowHeight(20);
$excel->getActiveSheet()->getRowDimension('3')->setRowHeight(20);
$excel->getActiveSheet()->getRowDimension('4')->setRowHeight(20);
$excel->getActiveSheet()->getRowDimension('5')->setRowHeight(20);
$excel->getActiveSheet()->getRowDimension('6')->setRowHeight(20);
$excel->getActiveSheet()->getRowDimension('7')->setRowHeight(20);

// end header

// body
// Buat query untuk menampilkan semua data
$sql = $kon->kueri("SELECT * FROM upload_plc");

$no = 1;
$numrow = 2;
foreach ($sql as $m) {

    $excel->setActiveSheetIndex(0)->setCellValue('A' . $numrow, $no);
    $excel->setActiveSheetIndex(0)->setCellValue('B' . $numrow, $m['email']);
    $excel->setActiveSheetIndex(0)->setCellValue('C' . $numrow, $m['nama_tim']);
    $excel->setActiveSheetIndex(0)->setCellValue('D' . $numrow, $m['nama_ketua']);
    $excel->setActiveSheetIndex(0)->setCellValue('E' . $numrow, $m['sekolah']);
    $excel->setActiveSheetIndex(0)->setCellValue('F' . $numrow, $m['waktu']);
    $fileString = $m['file'];

    // Menghapus "fileplc/" dari string
    $fileString = str_replace("fileplc/", "", $fileString);

    // Menampilkan hasil
    $excel->setActiveSheetIndex(0)->setCellValue('G' . $numrow, $fileString);


    // Apply style row yang telah kita buat tadi ke masing-masing baris (isi tabel)
    $excel->getActiveSheet()->getStyle('A' . $numrow)->applyFromArray($style_row);
    $excel->getActiveSheet()->getStyle('B' . $numrow)->applyFromArray($style_row);
    $excel->getActiveSheet()->getStyle('C' . $numrow)->applyFromArray($style_row);
    $excel->getActiveSheet()->getStyle('D' . $numrow)->applyFromArray($style_row);
    $excel->getActiveSheet()->getStyle('E' . $numrow)->applyFromArray($style_row);
    $excel->getActiveSheet()->getStyle('F' . $numrow)->applyFromArray($style_row);
    $excel->getActiveSheet()->getStyle('G' . $numrow)->applyFromArray($style_row);


    $no++;
    $numrow++;
}

// Set width kolom
$excel->getActiveSheet()->getColumnDimension('A')->setWidth(5); // Set width kolom no A
$excel->getActiveSheet()->getColumnDimension('B')->setWidth(15); // Set width kolom sub B
$excel->getActiveSheet()->getColumnDimension('C')->setWidth(20); // Set width kolom sub C
$excel->getActiveSheet()->getColumnDimension('D')->setWidth(25); // Set width kolom category D
$excel->getActiveSheet()->getColumnDimension('E')->setWidth(25); // Set width kolom category E
$excel->getActiveSheet()->getColumnDimension('F')->setWidth(25); // Set width kolom category F
$excel->getActiveSheet()->getColumnDimension('G')->setWidth(25); // Set width kolom category G

// end body



// Set judul file excel page setup
$excel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_LANDSCAPE);
$excel->getActiveSheet(0)->setTitle("fileplc");
$excel->setActiveSheetIndex(0);
// end judul

// Proses file excel
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment; filename="fileplc.xlsx"'); // Set nama file excel nya
header('Cache-Control: max-age=0');
// end proses file excel

$write = PHPExcel_IOFactory::createWriter($excel, 'Excel2007');
$write->save('php://output');
