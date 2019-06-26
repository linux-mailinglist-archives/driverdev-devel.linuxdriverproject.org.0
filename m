Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF5556218
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:11:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FB388683F;
	Wed, 26 Jun 2019 06:11:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xO+HyBDxg-QG; Wed, 26 Jun 2019 06:11:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 714B786834;
	Wed, 26 Jun 2019 06:11:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A02F41BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9D4F221514
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4-2kbyNy6zjx for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:10:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 3BC3420489
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:10:06 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id c85so761482pfc.1
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+Ik6GXJX+mrmwEp9PJ0cASsKpZEkdS7oSDcm6toDT9I=;
 b=S9NS3ntzg5+FEpv76OTttLoADdAgvYR+Z/UEQ3Sz1IIku1rdQYYnMA3RvyoX9taFjy
 4KkKpcsvKgwRtd15wOCIPEQ2ePVptD35R/xfuqsoejeuNwDBZxontpuKpwAEL4mMST25
 jlyOIiTUO9ayKm0Veoj74vKzEone9j9MJusOng6eZgxLI76JluvEMu4rhuZDnPZqAxne
 tqWrd2dMk1hgfmdQP2fU5ZMPzxWI6DiUMPgiX2qbwbJ0a1n0CzCxocBV2J2gjX9w9BLm
 /nbP1a/wxxSGPmem1/+KsJIbM/ModDw0dMHsvb6jz6xhGhVySkuZe/G9FJAvAZcw2mss
 xrZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+Ik6GXJX+mrmwEp9PJ0cASsKpZEkdS7oSDcm6toDT9I=;
 b=PIPg7/B3UjBo8zKXsfJIJXHKUviL1uYeERQb1oxYsWhiaQr+qYNjd3lgP/9TKi/fw7
 onL7kHpoMRXy3mTAmfzjm8V9mbB5cmEK4aVD9QmgSPXqM/LTosMise3XnG1yYykK+/L3
 kKTV8stHpvohncwaa1lXci+ioJeucgCbWTAOUS+z79ymqs2d6q4PRFcd7q0RZ5kQNgfB
 2Dv49PG+65fe75/N5ercdkFzQWcSEzCq4OnszVOcZEdSbdnmdt8hR3zJjRijpmR30atl
 GTImGAd84VbFuH0/x3k03sOE+iZEjwKYOsgeMN8xGDujvg9s3kwFIUAjJi+nmcK31h9w
 luLw==
X-Gm-Message-State: APjAAAU4cxHz2JkjJz+pwql1nScHbcjbfQ2ywZFz5filcybkwlZ29rRT
 NE/7lb2nMCe87CKE/r9hoxuLUgn7
X-Google-Smtp-Source: APXvYqxKV4zQtE/Oy/8KrZ1pwRTXJhozR+pQOKPSjNy0PzG/r1f9TZaN67AdUdstVB04wrnUlkLtEw==
X-Received: by 2002:a17:90a:372a:: with SMTP id
 u39mr2626466pjb.2.1561529405954; 
 Tue, 25 Jun 2019 23:10:05 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id v13sm17613407pfe.105.2019.06.25.23.10.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:10:05 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, larry.finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, devel@driverdev.osuosl.org
Subject: [PATCH 4/9] staging: rtl8712: mp_start_test(): Change return values
Date: Wed, 26 Jun 2019 11:39:36 +0530
Message-Id: <20190626060941.2441-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190626060941.2441-1-nishkadg.linux@gmail.com>
References: <20190626060941.2441-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change return values of function mp_start_test() from _SUCCESS/_FAIL to
0/-ENOMEM and modify call sites accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
index 64fde5325a8e..aa8f8500cbb2 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
@@ -153,7 +153,7 @@ static int mp_start_test(struct _adapter *padapter)
 	struct sta_info *psta;
 	unsigned long length;
 	unsigned long irqL;
-	int res = _SUCCESS;
+	int res = 0;
 
 	/* 3 1. initialize a new struct wlan_bssid_ex */
 	memcpy(bssid.MacAddress, pmppriv->network_macaddr, ETH_ALEN);
@@ -187,7 +187,7 @@ static int mp_start_test(struct _adapter *padapter)
 		r8712_free_stainfo(padapter, psta);
 	psta = r8712_alloc_stainfo(&padapter->stapriv, bssid.MacAddress);
 	if (psta == NULL) {
-		res = _FAIL;
+		res = -ENOMEM;
 		goto end_of_mp_start_test;
 	}
 	/* 3 3. join pseudo AdHoc */
@@ -262,7 +262,7 @@ uint oid_rt_pro_start_test_hdl(struct oid_par_priv *poid_par_priv)
 		return  RNDIS_STATUS_NOT_ACCEPTED;
 	mode = *((u32 *)poid_par_priv->information_buf);
 	Adapter->mppriv.mode = mode;/* 1 for loopback*/
-	if (mp_start_test(Adapter) == _FAIL)
+	if (mp_start_test(Adapter))
 		status = RNDIS_STATUS_NOT_ACCEPTED;
 	r8712_write8(Adapter, MSR, 1); /* Link in ad hoc network, 0x1025004C */
 	r8712_write8(Adapter, RCR, 0); /* RCR : disable all pkt, 0x10250048 */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
