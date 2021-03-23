Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE09345EB7
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 13:58:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 947EB404CA;
	Tue, 23 Mar 2021 12:58:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yPANS8PwL4Ye; Tue, 23 Mar 2021 12:58:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E568404BE;
	Tue, 23 Mar 2021 12:58:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC8051BF371
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E8B70404BE
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mg5EVz_QScgj for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 12:58:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00A61404BD
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 12:58:18 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id b16so23348958eds.7
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 05:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=19IRUc5+ZB5fvu32721d6m/+pb2FwSn7JGumPUCdqeA=;
 b=Ygjjhgvl78RcNFPtaR3HwKk4TODDWtrX1LMPQmeA974UcsZTwzEvOe4tZfycjw3Hl3
 +RsNbOHBBGevua7JUAwlJXpfcDv6W3UiY7Lq2005RLp790DhV6lDgPcjvuh/LPFHx5xI
 i/ISVoDaLOGU2sO3JZFFnztC2eouEBJ1cDGr88cU0gcBqAtb3UbZbCSJYjZo/lHesxIN
 a2yeBUhtgXwkiqUHZTlC7+SXmLen3seNE0Yojzjg1YiASkUpg4KclsX3fQQfQTEtMiBA
 MLdzUsn2sPa9EsWuPHZ6YTUX/e5lKFnDtLc2y6bQXqBe0BbvHhmn/BS18c6uq59AEkHt
 XV7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=19IRUc5+ZB5fvu32721d6m/+pb2FwSn7JGumPUCdqeA=;
 b=ssrzlMYEiYxMzh+uNPcJJPGgDXAEH3fAjvsT1g8nRfO8LCiCyK1lMKvN+XfMWEcsup
 39/u2xtBKjbmXdXG2fy/2+n2pEfQuEO+t5jVTAI6KC2cVygdJGRYprlAFXIoHoYPnWvD
 4kGSyopPUwW9iJ3HU75yXd3M7fPR3OIaLkigQs0S44Xw4p2yE+7Oz4R7f4af8ZfwB0dI
 oo2QDo+2bTwEizf8W7EBBuQVHW3u/G/EL2xPNsPijve+6H/2AKDDpKBGBvowGQjxg9b4
 X055WxxNUE4KIfVnE+1kV/CA1t3E5ZbBsE62SjLJAcr9Dvoq2uHKOGhj0+gtkLmmfDNr
 qCNA==
X-Gm-Message-State: AOAM533Tj8w1bZ04Ia9+kc8ooXiYjwOi7VWSNf1Mr4scmh8+rzCKt1Dy
 Ro98QsBfmymN/VXeNKsCLZ9Qiqkx16lsvQ==
X-Google-Smtp-Source: ABdhPJwf7l8iikvh8N4tE++kVgRui37jnS3XosQGbCYcxCDvMUkAGI8e5BH2yIQIuECzy4hBzlX1IQ==
X-Received: by 2002:aa7:db53:: with SMTP id n19mr4616284edt.330.1616504297222; 
 Tue, 23 Mar 2021 05:58:17 -0700 (PDT)
Received: from agape ([151.57.211.10])
 by smtp.gmail.com with ESMTPSA id lu5sm11283699ejb.97.2021.03.23.05.58.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 05:58:16 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/9] staging: rtl8723bs: moved function prototype out of
 core/rtw_ioctl_set.c and core/rtw_mlme.c
Date: Tue, 23 Mar 2021 13:56:29 +0100
Message-Id: <da654adf1295123adca07e3e5809e256dd4def69.1616503354.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1616503354.git.fabioaiuto83@gmail.com>
References: <cover.1616503354.git.fabioaiuto83@gmail.com>
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
index d6d3c39a69c6..31424bf2d926 100644
--- a/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
+++ b/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
@@ -22,6 +22,8 @@ u8 rtw_set_802_11_connect(struct adapter *padapter, u8 *bssid, struct ndis_802_1
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
