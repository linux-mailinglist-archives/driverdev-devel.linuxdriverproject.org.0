Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB3E29AB0B
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 12:41:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A00A120027;
	Tue, 27 Oct 2020 11:41:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HPi41XB4s0yg; Tue, 27 Oct 2020 11:41:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 746AD2044C;
	Tue, 27 Oct 2020 11:41:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 804801BF859
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 11:41:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7CD2B87061
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 11:41:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ov-r1SzxR5WL for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 11:41:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AF6038705B
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 11:41:20 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id z5so1742021ejw.7
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 04:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3/wYkEIdKWYXJ7kNDamm5GXkJZDwOHBhS+XfxKLG6sk=;
 b=ZE7fjC60eVK2+kr06vcefzy9RmoNTZcsHKV/KcIS6zz5AJjM7kmzqFfDhYl+n9sPtj
 xrtYoR8dzAX+4eUyA93br1d0Xu0FdJZLEObXbCbbst19zu9lAKDsZWk3B8KmbadfqnrV
 vEnMrEwT8bNzLNnoT9vHPfglClE2cgpNys1Qrwo7EjutP2Tn3GWYfJX3FZNHtSGmkd7r
 ICLG3PVyzffsJXC4rp1gqEpuNk1ZuuqivtQmYfaIt/8oD/fGWIXyIizoUrSrvC7ms1pg
 aFpauqvX1U5M0eMintF53Q3Wq7Mfzkb1a7uQraYuv1YIRERmmQO2oB37UCKjBUHuB/Sb
 hTBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3/wYkEIdKWYXJ7kNDamm5GXkJZDwOHBhS+XfxKLG6sk=;
 b=Gz52ppGmbEFE4lCrXk57KRJ8wcjmHAkHgtflnRkGn71Dh55OL8vCEKSBKgkkHTkxKL
 LZjlb7On3O/DGyS0MLrkF46Cd0jt9TZirZupEKvQ1x/d7HnG+IIe6QPLSgLoRPdIGrxF
 kHic8mEfvuUf4Xvz7lhfC8AhyMnRL4qpOBO5sPIIi7Qg6PwYfvVF3i2jPpcMTyCEl+p3
 ixjWp2QSOaYHa6J8PJ8xLKbDx8iBt4Up3tpJ6NquMqplj95UMJOdHECw8hd6cYiRsa8b
 QwY2rdWmvtUFSmGsS9MINT0x25UAX+o0o+buhGHXxF/GkdqXYmY3N799PryulfvVCSHp
 RQWw==
X-Gm-Message-State: AOAM5334IYHj9nSZYndVphEKcTdaV2NMYMTwJo5T4YgxeJuUZOnYVBc6
 oOETnYUYvi7HX2Jjyp3k7Fk=
X-Google-Smtp-Source: ABdhPJxrYIvtub/cBlTtMWYQK0FXvqTA9bAYHcnyNyQ2oGvgq9XLPhZtMF549IQ1auqT0MlzRQSqig==
X-Received: by 2002:a17:906:1e45:: with SMTP id
 i5mr1886739ejj.203.1603798879087; 
 Tue, 27 Oct 2020 04:41:19 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-002-204-140-230.002.204.pools.vodafone-ip.de. [2.204.140.230])
 by smtp.gmail.com with ESMTPSA id l12sm804848edt.46.2020.10.27.04.41.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 04:41:18 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: remove commented defines
Date: Tue, 27 Oct 2020 12:40:43 +0100
Message-Id: <20201027114043.22318-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.29.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove commented defines from ioctl_linux.c. They are included from
include/uapi/linux/wireless.h. Also clears a checkpatch warning.

WARNING: Block comments use * on subsequent lines

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 6ac904ceb95e..6f42f13a71fa 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -906,17 +906,6 @@ static int rtw_wx_get_range(struct net_device *dev,
 /*  If the driver doesn't provide this capability to network manager, */
 /*  the WPA/WPA2 routers can't be chosen in the network manager. */
 
-/*
-#define IW_SCAN_CAPA_NONE		0x00
-#define IW_SCAN_CAPA_ESSID		0x01
-#define IW_SCAN_CAPA_BSSID		0x02
-#define IW_SCAN_CAPA_CHANNEL		0x04
-#define IW_SCAN_CAPA_MODE		0x08
-#define IW_SCAN_CAPA_RATE		0x10
-#define IW_SCAN_CAPA_TYPE		0x20
-#define IW_SCAN_CAPA_TIME		0x40
-*/
-
 	range->enc_capa = IW_ENC_CAPA_WPA | IW_ENC_CAPA_WPA2 |
 			  IW_ENC_CAPA_CIPHER_TKIP | IW_ENC_CAPA_CIPHER_CCMP;
 
-- 
2.29.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
