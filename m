Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C9F3B9B1C
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Jul 2021 05:44:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38203606BA;
	Fri,  2 Jul 2021 03:44:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kga7CnIFW_IA; Fri,  2 Jul 2021 03:44:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88EE960665;
	Fri,  2 Jul 2021 03:44:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 50F2E1BF3D7
 for <devel@linuxdriverproject.org>; Fri,  2 Jul 2021 03:44:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 45528403BF
 for <devel@linuxdriverproject.org>; Fri,  2 Jul 2021 03:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=akron-holding.ru
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8GRYAEFNLBEV for <devel@linuxdriverproject.org>;
 Fri,  2 Jul 2021 03:44:00 +0000 (UTC)
X-Greylist: delayed 00:15:03 by SQLgrey-1.8.0
Received: from mail1.akron-holding.ru (mail1.akron-holding.ru [13.53.54.26])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5EB3B4017D
 for <devel@driverdev.osuosl.org>; Fri,  2 Jul 2021 03:44:00 +0000 (UTC)
Content-Description: Mail message body
DKIM-Signature: v=1; a=rsa-sha256; d=akron-holding.ru; s=mail;
 c=simple/simple; t=1625196523; h=from:subject:to:date:ad-hoc;
 bh=S6+Ki/4/vG/LCV7oLCRNbiNKmzsrhVHFm75dfRAzzOY=;
 b=ieo1vRI5zMh3ga5QNyS1sHa7SbhXlWQNWcgshXpAVm08ImTb/8otK8fpHPRwkyZZME6LEvvpQhh
 +SB16YPYiQkf4JGUxNBLDy5ge6Mm7N52YrMEzzMVr69CEL38sZBzhXMfEMqJZBFLoHEXbkDKBdfD8
 voeP1M9yuyW7Q8AGd1dS+qXKWOQcMF9z/n1+gRSdlaeV8sF3F1uFiBnpJzlHdDswS1coXF2iQfj2a
 jWXicZgS+xaxNCglEDzrjCDWsOPXtV6gj5ZqisNIcV9qmZ0/aFp0/E743Qy2nZaNPBWa9EPC8Dr10
 9UNplNctFQOTTvNO2T1hx4m2Cn29UFnm/eGA==
MIME-Version: 1.0
Subject: Your prompt response will be highly appreciated
To: Recipients <zhuravlev_is@akron-holding.ru>
From: Miray Cinar <zhuravlev_is@akron-holding.ru>
Date: Thu, 1 Jul 2021 20:27:26 -0700
Message-ID: <b0fd65e4-3536-4a48-9287-302c5bd73014@aws-mes-node01.AkronPlus.local>
X-KSE-ServerInfo: aws-mes-edge.akronplus.local, 9
X-KSE-AntiSpam-Interceptor-Info: white sender email list
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 7/1/2021 11:42:00 PM
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: protection disabled
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
Reply-To: n4rmiray@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I'm Miray Cinar, a staff member at VakifBank in Turkey. I am contacting you in regards to a deceased client who died in an auto accident on the Istanbul Highway in 2003, he was a prominent client of mine. Before his death, my client deposited a sum of $36,000,000.00 USD (Thirty Six Million United States Dollar Only) at the vault of my financial institution here in Turkey, documentations regarding these transactions indicate that claims can only be made by his Next of Kin. Unfortunately he had no will at the time of his death. All efforts made revealed no link to any of his family members.

However, the New EU law of succession/claims/fund indicates a duration in which such claims could be tolerated. The financial institution has mandated me to present the next of kin who will claim the funds and Failure to respond to this ultimatum would legally allow the financial institute to report these funds to the central bank of the EU as unclaimed funds. All necessary requirements concerning the release of these funds have been put in place and It is my intention to introduce this opportunity to you as the beneficiary.

Note that I'm legally equipped with all necessary information/documentations concerning this fund.

Kindly get back to me with your opinion by sending your reply to my email address: (miraycinar75@gmail.com). I will be available on Mondays to Fridays from 9:00am to 2:00pm.

I hope to read from you soon.

Best Regards
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
