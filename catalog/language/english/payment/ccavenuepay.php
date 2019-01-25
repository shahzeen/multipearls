<?php
/*
Payment Name      : CCAvenue MCPG
Description       : Payment with CCAvenue MCPG.
Module Version    : 2.1.0.2
Author		  : CCAvenue
*/
// Text
$_['heading_title'] = 'Thank you for shopping with %s .... ';
$_['text_title'] = 'Internet Banking / Credit / Debit / Mobile Wallet';
$_['text_payment_wait'] = '<b><span style="color: #FF0000">Please wait...</span></b><br />If you are not automatically re-directed in 20 seconds, please click <a href="%s">here</a>.';
$_['text_reason'] = 'REASON';
$_['text_attn_email'] = 'ATTN: CCAvenue MCPG Order %s needs manual verification';
$_['text_tax'] = 'Tax';
$_['text_total'] = 'Shipping, Handling, Discounts & Taxes';
$_['success_comment'] = '<b><span style="color: #000000">Thank you for shopping with us. Your transaction is successful. We will be shipping your order to you soon.</span></b><br />';
$_['pending_comment'] = '<b><span style="color: #FF0000">CCAvenue MCPG payment order cancelled and the transaction has been Aborted </span></b><br />';
$_['failed_comment'] = '<b><span style="color: #FF0000">Security Error. Illegal access detected</span></b><br />';
$_['declined_comment'] = '<b><span style="color: #FF0000">CCAvenue MCPG payment order cancelled and the transaction has been Declined.</span></b><br />';
$_['tampared_data_comment'] = '<b><span style="color: #FF0000">CCAvenue MCPG payment order transaction has been Declined Due to Security Error. Illegal access detected !!!.</span></b><br />';
$_['payment_confirmation_mail_subject'] = 'CCAvenue MCPG Payment Status';
$_['payment_confirmation_mail_body'] = 'Dear %s,<br /><br />  
                                        We have received your order, Thanks for your CCAvenue payment.The transaction was successful.Your payment is authorized.<br /><br />
                                        The details of the order are below: <br /><br />
                                        <table style="border-collapse:collapse">
                                        <tr style="border-bottom: 1px solid #cacaca;">
                                                <td style="padding:10px 10px 10px;border-right:1px solid #cacaca;">Order ID</td>
                                                <td style="padding:10px 10px 10px;">#%s</td> 
                                        </tr>
                                        <tr style="border-bottom: 1px solid #cacaca;">
                                                <td style="padding:10px 10px 10px;border-right:1px solid #cacaca;">Date Ordered</td>
                                                <td style="padding:10px 10px 10px;">%s</td> 
                                        </tr>
                                        <tr style="border-bottom: 1px solid #cacaca;">
                                                <td style="padding:10px 10px 10px;border-right:1px solid #cacaca;vertical-align:top;">Payment Method</td>
                                                <td style="padding:10px 10px 10px;">%s</td> 
                                        </tr>
                                        <tr style="border-bottom: 1px solid #cacaca;">
                                                <td style="padding:10px 10px 10px;border-right:1px solid #cacaca;">Shipping Method</td>
                                                <td style="padding:10px 10px 10px;">%s</td> 
                                        </tr>
                                        <tr style="border-bottom: 1px solid #cacaca;">
                                                <td style="padding:10px 10px 10px;border-right:1px solid #cacaca;">Order Total</td>
                                                <td style="padding:10px 10px 10px;">%s</td> 
                                        </tr>
                                        </table><br /><br />';
?>
