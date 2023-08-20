Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C20D781D82
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Aug 2023 12:56:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA58F60E83;
	Sun, 20 Aug 2023 10:56:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA58F60E83
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3llOIO0Tkm1n; Sun, 20 Aug 2023 10:56:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A496E60B0E;
	Sun, 20 Aug 2023 10:56:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A496E60B0E
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B3CD11BF322
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 20 Aug 2023 10:56:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 84B6360B88
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 20 Aug 2023 10:56:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84B6360B88
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RVFPTmpfC1U5
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 20 Aug 2023 10:56:17 +0000 (UTC)
X-Greylist: delayed 7925 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 20 Aug 2023 10:56:17 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A38A260B0E
Received: from cg.mcloud.vc (cg.mcloud.vc [79.171.174.85])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A38A260B0E
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 20 Aug 2023 10:56:17 +0000 (UTC)
Received: from ksmg.cluster01.mcloud.vc (localhost [127.0.0.1])
 by cg.mcloud.vc (Postfix) with ESMTP id 3C35E233AA;
 Sun, 20 Aug 2023 11:26:06 +0300 (MSK)
Received: from User (unknown [192.168.255.2])
 by cg.mcloud.vc (Postfix) with SMTP;
 Sun, 20 Aug 2023 11:26:02 +0300 (MSK)
From: "Vicente"<efrank.broker44@gmail.com>
Date: Sun, 20 Aug 2023 01:26:05 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
X-KSMG-Rule-ID: 1
X-KSMG-Message-Action: skipped, AntiSpam
X-KSMG-AntiSpam-Lua-Profiles: 179338 [Aug 20 2023]
X-KSMG-AntiSpam-Version: 5.9.59.0
X-KSMG-AntiSpam-Envelope-From: efrank.broker44@gmail.com
X-KSMG-AntiSpam-Rate: 100
X-KSMG-AntiSpam-Status: spam
X-KSMG-AntiSpam-Method: headers
X-KSMG-AntiSpam-Info: LuaCore: 526 526
 7a6a9b19f6b9b3921b5701490f189af0e0cd5310, {vsh_silent_1},
 {Prob_Advanced_Mass_Sender_X_Mailer}, {Prob_Reply_to_without_To},
 {Prob_From_no_space_freehosting}, {Std_Spam_X_Mailer_wo_msgid},
 gmail.com:5.0.1,7.1.1; 127.0.0.199:7.1.2;
 d41d8cd98f00b204e9800998ecf8427e.com:7.1.1, FromAlignment: s,
 {Tracking_white_helo}
X-MS-Exchange-Organization-SCL: 9
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean
X-KSMG-LinksScanning: Clean
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.0.1.6960,
 bases: 2023/08/20 06:23:00 #21658527
X-KSMG-AntiVirus-Status: Clean, skipped
Subject: [Spam]LOANS PROJECT FUNDING
Message-Id: <20230820105618.84B6360B88@smtp3.osuosl.org>
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
Reply-To: efrank.broker@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We are offering Loan/Investment funds to Companies and Individuals with profitable projects in any area of specialization at 3% interest rate APR for a duration of 2 to 20 years with a year  grace period.

Our Loan offer is between USD$10M to USD$10B loan for business owners. Our lenders or investors are well vetted according to European Union financial institutions. Let us know if you are interested.

You can contact our loan provider immediately with the following email address: jp7354667@gmail.com

CONTACT PERSON: Mr. Sachchidananda Banerjee

Facilitator
ReplyEmail-To: jp7354667@gmail.com

Yours Faithfully,
Mr. Vicente
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
