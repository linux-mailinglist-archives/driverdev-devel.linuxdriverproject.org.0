Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D0C10704
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 May 2019 12:36:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C50386360;
	Wed,  1 May 2019 10:36:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aLFMPV2lIEGO; Wed,  1 May 2019 10:36:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 744AA86108;
	Wed,  1 May 2019 10:36:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F5FC1BF947
 for <devel@linuxdriverproject.org>; Wed,  1 May 2019 10:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7C39786357
 for <devel@linuxdriverproject.org>; Wed,  1 May 2019 10:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hhDgHAXqRCIc for <devel@linuxdriverproject.org>;
 Wed,  1 May 2019 10:36:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4F89086108
 for <devel@driverdev.osuosl.org>; Wed,  1 May 2019 10:36:07 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id n2so8128269pgg.13
 for <devel@driverdev.osuosl.org>; Wed, 01 May 2019 03:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=uepw+mfuloh+jLBG3kb0aMinc0ROEt2j9Im/Cxk8ZGs=;
 b=dhtcXE4Z7Tclim9+rYNg6EgB1hHMUgXE00H3zIe7f1At8ET0Um0TQ8lxymeI+DKd9F
 NTr8QVV7kvcVtnxXK08dtVEQAC5pzEKTQJOv1YyxC5cKkj2SXTkEUxg6oureGlT9MdSW
 vkhzLO6W0lJby9vVv6c7/GKpB+U0wspH1VRGsMAKlHFdcG/zsMkn6lYFkJE+wkpG/Beb
 BK1w918Memkj9K4fNEU7JB/W1qVvv0L6wHA7su16cVyEuoyZtE5dNNXZNIrfYq1FtsU/
 Wwm30/EXDm1YyXx0x1PokydFNSGk+y6+jvcUbhtP1H/jqPw9U24mvEPt62/MHDPg5BtV
 T2GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uepw+mfuloh+jLBG3kb0aMinc0ROEt2j9Im/Cxk8ZGs=;
 b=d3X4QduxjmC4EO6JO5kDzcenILtrbXqq9bKCcB3xOwFUGWoSq5bEHFDRoLMKozSbsY
 Mixr9OSJPfuz7nZEo/72PoX7wQ5GmGX9T5C098myR84uMJxXkF8QGW1OjKzT5FZQ0bU1
 Cov1Cmv0VTarmqwOd3B5U+TWZoj7qDV7CsiOckMDXEyFrJMjrf7V+Q0hFvqqK3NG26QW
 SxZoKl17drovLkkkwcIE4SZWEnxKmtaTDvqGee3htUh8BaiDnXQUs+dRZW+v4MKH3MQy
 uOUDP5Y4goaycC0CZQkHbGNMrn6CYKm3Na9G5n+HNb91cj4XOmgtvf8YTjk9qTZHvG4Y
 AzjA==
X-Gm-Message-State: APjAAAUBZ/G78R9b9ZgdopjFsDoCYji3ncqFfIXhGaKO3hAGDcSa0gEq
 1Xm6QOOQeH8s/s6l9N+o5zg=
X-Google-Smtp-Source: APXvYqxBQq3NVY3DfQ3GqA7F81Kl3BhX3fpO/89q/Erx07WaIF59Pt4Tt7xDXd/ZOc4a5+zfJ4jMAw==
X-Received: by 2002:a63:165f:: with SMTP id 31mr73874636pgw.321.1556706966862; 
 Wed, 01 May 2019 03:36:06 -0700 (PDT)
Received: from localhost.localdomain ([103.87.57.94])
 by smtp.gmail.com with ESMTPSA id 13sm56012563pfi.172.2019.05.01.03.36.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 03:36:06 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: core: Use !x in place of NULL comparison.
Date: Wed,  1 May 2019 16:05:47 +0530
Message-Id: <20190501103547.10095-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, julia.lawall@lip6.fr,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, hadess@hadess.net,
 Vatsala Narang <vatsalanarang@gmail.com>, Larry.Finger@lwfinger.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Avoid NULL comparison, compare using boolean operator.

Issue found using coccinelle.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_io.c      | 2 +-
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_io.c b/drivers/staging/rtl8723bs/core/rtw_io.c
index d341069097e2..a92bc19b196a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_io.c
+++ b/drivers/staging/rtl8723bs/core/rtw_io.c
@@ -156,7 +156,7 @@ int rtw_init_io_priv(struct adapter *padapter, void (*set_intf_ops)(struct adapt
 	struct io_priv *piopriv = &padapter->iopriv;
 	struct intf_hdl *pintf = &piopriv->intf;
 
-	if (set_intf_ops == NULL)
+	if (!set_intf_ops)
 		return _FAIL;
 
 	piopriv->padapter = padapter;
diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
index 67b8840ee2fd..bdc52d8d5625 100644
--- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
@@ -316,7 +316,7 @@ u32 rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
 	struct	sta_priv *pstapriv = &padapter->stapriv;
 	struct hw_xmit *phwxmit;
 
-	if (psta == NULL)
+	if (!psta)
 		goto exit;
 
 
@@ -520,7 +520,7 @@ struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 	u8 *addr;
 	u8 bc_addr[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 
-	if (hwaddr == NULL)
+	if (!hwaddr)
 		return NULL;
 
 	if (IS_MCAST(hwaddr))
@@ -565,7 +565,7 @@ u32 rtw_init_bcmc_stainfo(struct adapter *padapter)
 
 	psta = rtw_alloc_stainfo(pstapriv, bcast_addr);
 
-	if (psta == NULL) {
+	if (!psta) {
 		res = _FAIL;
 		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_, ("rtw_alloc_stainfo fail"));
 		goto exit;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
