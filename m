Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B177668D93C
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Feb 2023 14:24:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 791FC414EA;
	Tue,  7 Feb 2023 13:24:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 791FC414EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UXuduFp253DD; Tue,  7 Feb 2023 13:24:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB99D41523;
	Tue,  7 Feb 2023 13:24:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB99D41523
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D482E1BF376;
 Tue,  7 Feb 2023 13:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AEAA4405FD;
 Tue,  7 Feb 2023 13:24:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEAA4405FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1cANQhVPuPSr; Tue,  7 Feb 2023 13:24:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B11EA40516
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from e.armgs.team (e.armgs.team [45.84.130.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B11EA40516;
 Tue,  7 Feb 2023 13:24:27 +0000 (UTC)
Received: from [10.14.68.0] (port=23784 helo=e.armgs.team)
 by relay1.qdit with esmtp (envelope-from <timothy@inbox.lt>)
 id 1pPNxN-000XgA-8H; Tue, 07 Feb 2023 16:24:21 +0300
Received: from [185.246.220.87] (helo=User)
 by tarm-mail-b01.i with smtp (Exim 4.96)
 (envelope-from <timothy@inbox.lt>) id 1pPNxM-004I9f-1x;
 Tue, 07 Feb 2023 16:24:21 +0300
From: "Dr. Scott Williams"<timothy@inbox.lt>
Date: Tue, 7 Feb 2023 05:24:20 -0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <E1pPNxM-004I9f-1x@tarm-mail-b01.i>
X-KLMS-Rule-ID: 1
X-KLMS-Message-Action: skipped, AntiSpam
X-KLMS-AntiSpam-Lua-Profiles: 175333 [Feb 07 2023]
X-KLMS-AntiSpam-Version: 5.9.59.0
X-KLMS-AntiSpam-Envelope-From: timothy@inbox.lt
X-KLMS-AntiSpam-Rate: 95
X-KLMS-AntiSpam-Status: spam
X-KLMS-AntiSpam-Method: headers
X-KLMS-AntiSpam-Info: LuaCore: 502 502
 69dee8ef46717dd3cb3eeb129cb7cc8dab9e30f6, {rep_avail}, {reputation ip: black},
 {black address: 185.246.220.87}, {reputation received: black},
 {black received address: 185.246.220.87}, {Tracking_phishing_log_reg_95_100},
 {Prob_reply_not_match_from}, {Prob_to_header_missing},
 {Prob_Advanced_Mass_Sender_X_Mailer}, {Prob_Reply_to_without_To},
 {Prob_From_no_space_freehosting}, ApMailHostAddress: 185.246.220.87
X-MS-Exchange-Organization-SCL: 9
X-KLMS-AntiSpam-Interceptor-Info: scan successful
X-KLMS-AntiPhishing: Clean, bases: 2023/02/07 12:40:00
X-KLMS-AntiVirus: Kaspersky Security for Linux Mail Server, version 8.0.3.30,
 bases: 2023/02/07 09:23:00 #20834447
X-KLMS-AntiVirus-Status: Clean, skipped
Subject: [Spam]Hello the beneficiary, 
X-Mailman-Original-Authentication-Results: relay1.qdit; auth=pass
 smtp.auth=timothy@inbox.lt smtp.mailfrom=timothy@inbox.lt;
 iprev=pass policy.iprev=10.14.68.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Reply-To: drscottwilliamsuk002@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The United Nations, Office UK

3 Whitehall Court, London, Sw1a 2el United Kingdom

Tel: +4408715036515 +4405603053391  
 

Hello the beneficiary,  


This is to notify you that your overdue inheritance claim/contract payment which is with a commercial bank here in Europe which we monitor for processing and approval is ready to be released through the commercial bank. Some of these funds are from African Countries which you were trying for years to claim without success.

 

It is pertinent to note that an issue of this magnitude should have commenced with a formal meeting in London to clear doubts as many frauds are all over the internet, but due to the time factor and the urgency this matter requires, please bear with me for making the initial contact through email.  


Meanwhile, a man with British Passport Number 3028882234 came to our office a few days ago with a letter of authority, claiming to be your true representative in this matter.  


Here is his information below:  

 
Name: Mr. James Jackson

Bank Name: Citi Bank

Address: Arizona, U. S. A

Account number: 6503809008.  

 

Please, do reconfirm to this office, as a matter of urgency, whether this man is from you truly, so that this office will not be held responsible for paying this approved fund of { $3.5M} into the nominated Citi Bank Account. If this man is not your true representative, you are requested to fill and return this information for verification purposes, so that your approved claim valued S$3.5M only will be re-approved on your name as the beneficiary of the fund. This fund was as a result of an inheritance/contract fund on your behalf as the beneficiary of it.  

 

1. Your name--------------------------------

 

2. Your address -----------------------------

 

3. Your telephone-----------------------------

 

4. Age ----------------------------------------

 

5. Sex-------------------------------- ---------

 

6. Your occupation ------------------------------

 

7. Your identification----------------------------

 

8. Your bank information-----------------------------

 

As soon as we receive the above data, we shall commence with all necessary procedures in order to re-approve this fund on your name as the beneficiary through the office of the Director International Remittance/Foreign Operations of the commercial bank here in Europe who handles all foreign inheritance, contract claims etc. We shall proceed with the payment details to the said Mr. Jackson, if we do not hear from you within the next few working days from today.  

 

You are advised also to stop any communications with anybody until you receive your fund to avoid further distractions. Your advice to contact me with the email below (EMAIL: drscottwilliamsuk002@gmail.com)  

 

Best Regards.  

 

Dr. Scott Williams.

Executive Officer (Foreign Paying Dept

(United Nations Office London)Hello the beneficiary, 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
