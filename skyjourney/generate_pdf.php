<?php
require('vendor/fpdf/fpdf.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $from = $_POST['from'];
    $to = $_POST['to'];
    $departure_date = $_POST['departure_date'];
    $price = $_POST['price'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];

    $passenger_names = $_POST['passenger_name'];
    $passenger_ages = $_POST['passenger_age'];
    $passenger_sexes = $_POST['passenger_sex'];

    $card_number = $_POST['card_number'];
    $expiry_date = $_POST['expiry_date'];
    $cvv = $_POST['cvv'];

    // Generate random transaction ID and current time
    $transaction_id = rand(100000000000, 999999999999); // 12 digits
    $payment_time = date('Y-m-d H:i:s'); // Format YYYY-MM-DD HH:MM:SS

    // Mask card number, expiry, and cvv
    $masked_card = 'XXXX XXXX XXXX ' . substr(str_replace(' ', '', $card_number), -4);
    $masked_expiry = 'XX/XX';
    $masked_cvv = 'XXX';

    class PDF extends FPDF
    {
        function Header()
        {
            $this->Image('assets/skyjourney-logo.png',10,6,30);
            $this->SetFont('Arial','B',18);
            $this->Cell(0,10,'SkyJourney - Flight Ticket',0,1,'C');
            $this->Ln(15);
        }

        function Footer()
        {
            $this->SetY(-35);
            $this->SetFont('Arial','I',10);
            $this->Cell(0,10,'Thank you for booking with SkyJourney!',0,0,'C');
        }
    }

    $pdf = new PDF();
    $pdf->AddPage();
    $pdf->SetFont('Arial','',12);

    // Flight Information
    $pdf->SetFont('Arial','B',14);
    $pdf->Cell(0,10,"Flight Details:",0,1);
    $pdf->Ln(2);
    $pdf->SetFont('Arial','',12);

    $pdf->Cell(0,8,"From: {$from}",0,1);
    $pdf->Cell(0,8,"To: {$to}",0,1);
    $pdf->Cell(0,8,"Departure Date: {$departure_date}",0,1);

    $pdf->Ln(5);

    // Passenger Information Section
    $pdf->SetFont('Arial','B',14);
    $pdf->Cell(0,10,"Passenger(s) Details:",0,1);
    $pdf->Ln(2);
    $pdf->SetFont('Arial','',12);

    foreach ($passenger_names as $index => $name) {
        $pdf->Cell(0,8,"Passenger ".($index+1).":  Name: {$name},  Age: {$passenger_ages[$index]},  Sex: {$passenger_sexes[$index]}",0,1);
        $pdf->Image('assets/fake-qr.png',150,$pdf->GetY()-8,30); // Place QR code to the right
        $pdf->Ln(10);
    }

    $pdf->Ln(5);

    // Contact Information
    $pdf->SetFont('Arial','B',14);
    $pdf->Cell(0,10,"Contact Info:",0,1);
    $pdf->Ln(2);
    $pdf->SetFont('Arial','',12);

    $pdf->Cell(0,8,"Phone: {$phone}",0,1);
    $pdf->Cell(0,8,"Email: {$email}",0,1);

    $pdf->Ln(5);

    // Payment Information
    $pdf->SetFont('Arial','B',14);
    $pdf->Cell(0,10,"Payment Information:",0,1);
    $pdf->Ln(2);
    $pdf->SetFont('Arial','',12);

    $pdf->Cell(0,8,"Card Number: {$masked_card}",0,1);
    $pdf->Cell(0,8,"Expiry Date: {$masked_expiry}",0,1);
    $pdf->Cell(0,8,"CVV: {$masked_cvv}",0,1);
    $pdf->Cell(0,8,"Transaction ID: {$transaction_id}",0,1);
    $pdf->Cell(0,8,"Payment Time: {$payment_time}",0,1);
    $pdf->SetTextColor(0, 153, 0); // Green
    $pdf->Cell(0,10,"Payment Status: SUCCESS",0,1);
    $pdf->SetTextColor(0,0,0); // Reset back to black

    $pdf->Ln(5);

    // Total Price
    $pdf->SetFont('Arial','B',16);
    $pdf->SetTextColor(0, 102, 204); // Blue price
    $pdf->Cell(0,12,"Total Amount: Rs. {$price}",0,1,'C');

    $pdf->Output('D', 'SkyJourney_Ticket.pdf');
}
?>
