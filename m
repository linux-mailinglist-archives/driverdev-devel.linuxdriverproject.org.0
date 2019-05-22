Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AAF267A0
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 18:01:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DEA8F85E98;
	Wed, 22 May 2019 16:01:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N9T75gKRzc-O; Wed, 22 May 2019 16:01:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 26AFB85E95;
	Wed, 22 May 2019 16:01:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E1FF1BF298
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 16:01:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 490118693D
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 16:01:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q5+NI4Z0Rb7Z for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 16:01:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B379E8622A
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 16:01:23 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id n19so1574110pfa.1
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 09:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NH+IJjEIY4Ij55hMmS4GfY42hHVAOQrXnoqBuefUCCA=;
 b=cnCidk9C7qd6WLT88CO6Bck3ioodhiei8Fcl5uPew4ntdNUW7xNMfvKw6uVb4CsYPK
 EwXFatmRgOXgGMaPdinUfCFzq6/VL/W43FKUC7qt+C0rOrWpN5fuKMgyhMiCKaYsgNpn
 4ufDEDBThKleAFoW/rS1uS+rF/EnchPhe8lT6i6ndv3Fn4ZPsQzKlTRsTzypKlCbXB7z
 KxuSV+BBrqQHjziGta10EBjPJ3qnEdaVrwZgZyzgguMU0AloFC8kO5aPvfMmmcb7IUvx
 S7Xe2q4V3Xz/X/Z0MllAhcOP7OCJiUwP6gf2jbzJLgMzrgTI+V3PZr4ETg0Wj563nTRY
 Qhaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NH+IJjEIY4Ij55hMmS4GfY42hHVAOQrXnoqBuefUCCA=;
 b=VUAVdP8cmKSvmDC9msY1A0E29AUKTZCmKXwHQ6h597QJqDO/T9KYkxEabMoKQ5iJ7k
 0hnH7liJMJEF4vo4Me6CLHCPPeXnXPjbh6ASdn50JoUurHqsDv38kMlJiBS/YMypKr6+
 V9mFxZuWxjwGTyUMr3rqYxo0qJ2Hmq98rJOQp/TAqK14/I7/IfMbm325seeIY11R65Ts
 lhJfaog2KiORrWmQ7WGyFewAxQJbRD/cKxYLVZASvYqlt0RdFSD7+Zjf0pJVyWdlPxps
 rk85K8KuhaxPThakilESXKumrOLHbu8eRsVOBXYUssItwKL8eu+ljsJ6hYXyjK8N8lhC
 TfAQ==
X-Gm-Message-State: APjAAAWM48GEA+zrDi9F/c+n87Js07DuD0hQHU2SvN4Px2GgIO7yM9jj
 Bnak0Qy1a4ALmQxFeyCpLwJL43qt
X-Google-Smtp-Source: APXvYqza6zw0Vt0pMSTLRqeBik9SzvMm69HdiBTvXihwPPMLjfnFJo0llwNlXrktYnwo6WyZSuiRcg==
X-Received: by 2002:a65:4786:: with SMTP id e6mr6238700pgs.85.1558540883099;
 Wed, 22 May 2019 09:01:23 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:8:87e0:a947:4497:b688:7223])
 by smtp.googlemail.com with ESMTPSA id
 7sm6607302pfo.90.2019.05.22.09.01.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 09:01:22 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: rtl8723bs: os_dep: Remove functions that don't
 perform any task
Date: Wed, 22 May 2019 21:30:56 +0530
Message-Id: <20190522160056.19564-1-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove functions which return 0 without performing any task.
Fix following warnings issued by coccicheck:
Unneeded variable: "err". Return "0" on line 4484
and similar other warnings.

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 41 -------------------
 1 file changed, 41 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index bfbbcf0bded3..3b5f3e9ae5f7 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -4476,43 +4476,6 @@ static int rtw_pm_set(struct net_device *dev,
 	return ret;
 }
 
-static int rtw_mp_efuse_get(struct net_device *dev,
-			struct iw_request_info *info,
-			union iwreq_data *wdata, char *extra)
-{
-	int err = 0;
-	return err;
-}
-
-static int rtw_mp_efuse_set(struct net_device *dev,
-			struct iw_request_info *info,
-			union iwreq_data *wdata, char *extra)
-{
-	int err = 0;
-	return err;
-}
-
-static int rtw_tdls(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
-{
-	int ret = 0;
-	return ret;
-}
-
-
-static int rtw_tdls_get(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
-{
-	int ret = 0;
-	return ret;
-}
-
-
-
-
-
 static int rtw_test(
 	struct net_device *dev,
 	struct iw_request_info *info,
@@ -4789,15 +4752,11 @@ static iw_handler rtw_private_handler[] = {
 	NULL,							/* 0x12 */
 	rtw_p2p_get2,					/* 0x13 */
 
-	rtw_tdls,						/* 0x14 */
-	rtw_tdls_get,					/* 0x15 */
 
 	rtw_pm_set,						/* 0x16 */
 	rtw_wx_priv_null,				/* 0x17 */
 	rtw_rereg_nd_name,				/* 0x18 */
 	rtw_wx_priv_null,				/* 0x19 */
-	rtw_mp_efuse_set,				/* 0x1A */
-	rtw_mp_efuse_get,				/* 0x1B */
 	NULL,							/*  0x1C is reserved for hostapd */
 	rtw_test,						/*  0x1D */
 };
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
