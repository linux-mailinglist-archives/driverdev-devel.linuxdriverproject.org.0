Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D69C312B0B6
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Dec 2019 03:47:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 261CB85618;
	Fri, 27 Dec 2019 02:47:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ilp5BlDRNi7y; Fri, 27 Dec 2019 02:47:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B26A785712;
	Fri, 27 Dec 2019 02:46:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8CB6F1BF380
 for <devel@linuxdriverproject.org>; Fri, 27 Dec 2019 02:46:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8415184F27
 for <devel@linuxdriverproject.org>; Fri, 27 Dec 2019 02:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tn8jfNCUGNC6 for <devel@linuxdriverproject.org>;
 Fri, 27 Dec 2019 02:46:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AE2EE84EE9
 for <devel@driverdev.osuosl.org>; Fri, 27 Dec 2019 02:46:56 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id w127so20638168qkb.11
 for <devel@driverdev.osuosl.org>; Thu, 26 Dec 2019 18:46:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=2Hv1x68b8uF72qZPygwNHPWxK1D9MzKDqh0OxaP6oOI=;
 b=OaCSuZ44PA0LdWeOuVkFrholvWC9bErIn/en6QZwNf9L+FHl4AWu1v1JbH4gXdDwbn
 Z0nw66O2leUQmi80oPajFbGinKO7zUDWmxXGpm0E7OvM9pRxqsdzO3SDhLPQx6Zjd934
 Ycr5icaoh087v26l2m6LYODHMOjeqXZDUSBdBpJRboZJSVldByQqYuK5BFnO842b9FLx
 QtfX67/PL9jcrjUGyg7tZzxCYazODBPTfWkmMq8a9owIN0SNpga9b2bRP0m1Q4lcuVQt
 3ROzAwwm0S+1MPcPhWr+YfABg8oh8xFvvbCt8V+yfoW1UhMp5e6L02UrMFU5bkkKZAET
 3rUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=2Hv1x68b8uF72qZPygwNHPWxK1D9MzKDqh0OxaP6oOI=;
 b=lu7maef1XkdH/n0MvEZpr8NpvPIrCnnYJrHSI/9S/sr7ZdTUpRvT1BHujZVr20OdFr
 Al2YG9kJ45BeHsPY9EAX+hw2wsfsja2zXgV0Rq2W4fnzrIm8RJuepqC0+pU5gDnwYbSp
 P972xEKl7CoAm65wJMpO7WY2iZAErWdkVFxlk6PvMkrjWRJpw+WhfdSw1rYzLOIf4Og5
 2dMrbOyZayQDxADck51EdttnuqsL/YBTgbPajPtK10dzShskpqfrUDa6+dsYAKwKan3P
 rN80qcSpes4getc5dO+IaaaLO85jk0+UzCJ3BueY4ONCWMPR0S8FeGmXfEmWVas6Lv2s
 KQIQ==
X-Gm-Message-State: APjAAAXPjgdBDDTyPIPshqmesV6/nD+DepvZEr22bTWoIRKRR1CUtmiO
 tqiWoBsiG8B8qTm9FU04Fj8=
X-Google-Smtp-Source: APXvYqyV5WbssGxs6t/AbINJ8WaBk8lSHDKGfTZCyAsOSSMhdPG9vd4MR+31MoRlg7OvvNfZyjWsMQ==
X-Received: by 2002:a37:4dc1:: with SMTP id a184mr41587857qkb.62.1577414815698; 
 Thu, 26 Dec 2019 18:46:55 -0800 (PST)
Received: from mandalore.localdomain
 (pool-71-244-100-50.phlapa.fios.verizon.net. [71.244.100.50])
 by smtp.gmail.com with ESMTPSA id c8sm10087054qtv.61.2019.12.26.18.46.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 18:46:55 -0800 (PST)
Date: Thu, 26 Dec 2019 21:46:38 -0500
From: Matthew Hanzelik <mrhanzelik@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: most: core: Fix SPDX License Identifier style issue
Message-ID: <20191227024638.okfsc2ikeuibujnl@mandalore.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a style issue with the SPDX License Identifier style.

Signed-off-by: Matthew Hanzelik <mrhanzelik@gmail.com>
---
 drivers/staging/most/core.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/core.h b/drivers/staging/most/core.h
index 49859aef98df..1380e7586376 100644
--- a/drivers/staging/most/core.h
+++ b/drivers/staging/most/core.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * most.h - API for component and adapter drivers
  *
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
