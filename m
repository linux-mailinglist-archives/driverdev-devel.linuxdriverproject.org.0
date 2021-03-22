Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B3934473E
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 15:32:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1124060786;
	Mon, 22 Mar 2021 14:32:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VI3VW65e5Gdw; Mon, 22 Mar 2021 14:32:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C50EB60659;
	Mon, 22 Mar 2021 14:32:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 648421BF35E
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5479382CDE
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ad4zTrtXKqeQ for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 14:32:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 932CE82F13
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 14:32:17 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id k10so21656220ejg.0
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 07:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tbMCb/XmLUDBwRP+A1f4oKC0PLquXQAMQOI8fIrmC/w=;
 b=JMwM/LJ+Zd84CAeZmis8QESvvX2quoADM2t2s4N4uL2DpoTiZePCENjHFBTSri+WkV
 bYJsO3jw5ZXLcZ403tFFBI5zeLTBacR/nCtbdVQbojuF95SZK5swte2tz6epNxLcU+1+
 VFTloh5bsoXc2hSa0lPu9x/SlMSbtfyqqQ/lAJcsS9G3HS5Y7gqxrEVFaIG7qvO2aiE1
 BDnYA3CLELUiE86MWYYPdLGvkI2yA2e3UjNo2lozkeCK5qukNCcOq6KJUijzkYtcPP2e
 4CvSgEDMjGryq5ruhhY/bN8awFyQkr2Bd4FZxzkuqFr0iqcA/nGfnxwSu8jDf6N+rDJV
 wNOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tbMCb/XmLUDBwRP+A1f4oKC0PLquXQAMQOI8fIrmC/w=;
 b=Bf0t65GBlbtYmI+yGL2ckJTgdYS+aCBZUDpwwE3PdMmifXFg6YVAovSZn5ilFD+oZa
 BRLmETVYs6gZIkwAwT3tfu9EoD2swi/5CF/xsOr8b2rkgWeH1cdtRQuR4M0FzevvZZzi
 dHPcID3RBflJgqp3BelDVLkFh3POfi9TvCylzTh7KnxRdIwl9WiPDwcj1l/PfZaaLocc
 YM+VZFkE6PLGnADJGawDNQHysxS3pmk02G3OE2PqhaI2oNG2yjpwcM9b8CxhO54Lti57
 kOL0iUYVysq8FcLaUQBoWWPFYpY9ec6d2cZvHgbwd0RBwIZxwBtbD2HRFJSikqM9JKCl
 EzoA==
X-Gm-Message-State: AOAM532DZEC3UQ7jcgpTlv4PWvZaMorA0WxvY/1QSfjnjxCwHed6FCBa
 4tMKI4T+oONrR0STJPOhKXM=
X-Google-Smtp-Source: ABdhPJw4ThLUrKUJMsWqBzWZUc+urZc6B+0H8nW4GxQdU8f1lma4RLwnDo4v9lUrar5TqwRqczporA==
X-Received: by 2002:a17:906:7194:: with SMTP id
 h20mr57072ejk.154.1616423535921; 
 Mon, 22 Mar 2021 07:32:15 -0700 (PDT)
Received: from agape ([151.57.176.11])
 by smtp.gmail.com with ESMTPSA id k12sm11442121edo.50.2021.03.22.07.32.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 07:32:15 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 03/11] staging: rtl8723bs: moved function prototype out of
 core/rtw_ioctl_set.c and core/rtw_mlme.c
Date: Mon, 22 Mar 2021 15:31:41 +0100
Message-Id: <81ccf18df5ca0acab5bb8da2b675a03626ef57ac.1616422773.git.fabioaiuto83@gmail.com>
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

fix the following checkpatch issues:

WARNING: externs should be avoided in .c files
40: FILE: drivers/staging/rtl8723bs/core/rtw_ioctl_set.c:40:
+u8 rtw_do_join(struct adapter *padapter);

WARNING: externs should be avoided in .c files
15: FILE: drivers/staging/rtl8723bs/core/rtw_mlme.c:15:
+extern u8 rtw_do_join(struct adapter *padapter);

moved function prototype in include/rtw_ioctl_set.h

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ioctl_set.c    | 1 -
 drivers/staging/rtl8723bs/core/rtw_mlme.c         | 2 --
 drivers/staging/rtl8723bs/include/rtw_ioctl_set.h | 2 ++
 3 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
index cb14855742f7..7d858cae2395 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
@@ -37,7 +37,6 @@ u8 rtw_validate_ssid(struct ndis_802_11_ssid *ssid)
 	return ret;
 }
 
-u8 rtw_do_join(struct adapter *padapter);
 u8 rtw_do_join(struct adapter *padapter)
 {
 	struct list_head	*plist, *phead;
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 95cfef118a94..1ee86ec2dee7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -12,8 +12,6 @@
 #include <hal_btcoex.h>
 #include <linux/jiffies.h>
 
-extern u8 rtw_do_join(struct adapter *padapter);
-
 int	rtw_init_mlme_priv(struct adapter *padapter)
 {
 	int	i;
diff --git a/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h b/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
index 4b929b84040a..55722c1366aa 100644
--- a/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
+++ b/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
@@ -28,6 +28,8 @@ u8 rtw_set_802_11_connect(struct adapter *padapter, u8 *bssid, struct ndis_802_1
 u8 rtw_validate_bssid(u8 *bssid);
 u8 rtw_validate_ssid(struct ndis_802_11_ssid *ssid);
 
+u8 rtw_do_join(struct adapter *padapter);
+
 u16 rtw_get_cur_max_rate(struct adapter *adapter);
 
 #endif
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
