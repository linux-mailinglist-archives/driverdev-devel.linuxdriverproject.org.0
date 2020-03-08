Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B5317D5D4
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Mar 2020 20:22:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1B33087E6E;
	Sun,  8 Mar 2020 19:22:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QeqKxse7hL1V; Sun,  8 Mar 2020 19:22:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E4F387D05;
	Sun,  8 Mar 2020 19:22:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 925211BF319
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 19:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8B1F220501
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 19:22:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mpQj0Y6xu5Pn for <devel@linuxdriverproject.org>;
 Sun,  8 Mar 2020 19:22:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 381FD203D8
 for <devel@driverdev.osuosl.org>; Sun,  8 Mar 2020 19:22:08 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id t14so3084743plr.8
 for <devel@driverdev.osuosl.org>; Sun, 08 Mar 2020 12:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=CHPt46wsL19wRxnDRWINkgudvnaGkseqZPfxEjONV8o=;
 b=qYm3VcqXfjE+ASqxyrrUExTc/0TgxqnlC3o+J2cpfIsm3q9byi/yC0npQtxR9dAk+s
 1mzKYSvWwPsweZiIV1dgkuk5F5qhaMldW4sA8Xi65wSuOgHlcLoKNDfYvRpY5wxZOecI
 yc4ffsS5KXe34PBpE1M+ZfUtGh3Obq3y26g+nxA46NQLeY08vd0DG4sNYVSjUjxIGmwI
 wr9itJUheZpQsiLzFZWFixH894oyiy12DSfxQmrjOujwJ+hiG0fwahUqicgP8rkFtQ8x
 9Cwl5W1I0X8KQLTqoDtorF5B9iC62i4gsvZF4WQh7MsB8kmJHBwI5GYulq1cnZondrQt
 Vy8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=CHPt46wsL19wRxnDRWINkgudvnaGkseqZPfxEjONV8o=;
 b=C/anfn+1UQM7JjpS4TpDloCRBtd3tm3M42EU8LGomowj/UnSxAUwx+kyJSksPxQQDH
 HU2i44MpudkzF1A6rlAyCst3Ebj7N9JwZU8BelrCLAHBxfLJxGHU68wDg/xpJBX/xRxU
 VGpskC4JERNyzAekRTDLBgs9sBza8vQFPIsWWiYw9HnY/fic33Z3ZtJ4S9WTzb/GlR4z
 hrENav+azs5u0KAzfqcKfNsOkbAwOd1ygzNBFefBnwOZbLo6ffr6oS2bNUB37TOleRdp
 1auKgDHt+4XEgITn6wPw5VDjt14e7to3DkR5bxLj9tPg2JNj3L06qJXIXCFlA1mZ0272
 UIvQ==
X-Gm-Message-State: ANhLgQ2kkcJFRZm+Y/TGcqgOT9JsrsGnt8NVd4l5FKuq4flOXz/dIxzk
 /al/OES5mqr+qWtK3ngc13c=
X-Google-Smtp-Source: ADFU+vvqILrSUB/7kKFUu3sBN9G1y2gZ6tW2m1svtr3vjV5NstoQ+8zH6d37OHRZLLBXimuK961lsw==
X-Received: by 2002:a17:902:6b86:: with SMTP id
 p6mr12834064plk.315.1583695327755; 
 Sun, 08 Mar 2020 12:22:07 -0700 (PDT)
Received: from localhost.localdomain ([1.23.250.201])
 by smtp.gmail.com with ESMTPSA id q12sm42157418pfh.158.2020.03.08.12.22.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Mar 2020 12:22:07 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, sbrivio@redhat.com,
 daniel.baluta@gmail.com, nramas@linux.microsoft.com, hverkuil@xs4all.nl,
 shreeya.patel23498@gmail.com
Subject: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around
 operator
Date: Mon,  9 Mar 2020 00:51:52 +0530
Message-Id: <20200308192152.26403-1-shreeya.patel23498@gmail.com>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add space around & operator for improving the code
readability.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index e764436e120f..8da955e8343b 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -924,7 +924,7 @@ static void rtw_joinbss_update_network(struct adapter *padapter, struct wlan_net
 	/* update fw_state will clr _FW_UNDER_LINKING here indirectly */
 	switch (pnetwork->network.InfrastructureMode) {
 	case Ndis802_11Infrastructure:
-		if (pmlmepriv->fw_state&WIFI_UNDER_WPS)
+		if (pmlmepriv->fw_state & WIFI_UNDER_WPS)
 			pmlmepriv->fw_state = WIFI_STATION_STATE|WIFI_UNDER_WPS;
 		else
 			pmlmepriv->fw_state = WIFI_STATION_STATE;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
