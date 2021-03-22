Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA03344763
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 15:34:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 533E7825DF;
	Mon, 22 Mar 2021 14:34:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oSgpZ5ksqKFF; Mon, 22 Mar 2021 14:34:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD270823AB;
	Mon, 22 Mar 2021 14:34:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 638CC1BF35E
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60A2982ED2
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PEs0wV6hlB9V for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 14:32:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A81F682EB4
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 14:32:39 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id b16so19630163eds.7
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 07:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZXtAafHdRgTuu2ScDrS6HUwwTfEuC/19w3Nfd18OE70=;
 b=r7oEeFgTthfv+A3y3mTeOVUHyBwGwY389wSrOoCzC6PmF+hnhNRLss4NrHdaW64eE9
 ewKQ+3dELDs4Lm6IXepvKr6TVxoGTSMSCo0kC+u9DwiLpsye8YrB38L9l8CwPj13AVOF
 eUvTjRJTvbDTdY9Vn+b6nsxvoxS9M+QzrOiIpwSGu+7eNwuqBMH4cXZjtlEJbXuMy/o3
 em6UgqfF75EnOk7m6x/gWpGYUXOKiEGFMwEUK7LHNJHZxrlM4cgFpomr+fu2AiuWxE2M
 9dZBbsiTbBrpSV4a8Zrfs/rXQAmobQT32izjlOBoh4pojznZMQ/yEKHmIG9RwwtdFyTJ
 Ckdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZXtAafHdRgTuu2ScDrS6HUwwTfEuC/19w3Nfd18OE70=;
 b=syEop2DhRyVv5h9XpM8ZiF9o300oHYZXOd8huivY2HxeTLVDafZedBk0JhpLPpR5ug
 PQJia+4S68OIT4uRNP71lXtLHS8xwimENMs2ROntp/7CqbktEx6LZCsrGSOM5DcXBUx4
 hAzcn/bjvKocno05iyQXLDUwxfL/0mToVInF6i09WzZ56t1GZv03fMhpJraxKp3cNi+A
 lAUxVVXKrWmEyvyqdeNPtOAvlfzCUYBkvMMVE+1GxUw0msPVrg3egpdD0grp9DK/2eLL
 x2i7f6fHp3I0K+uHp1XfEciKTEBIXp5nZflEWZFKZUa00Ns7yQNFILs3tM055JF+Mya0
 DWIg==
X-Gm-Message-State: AOAM530+FIwFN7hhOAV+5bEhmJrupDbGF3iRPyo6Qo72tYvX1L6owcDQ
 3mc3vvW6f+rs5rs9wHxSkfA=
X-Google-Smtp-Source: ABdhPJxFo6f9hY4ew06xeOxJ+G7Dm1E8o+cHKsguqdv+0dFE90ma2RqIO6hP8dVZtOWoP0Bo6aAJJA==
X-Received: by 2002:a05:6402:19a:: with SMTP id
 r26mr25733143edv.44.1616423557975; 
 Mon, 22 Mar 2021 07:32:37 -0700 (PDT)
Received: from agape ([151.57.176.11])
 by smtp.gmail.com with ESMTPSA id hd8sm9578707ejc.92.2021.03.22.07.32.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 07:32:37 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 11/11] staging: rtl8723bs: remove unnecessary extern in
 os_dep/sdio_intf.c
Date: Mon, 22 Mar 2021 15:31:49 +0100
Message-Id: <be21175bd3ce666110e507a3e577e1a053700a9c.1616422773.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1616422773.git.fabioaiuto83@gmail.com>
References: <cover.1616422773.git.fabioaiuto83@gmail.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove unnecessary extern.

The function is defined static in os_dep/os_intfs.c and used only once
in the same file

remove also a blank line

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c  | 1 -
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 2 --
 2 files changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 3713c62a477c..321f7c45ed95 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -1027,7 +1027,6 @@ void rtw_ips_dev_unload(struct adapter *padapter)
 		rtw_hal_deinit(padapter);
 }
 
-
 static int pm_netdev_open(struct net_device *pnetdev, u8 bnormal)
 {
 	int status = -1;
diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 185919b6963f..156ad91d33ee 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -482,8 +482,6 @@ static void rtw_dev_remove(struct sdio_func *func)
 	RT_TRACE(_module_hci_intfs_c_, _drv_notice_, ("-rtw_dev_remove\n"));
 }
 
-extern int pm_netdev_open(struct net_device *pnetdev, u8 bnormal);
-
 static int rtw_sdio_suspend(struct device *dev)
 {
 	struct sdio_func *func = dev_to_sdio_func(dev);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
