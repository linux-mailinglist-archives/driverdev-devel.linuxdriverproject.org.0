Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0E827607
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 08:35:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4AA0F8736B;
	Thu, 23 May 2019 06:35:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p68QAd6-5Q1R; Thu, 23 May 2019 06:35:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2674587286;
	Thu, 23 May 2019 06:35:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 256491BF847
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 06:35:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 22129227F7
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 06:35:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Amoy9v90I++O for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 06:35:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic313-21.consmr.mail.sg3.yahoo.com
 (sonic313-21.consmr.mail.sg3.yahoo.com [106.10.240.80])
 by silver.osuosl.org (Postfix) with ESMTPS id 3021322624
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 06:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1558593316; bh=P/9f5OpsiU4oS586NaQo+loC/0Vj/uBwsfZDlT22Y/U=;
 h=From:To:Cc:Subject:Date:From:Subject;
 b=ME3yr2/I8rgy/itXl5E0H/xDeNvFGUbumCejPErAVck+DwlDtKZ0evYtBzMJJ0u6LVcrEu7lmKnKHLJNrpMVFYLNQLiOz/7Lr/zKY5oj9FHJd+aKUy2vLxrJZ5gOI6TlZeTEV35kvt3d7i8ieBG84HM5XJY/0kwAvTahHGerv1zc5yCpZxZyrMJml9ykoOZmpWuqZwzIEsIW1jLZ1BO2kGsFjhVfFBkFRCYAlZV9xDZtGm8BvHyVnHgBmHCCgEDeYWS2L0t4ZjWkEFWCAViikFTHIk+wE0p2O7go/WMk1fBDUA0Eh9leHtC/LdtqKybNQ9mEsFJCDkqDD5l2qoHKtw==
X-YMail-OSG: u1KnctcVM1mFiI6wnDlG1im836XVER7gkuuuc.mABkU.kvi_GVKeJZeOHrM_3ZP
 4vVId4XNypFLscaMhvaK8cAK.9RU29mUfRxi8Y3YBUHXqvXGiKVzX71fp2r1muwx3qaLO9iBL9Oy
 0wYVBZUtSsyAenvyFZD08vRTShaAFGerSKyUtI8jkcYCutxJZZ9bknEyny5m6ub_8ZMX.9HmB7Or
 GSedukVBdzfWw.YUsfJLi6tSV.G26KzkpkfU2_IWSpNEkcXgprA3cGAL1mkU6cj2W5ZoQL.HEfWK
 6QMaec6K4OvKWyWMmrvDXItu96iFIuY9lp._Ulpb8yWsSDV1YH5q2qkbpoq2xHhnCYKZIrIeqMUR
 itY7p3XHk1EGi4IFt738FwVSb28FOnb95A5ujnQZvCdq9OXULyKKEWcjnfNNQITYSu.NYhOs3.Nt
 1uZkX7.P9blrVmGVkxV08lVQ1MkxXbgDDTXZ0osTS7M5RKNKHyPJl8kALSGRybpoNxwjyJ4ONrgk
 GqD6Q55bgmdtAtu69fwhVnyAzFhTfrq74LWG6F8N.RFN.dnAvWoH2BUwlxBzXScSGhNM3hehI9Vu
 Rk09UsP8.D.T3_AeIHe3WZTzmYtheMOFV7iwwNjA4j6BSx2gqc0ed3Xpew6SqpA0NkeyHaukpLlY
 kMHvWnMnJAxYVgL8VyTtPjXCr5WC0paAIFlvZPUNumsjfC1jCWZJL6zhViadpcBPvDCWdr48QTDx
 qDmVlqJQkHF.j.V9ncaUl9Wk6gKDONXf3z0fLlNMm3KeMcq6zw.G9vkurGYMKqbZQtbyvm5490Ya
 XrrN8IOQXsXJLHq26PYqV1v.AZ1RlTqz1hok2H3371ZvMyXj9FUjADIu9BkJpkooIcbISBxpVGQu
 udsFxMoK3RCUtKKH_2AhySuWGOS5pgJ8beuR2jSlz2deqopmH2gLhmMssu.ed4RDeM33Ivpkg8xu
 IePMosayf7H5RPRHF2_ss0.ANpvmMoqCISNRPdfmooOpJAcstGt8pCsdWOsDFhkbWU3JagjAGrGW
 28stV8kUUj0tSyR0qelBQ.dwGguNFjyQf9uSCw2vIc65LFvyTdXfh17WvkGIYkI3Xn0bhvkdv5i8
 5DqlJM8wUcIcjgK8mvqITdTH_qJSJL4rHCYmkkliZSk7adtNgkyqHezryYJGPY1lMLjFIvBM7e0T
 u6AgGA261A31AVPZuU1iXdlLAoa9Aen4uu92k6yiK6PsG1zNkvF_dhrFUX9Od6prX69WC8gGb0PD
 OQgU4sUCQ_LI8zW2Sy5d7Epbw
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.sg3.yahoo.com with HTTP; Thu, 23 May 2019 06:35:16 +0000
Received: from 122.163.94.48 (EHLO localhost.localdomain) ([122.163.94.48])
 by smtp415.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 ddd3f0c031837c3378b2f9ebb0c4a5a2; 
 Thu, 23 May 2019 06:35:15 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: fieldbus: anybuss: Remove unnecessary variables
Date: Thu, 23 May 2019 12:05:01 +0530
Message-Id: <20190523063504.10530-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
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
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In the functions export_reset_0 and export_reset_1 in arcx-anybus.c,
the only operation performed before return is passing the variable cd
(which takes the value of a function call on one of the parameters) as
argument to another function. Hence the variable cd can be removed.
Issue found using Coccinelle.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/fieldbus/anybuss/arcx-anybus.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/fieldbus/anybuss/arcx-anybus.c b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
index 2ecffa42e561..e245f940a5c4 100644
--- a/drivers/staging/fieldbus/anybuss/arcx-anybus.c
+++ b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
@@ -87,16 +87,12 @@ static int anybuss_reset(struct controller_priv *cd,
 
 static void export_reset_0(struct device *dev, bool assert)
 {
-	struct controller_priv *cd = dev_get_drvdata(dev);
-
-	anybuss_reset(cd, 0, assert);
+	anybuss_reset(dev_get_drvdata(dev), 0, assert);
 }
 
 static void export_reset_1(struct device *dev, bool assert)
 {
-	struct controller_priv *cd = dev_get_drvdata(dev);
-
-	anybuss_reset(cd, 1, assert);
+	anybuss_reset(dev_get_drvdata(dev), 1, assert);
 }
 
 /*
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
