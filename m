Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7275243BD28
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Oct 2021 00:23:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F9884040C;
	Tue, 26 Oct 2021 22:23:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 40G07j0K3oHg; Tue, 26 Oct 2021 22:23:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 407CC4027D;
	Tue, 26 Oct 2021 22:23:55 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7C8001BF304
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 26 Oct 2021 22:23:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6BF4C60612
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 26 Oct 2021 22:23:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MI21FuR6kVTO
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 26 Oct 2021 22:23:44 +0000 (UTC)
X-Greylist: delayed 00:05:03 by SQLgrey-1.8.0
Received: from email.briq-institute.org (email.briq-institute.org
 [131.220.86.225])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A867605E5
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 26 Oct 2021 22:23:43 +0000 (UTC)
Received: from briq-sv043.ad.briq-institute.org (10.144.40.43) by
 briq-sv043.ad.briq-institute.org (10.144.40.43) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Wed, 27 Oct 2021 00:18:36 +0200
Received: from User (10.144.40.226) by briq-sv043.ad.briq-institute.org
 (10.144.40.43) with Microsoft SMTP Server id 15.1.2375.7 via Frontend
 Transport; Wed, 27 Oct 2021 00:18:33 +0200
From: "Mr. James Mike" <info@briq-institute.org>
Subject: =?utf-8?B?KioqUGhpc2hpbmcqKio6IENBTEwgT1IgVEVYVCArMSAo?=
 =?utf-8?B?MzAzKSA2MzItMDYxNg==?=
Date: Wed, 27 Oct 2021 01:10:16 +0300
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <98af8df6-316b-4bc9-84a6-23db5d8e7875@briq-sv043.ad.briq-institute.org>
To: Undisclosed recipients:;
X-TM-AS-Product-Ver: SMEX-14.0.0.3092-8.6.1018-26492.003
X-TM-AS-Result: No-12-72.840200-8.000000
X-TMASE-MatchedRID: AzEHJdHXt76dIDUGmRnk0mzBijri5+RVfqDbgsmLG+S2WymsB9JR6vh5
 gT8kXkoMco/5UQpJ3CFbfsp4cg4kJwPCwyUF7AZoTALGGFqq5RVFYhJJXmHGL/yQXCBzKijhyi0
 cpfLXkLbYkSKA4RGFAJOb99BtizXWzhQRr4Zp1fiwHUYUUuuMQvhy2Kco24WsPzpf+cBTvo9DJi
 enRpkiMgKUIyGmIR6t4yf6Jl3/aOQqgbs43b5u5T15aor0pUPeegJr1XbWCal/2iy8d1BiwvdJg
 PhE31FftBV4C5PHNYl6AiRZ1weEEKPFjJEFr+olfeZdJ1XsoriE9QXZyL0OCIsSLRubxrvNkHB2
 DlHJ/54yARVOgMb8bNlX11pmnb6i0ZDDMtqWchjdB/CxWTRRu7MYjwSs96EiTcob1S4330on+7O
 QMJa6E1d8idQQrT24gCFTEocxozlyPudfW0xm07QhpQD7IX1DQCl30gpd5m8=
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 12-72.840200-8.000000
X-TMASE-Version: SMEX-14.0.0.3092-8.6.1018-26492.003
X-TM-SNTS-SMTP: 1424C178F6E5FCA03D8621AC120D1C47EE0FFD82B13C3239F3114EA5DA1C1F1E2000:F
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
Reply-To: jm3461128@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi, How are you today?

I am Diplomatic Agent, Mr. James Mike, I have arrived here in JFK International Airport New york With your ATM Card Worth, $10.8M Dollars. But I need to hear from you urgent because I receive another address from this woman by name, Mrs. Virgina Tanner and she told me that you have authorized Her to receive the ATM Card for you because you are very ill now, Is this truth,let me know.Did you send you this woman called,Mrs. Virgina Tanner to receive your ATM CARD worth $10.8Mus Dollars from Me. Also, I want you to send me $100.00 for the airport clearance certificate. Remember I was sent from UPS Courier Company, Director,to make delivery of this ATM Card to your house address So If I did not hear from you urgent,I will complete this delivery to Mrs. Virgina Tanner as your representative. I wait for your urgent response now,Did you send you this woman called, Mrs. Virgina Tanner to receive your ATM CARD worth $10.8Mus Dollars from Me.

Diplomatic Agent, Mr. James Mike,
CALL OR TEXT +1 (303) 632-0616
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
