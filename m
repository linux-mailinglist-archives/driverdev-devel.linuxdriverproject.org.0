Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A9C3849A
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 08:51:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 756D785D68;
	Fri,  7 Jun 2019 06:51:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jHZ5loPAdtwj; Fri,  7 Jun 2019 06:51:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0417A844A5;
	Fri,  7 Jun 2019 06:51:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 092331BF419
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 06:50:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 03E6886905
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 06:50:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UCpSFCWU6sqE for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 06:50:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp1.iitb.ac.in (smtp1.iitb.ac.in [103.21.127.13])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A80FD868F9
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 06:50:54 +0000 (UTC)
Received: from ldns2.iitb.ac.in (ldns2.iitb.ac.in [10.200.12.2])
 by smtp1.iitb.ac.in (Postfix) with SMTP id ADC8A105BF2A
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 12:01:43 +0530 (IST)
Received: (qmail 29928 invoked by uid 510); 7 Jun 2019 12:01:34 +0530
X-Qmail-Scanner-Diagnostics: from 10.200.1.25 by ldns2 (envelope-from
 <rws@aero.iitb.ac.in>, uid 501) with qmail-scanner-2.11
 spamassassin: 3.4.1. mhr: 1.0. {clamdscan: 0.100.0/25472} 
 Clear:RC:1(10.200.1.25):SA:0(1.5/7.0):. Processed in 3.271093 secs;
 07 Jun 2019 12:01:34 +0530
X-Spam-Pyzor: Reported 1 times.
X-Envelope-From: rws@aero.iitb.ac.in
X-Qmail-Scanner-Mime-Attachments: |
X-Qmail-Scanner-Zip-Files: |
Received: from unknown (HELO ldns2.iitb.ac.in) (10.200.1.25)
 by ldns2.iitb.ac.in with SMTP; 7 Jun 2019 12:01:30 +0530
Received: from vayu.aero.iitb.ac.in (vayu.aero.iitb.ac.in [10.101.1.1])
 by ldns2.iitb.ac.in (Postfix) with ESMTP id 217AF3418E8;
 Fri,  7 Jun 2019 12:01:17 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
 by vayu.aero.iitb.ac.in (Postfix) with ESMTP id A628E8902E54F;
 Fri,  7 Jun 2019 12:01:16 +0530 (IST)
Received: from vayu.aero.iitb.ac.in ([127.0.0.1])
 by localhost (vayu.aero.iitb.ac.in [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id FrMFcNjrnfJP; Fri,  7 Jun 2019 12:01:16 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
 by vayu.aero.iitb.ac.in (Postfix) with ESMTP id B09E28902E52F;
 Fri,  7 Jun 2019 12:01:13 +0530 (IST)
X-Virus-Scanned: amavisd-new at aero.iitb.ac.in
Received: from vayu.aero.iitb.ac.in ([127.0.0.1])
 by localhost (vayu.aero.iitb.ac.in [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id nIOVfjAWuQBS; Fri,  7 Jun 2019 12:01:13 +0530 (IST)
Received: from vayu.aero.iitb.ac.in (vayu.aero.iitb.ac.in [10.101.1.1])
 by vayu.aero.iitb.ac.in (Postfix) with ESMTP id 0EEE684310111;
 Fri,  7 Jun 2019 12:01:10 +0530 (IST)
Date: Fri, 7 Jun 2019 12:01:09 +0530 (IST)
From: Martins Henry <rws@aero.iitb.ac.in>
Message-ID: <412557711.60336.1559889069980.JavaMail.zimbra@aero.iitb.ac.in>
Subject: Thanks and I wait for your answer
MIME-Version: 1.0
X-Originating-IP: [10.101.1.5]
X-Mailer: Zimbra 8.8.12_GA_3803 (ZimbraWebClient - FF11 (Win)/8.8.12_GA_3794)
Thread-Index: SsslhYkcLNFU69da/wYft5cO9/ZYnA==
Thread-Topic: Thanks and I wait for your answer
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

I am Martin Henry, An American Citizen; I am the personal secretary to
Mr. Donald Railton, the controller of a Lottery Company. Please I am
having big problem now, I have a 6yrs old daughter who has leukemia, a
disease of the blood, and she needs a bone marrow transplant or she
will die.

Please I am only asking for your help and you will benefit from it
also. As an insider with Lottery Firm, working as the personal
secretary to the controller, I want you to send me your name to play,
I have some numbers that are going to win, stored in his secret data
system in the office. The Lottery is an online entry with credit card
anywhere with a name and address. All I want you to do is to send your
name to play it and I will send confirmation to you.

I will play with my card on your name and the Prize will be shared
equally between us. Immediately the results are released they will
contact you for payment as the oversea winner. The lotto can be played
with 9.00 dollars, or 50 dollars but the prize will be Millions.
Remember that I am playing on your name with my card; I just want to
front you for this, because I need this money to save the life of my
little daughter.

Thanks and I wait for your answer
Martin Henry.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
