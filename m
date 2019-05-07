Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B734B167B3
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 18:21:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 25D142EFBB;
	Tue,  7 May 2019 16:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pa-j43eAkazw; Tue,  7 May 2019 16:21:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 02A332E6B2;
	Tue,  7 May 2019 16:21:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1BC091BF376
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 16:21:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 179CF86BCF
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 16:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2xSyQRSRhocj for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 16:21:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A6C7C86BC9
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 16:21:34 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id p15so1236879pll.4
 for <devel@driverdev.osuosl.org>; Tue, 07 May 2019 09:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=9SvdGMRtynMfHDu2OEIwbDjTjXUbDu/xBcBWA8vqTyI=;
 b=YeO/1N+1O99MhYQ9kX7jEGquAvfikipCz0OvOw7rUcezmWOR+m0nDT1ejk1P2QRiH3
 /hrP8YLISiR8EdsfSywhTFADlBlhtpNsjg8RRofOyatQ1vMSD8sNP7c3LuzJwM+L9FKJ
 76z29gkwQb3YohpOdY0WhaCeO2qzEuBseNE96alBL7M4Iset8Y0N+wRR0X3QF4JnQkXl
 +RBcCJ+7SSD6JryFSIFcmL4vo+OmMUq199zyQtYUHdTmzj52fHiyf61NyqkkrLGz5f/C
 hZAIGtXAbwNYxg3z2I2TZf0RRpRjsAO863Tqxekdp0kzf67UZmE1DBE+eyyj0bOR4CR2
 iCTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=9SvdGMRtynMfHDu2OEIwbDjTjXUbDu/xBcBWA8vqTyI=;
 b=oI7aBwKS7j/WPPpH7KFq8azI7GQpcXCIEfD6d0vPWZIN80r5p6HRFW6kJwaj8ouLDq
 UoOBiFOl1Nj6GGIye6+kVfnnhle3dk8G8SDe3fVVlaz53ik8mrqIzwIU/znObGDNMRdg
 4FFtwvmlGOrT6d9bEnIJFhjT0XqtmDkel1o451kLC9AxgmbhAULp0MbtLLeot2WQPvua
 Sv7fjaMPWJERucAFktJQqa2cLmW29vRRVufmcVxWlF6FpfiS93g6zHXz0uRSpEOLM5kj
 YOeuMBPKNKFDgfaaH/rL2lRLaPKWnY1CNa1c2SopTsk8QF7fXvAmi2Vy2DLGLzbbDjyK
 vQhg==
X-Gm-Message-State: APjAAAWFbSfkrok5QBVC/lBuzrXK3sTa/sQCiYiuPImP0mV4PbaZBALQ
 db+EtkYutMuhAOA7RwZiDIo=
X-Google-Smtp-Source: APXvYqyK2DD4MNorLs/3cHyyuKHpKshie9S7WlKfWZL44CJRlx1v4s13wZSbZVy70lGDI4bf2rF3Zw==
X-Received: by 2002:a17:902:8b86:: with SMTP id
 ay6mr41299908plb.4.1557246093958; 
 Tue, 07 May 2019 09:21:33 -0700 (PDT)
Received: from arch ([2405:204:7042:1c82:1868:3308:ccf7:3f5b])
 by smtp.gmail.com with ESMTPSA id n11sm14516249pgq.8.2019.05.07.09.21.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 09:21:33 -0700 (PDT)
Date: Tue, 7 May 2019 21:51:26 +0530
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: rtl8723bs: os_dep: Remove braces from single if
 statement
Message-ID: <20190507162120.GA10341@arch>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove braces from single if statement to solve style issue found using
checkpatch,pl

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 052482554f74..96e989d1d53d 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -489,9 +489,8 @@ static int rtw_drv_init(
 
 	/* dev_alloc_name && register_netdev */
 	status = rtw_drv_register_netdev(if1);
-	if (status != _SUCCESS) {
+	if (status != _SUCCESS)
 		goto free_if2;
-	}
 
 	if (sdio_alloc_irq(dvobj) != _SUCCESS)
 		goto free_if2;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
