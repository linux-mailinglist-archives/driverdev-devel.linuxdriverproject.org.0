Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E352D187A41
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Mar 2020 08:20:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 794E088B6E;
	Tue, 17 Mar 2020 07:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WZYopRhQ3eIR; Tue, 17 Mar 2020 07:20:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9CD9088B33;
	Tue, 17 Mar 2020 07:20:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 100F91BF2A6
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 07:20:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0A13188B33
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 07:20:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bcO+gCZ24YbZ for <devel@linuxdriverproject.org>;
 Tue, 17 Mar 2020 07:20:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F231488B31
 for <devel@driverdev.osuosl.org>; Tue, 17 Mar 2020 07:20:12 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id t17so9071731qkm.6
 for <devel@driverdev.osuosl.org>; Tue, 17 Mar 2020 00:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ouHG8X5VLgVrqETt8TrgCftKEZvZjS1NbNMqN8mQtnY=;
 b=btpoRs8U6qL2P1IbzZOIXJj4J4/UqbRPd2JReBhHMrI3P2fbdO14I4+UK9IOEFqhWu
 pK21R6P5qwnKt1auTWSOvbI500W/EondJvKmdWBRauObtZdn4H34pHw9F8Ns2neOmptu
 ZshJehZx2StP439V7K5+F1Ryn6elK4SjSP91obaCGRLY+GEAb9BXKr9K9z+b1iJzKWDq
 hrrqjb77pRJzoqWgoWVdbn9T/4iaAT+6NLPgzsCiqemOeSJSojcWoTV8ahJ9zP6mOPmk
 bEpFyU7Hh6qLqMGTPT7rUrxce07ltuUUGB78Yf8vE35YSZ/YOiK5D6SFTF+KP9lddQ2M
 FI8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ouHG8X5VLgVrqETt8TrgCftKEZvZjS1NbNMqN8mQtnY=;
 b=AFzWoDDbluKHpjHteuPh8z2qMVMkgOCMzkt1iMQRz+E7umzb357QD0s5SMMjh+T1z3
 w8da/pTA4bEYtTJjp+ijKPqWRY644O4+DRJ1cI1YnB3v0+gzq4Q/z0jmPjUNkgQ1/M4Q
 FNN+fDKKxuRa3gBuGZuk0rrdW9AuCpEMsxp/perSCtPuzXpc4Uywg4tHacCF6t4yuvnV
 ZmJ8TFG/Dx186CxcuEAMvRMgF/E3R5WUKtqViBjXv0IA6Xw3tPP+XGUg8fUOyZ99ufZL
 JS9bKI2dwfaAz6KXhuqbGHcIQjoaG7rFobcUoFnrhXT4bL1Py/llf/eVZwFeiM//nOhF
 YPqA==
X-Gm-Message-State: ANhLgQ0g7Ua1ItpLEG0CxmHkk6fYId0yA1y+yeVRtoASfM5vU/TXP3ze
 67QSyBVonC0S1ZA+GgBL6dQ=
X-Google-Smtp-Source: ADFU+vt3jedIxsMvR8GCPR/VxvaoO/EG4X0qZ19HXpsOw3CPwCPQb94DZn1alKp+6+tHN0OTsFzXxg==
X-Received: by 2002:a05:620a:22f7:: with SMTP id
 p23mr3430110qki.4.1584429611908; 
 Tue, 17 Mar 2020 00:20:11 -0700 (PDT)
Received: from localhost.localdomain (179.186.61.135.dynamic.adsl.gvt.net.br.
 [179.186.61.135])
 by smtp.gmail.com with ESMTPSA id n74sm1374378qke.125.2020.03.17.00.20.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 00:20:11 -0700 (PDT)
From: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: [PATCH] staging: rtl8192u: Replaces symbolic permissions with octal
 permissions
Date: Tue, 17 Mar 2020 07:19:59 +0000
Message-Id: <20200317071959.556-1-c.cantanheide@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Solves following checkpatch.pl issue:
WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider
using octal permissions '0444'.

Signed-off-by: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 89dd1fb0b..9e222172b 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -613,13 +613,13 @@ static void rtl8192_proc_init_one(struct net_device *dev)
 	if (!dir)
 		return;
 
-	proc_create_single("stats-rx", S_IFREG | S_IRUGO, dir,
+	proc_create_single("stats-rx", S_IFREG | 0444, dir,
 			   proc_get_stats_rx);
-	proc_create_single("stats-tx", S_IFREG | S_IRUGO, dir,
+	proc_create_single("stats-tx", S_IFREG | 0444, dir,
 			   proc_get_stats_tx);
-	proc_create_single("stats-ap", S_IFREG | S_IRUGO, dir,
+	proc_create_single("stats-ap", S_IFREG | 0444, dir,
 			   proc_get_stats_ap);
-	proc_create_single("registers", S_IFREG | S_IRUGO, dir,
+	proc_create_single("registers", S_IFREG | 0444, dir,
 			   proc_get_registers);
 }
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
