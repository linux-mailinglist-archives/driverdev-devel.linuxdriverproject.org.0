Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 426EA86F71F
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Mar 2024 22:07:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6789260AF8;
	Sun,  3 Mar 2024 21:07:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NmULZ71NflO8; Sun,  3 Mar 2024 21:07:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9356560851
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9356560851;
	Sun,  3 Mar 2024 21:07:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 271B91BF33D
 for <devel@linuxdriverproject.org>; Sun,  3 Mar 2024 21:07:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D5C340210
 for <devel@linuxdriverproject.org>; Sun,  3 Mar 2024 21:07:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I7SmKGM3xldu for <devel@linuxdriverproject.org>;
 Sun,  3 Mar 2024 21:07:53 +0000 (UTC)
X-Greylist: delayed 581 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 03 Mar 2024 21:07:51 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9313B400EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9313B400EF
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.21.126.61;
 helo=smtp1.iitb.ac.in; envelope-from=210100011@iitb.ac.in; receiver=<UNKNOWN> 
Received: from smtp1.iitb.ac.in (smtpd6.iitb.ac.in [103.21.126.61])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9313B400EF
 for <devel@driverdev.osuosl.org>; Sun,  3 Mar 2024 21:07:51 +0000 (UTC)
Received: from ldns1.iitb.ac.in (ldns1.iitb.ac.in [10.200.12.1])
 by smtp1.iitb.ac.in (Postfix) with SMTP id 78DB3104D0CC
 for <devel@driverdev.osuosl.org>; Mon,  4 Mar 2024 02:28:05 +0530 (IST)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.iitb.ac.in 78DB3104D0CC
Received: (qmail 10329 invoked by uid 510); 4 Mar 2024 02:28:05 +0530
X-Qmail-Scanner-Diagnostics: from 10.200.1.25 by ldns1 (envelope-from
 <210100011@iitb.ac.in>, uid 501) with qmail-scanner-2.11
 spamassassin: 3.4.1. mhr: 1.0. {clamdscan: 0.101.4/26439} 
 Clear:RC:1(10.200.1.25):SA:0(0.0/7.0):. Processed in 2.173844 secs;
 04 Mar 2024 02:28:05 +0530
X-Spam-Pyzor: Reported 0 times.
X-Envelope-From: 210100011@iitb.ac.in
X-Qmail-Scanner-Mime-Attachments: |
X-Qmail-Scanner-Zip-Files: |
Received: from unknown (HELO ldns1.iitb.ac.in) (10.200.1.25)
 by ldns1.iitb.ac.in with SMTP; 4 Mar 2024 02:28:03 +0530
Received: from wm1.iitb.ac.in (wm1.iitb.ac.in [10.200.17.1])
 by ldns1.iitb.ac.in (Postfix) with ESMTP id 0F460360072;
 Mon,  4 Mar 2024 02:28:03 +0530 (IST)
Received: from webmail-sso.iitb.ac.in (localhost [IPv6:::1])
 by wm1.iitb.ac.in (Postfix) with ESMTP id 0B2DC608E11;
 Mon,  4 Mar 2024 02:28:03 +0530 (IST)
Received: from [10.9.9.42] by webmail.iitb.ac.in
 with HTTP (HTTP/1.1 POST); Mon, 04 Mar 2024 02:28:02 +0530
MIME-Version: 1.0
Date: Mon, 04 Mar 2024 02:28:02 +0530
From: Aman Sharma <210100011@iitb.ac.in>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: pi433: Updated bitrate range from datasheet
Message-ID: <ddbd681a7504ae8b8fd4dc69270e804d@iitb.ac.in>
X-Sender: 210100011@iitb.ac.in
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=iitb.ac.in; s=mail; 
 t=1709499485; bh=cKZF4odXE/it1RO6myqlNO63lhy9YJ56gjTn3CJcxsg=;
 h=Date:From:To:Cc:Subject:From;
 b=iKpm+6L0Pc/00Or8X8OssRsxjQMhwYDrKz9bODytEVcXCnbzyt9G3u0q6xNDhdgW2
 W6LzUUdcHPyOQMck9zdE13H8weaVvST9hM7LbwX0LuMeDfa4Vqqo59Ej4X1ujyTL59
 io9vXgCXQN0aGdHnnIUb3qQ8udXfX27VCEIvzsi4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=iitb.ac.in
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=iitb.ac.in header.i=@iitb.ac.in header.a=rsa-sha256
 header.s=mail header.b=iKpm+6L0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

 From a0528708b209739f0d566401bdd428e215abf366 Mon Sep 17 00:00:00 2001
 From: Aman Sharma <amansharma612002@gmail.com>
Date: Mon, 4 Mar 2024 00:44:06 +0530
Subject: [PATCH] Staging: pi433: Updated bitrate range from datasheet

Updated bitrate range for FSK and OOK modulation from datasheet.

Signed-off-by: Aman Sharma<amansharma6122002@gmail.com>
---
  drivers/staging/pi433/Documentation/pi433.txt | 6 ++++--
  drivers/staging/pi433/TODO                    | 1 -
  2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/pi433/Documentation/pi433.txt 
b/drivers/staging/pi433/Documentation/pi433.txt
index 4a0d34b4ad37..9ce7282ef6f8 100644
--- a/drivers/staging/pi433/Documentation/pi433.txt
+++ b/drivers/staging/pi433/Documentation/pi433.txt
@@ -78,7 +78,8 @@ rf params:
  		Allowed values: 433050000...434790000
  	bit_rate
  		bit rate used for transmission.
-		Allowed values: #####
+		Allowed values (For FSK): 1200...320000
+		Allowed values (For OOK): 1200...32768
  	dev_frequency
  		frequency deviation in case of FSK.
  		Allowed values: 600...500000
@@ -169,7 +170,8 @@ rf params:
  		Allowed values: 433050000...434790000
  	bit_rate
  		bit rate used for transmission.
-		Allowed values: #####
+		Allowed values (For FSK): 1200...320000
+		Allowed values (For OOK): 1200...32768
  	dev_frequency
  		frequency deviation in case of FSK.
  		Allowed values: 600...500000
diff --git a/drivers/staging/pi433/TODO b/drivers/staging/pi433/TODO
index 63a40bfcc67e..61ed3a1578bc 100644
--- a/drivers/staging/pi433/TODO
+++ b/drivers/staging/pi433/TODO
@@ -2,4 +2,3 @@
  * still TODOs, annotated in the code
  * currently the code introduces new IOCTLs. I'm afraid this is a bad 
idea.
    -> Replace this with another interface, hints are welcome!
-* Some missing data (marked with ###) needs to be added in the 
documentation
-- 
2.34.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
