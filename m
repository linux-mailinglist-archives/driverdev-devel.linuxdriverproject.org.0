Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED5773AE94
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Jun 2023 04:24:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABA2E60B15;
	Fri, 23 Jun 2023 02:24:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABA2E60B15
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2XUMHwu_T4oW; Fri, 23 Jun 2023 02:24:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 839FA60A91;
	Fri, 23 Jun 2023 02:24:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 839FA60A91
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 186601BF3A1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 23 Jun 2023 02:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E5CAF4000B
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 23 Jun 2023 02:24:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E5CAF4000B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kda97sm_FDux
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 23 Jun 2023 02:24:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.gpdati.com (mail.gpdati.com [81.208.100.89])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2ABC940142
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 23 Jun 2023 02:24:43 +0000 (UTC)
Received: from User (87.120.88.40) by mail.gpdati.com (10.0.1.1) with
 Microsoft SMTP Server id 14.3.498.0; Fri, 23 Jun 2023 04:13:26 +0200
From: KOCH@osuosl.org
Subject: CRYPTO CURRENCY PORTFOLIO
Date: Fri, 23 Jun 2023 04:13:26 +0200
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <d0c98c65-3dbd-472b-ab27-dd8d1d4d8a11@gpdc.pellegrini.locale>
To: Undisclosed recipients:;
X-Originating-IP: [87.120.88.40]
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=osuosl.org; s=default; t=1687487083;
 bh=EBLFPaBCGf4WA/xd7w7G5Sgb6148/hyzfec/zAiQu84=;
 h=Reply-To:From:Subject:Date:To:From;
 b=LeQZdFaXf7lN+CTmXKyw8Q3p1zRFA4OhExyKGoXJeYE+ZVLA1M3kSBFU+aBX7ElY0
 VCp2t2m2dmJNFod62TXMP5WAjeoFIL8NwjnAQU5LwC8RFO+/jEcZTgC7CIEFHnNtUh
 M5pzSmX61ll8gYbkzTe2U9Bv9ECM6fuqVSlKH9Yv80sYY9KRhQRfHHeobezqTaZTAI
 R/aL/9vcB2f6ESlVj7N28npWHPYXY/0kUPESgYeddqdCyrmDtrf6/PnPqs7nYrJKGi
 z51uZ6TMCH42f3NvoAn8HGZ0gb/nDwKm5wE14PfmoTL9Lv/hjLWW0AACz9qLuEBnT1
 WHZzgkPYtxb8Q==
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
Reply-To: aminusmanesq@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello my dear friend. 


This mail is originally my swift capital fx trader Inc, (A platform for Bitcoins and all other Crypto currency investment)

We are contacting you because one Mr Eric Ervin had an investment portfolio with us, which we managed well for him and his profit is overdue for withdrawal, we saw your name on his record with us as his next of kin, and we have been trying to reach you or anyone related to him by name to come for this withdrawal since we can't reach Mr Eric Ervin for a long time now and from our findings, we were told he died in an accident.

Kindly let us know if we are on to the right person and if you are available to receive his investment capital with his overdue profits.

More details about the investment amount and profit made will be made known after full confirmation and verification of your identity.

We Hope to hear from you soon.

Sincerely
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
