Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1334315841F
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 21:09:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B042E84AAD;
	Mon, 10 Feb 2020 20:09:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ysz6QkB36Pxe; Mon, 10 Feb 2020 20:09:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E0D7E83E0F;
	Mon, 10 Feb 2020 20:09:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CADE81BF29A
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 20:09:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C6E6C204A9
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 20:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id THI0cSvtrUqr for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 20:09:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 8BF71203E3
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 20:09:26 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id t23so647836wmi.1
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 12:09:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wKboNi//DgTEz5deRYoAuburODisq7rqrYp491IRSic=;
 b=M2/a83Nm4BdBUv9gXQ/mBPZMXXPBjlTQ+Of0m9y1Zsokt99NGzfHs9u8XYqi6MfyOe
 h28q90RGkIjP5glo6hbfrQe2k57+voxZZAHegwY3sN786x/H7mdgHIpDMp0/iFZaLPsS
 WbUiG6WUI7q9ndTBaj3vqBwU0gta6SCa+/OP0ZKiVgwJufZXdcy7j4qVjhao+7zWpBru
 FfHig8sNpO7befw8M5UjR8tfdYhNkd4A5gO9qApA0A1GQCKZcXSFuhLd622nae8EOo/J
 lKqgkG6KZWgIkRge3HJYTceFH7HKHap8isl6Zr95ubnfLSk4bsSlQXt+LNfqywtRomtF
 ZoEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wKboNi//DgTEz5deRYoAuburODisq7rqrYp491IRSic=;
 b=COfXiW2Y7dmBBIHyYfplun8TAo3FuxSoQ9i0D+FDlOX8oCR9xhA3KLSeH6t2chsAQk
 hNvmtc3kXih0swK3Yos06zm2ZlnIFUgtipHNp5Zwh6cG4+f12/O6tVki/rQsjhwyCwcg
 PY+3NaV94fVcgW/+tfuSbCOrhKuaq6hGMb7auCzIe6+CkF23bE0hNmQ2TlmWUKWF0kOV
 bhvPmK//w6MZUx8owT8T54UB/QZ3M7UhEtc/qCcud/a7rsgpj5qlXI8xattsQK4zEJZ5
 DahIatKvtWUCd4Xl4dK5iThKDPwhc/NatCNbo4qkLMu9/y3XCw3p/ikowUmSo/kYogH8
 yKZw==
X-Gm-Message-State: APjAAAV5aXdbv+yKkVeox8SfI4MJnFPWO/0UkvPKNRBw0SdnkKuHncGh
 Nmz0GgGONn1xWPuV+ns0dVs=
X-Google-Smtp-Source: APXvYqxcQjd5wkMyTqNHabVM+z8hjry3oeYMmwlpO1fz7/AEmC8sk+oRxeZyAaE+u078UHf+e5ERGQ==
X-Received: by 2002:a1c:7f87:: with SMTP id a129mr708835wmd.156.1581365364842; 
 Mon, 10 Feb 2020 12:09:24 -0800 (PST)
Received: from localhost.localdomain
 (ipservice-092-219-207-036.092.219.pools.vodafone-ip.de. [92.219.207.36])
 by smtp.gmail.com with ESMTPSA id s139sm518577wme.35.2020.02.10.12.09.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 12:09:24 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: rename variable pnetdev -> netdev
Date: Mon, 10 Feb 2020 21:08:30 +0100
Message-Id: <20200210200830.22868-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.25.0
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

Rename the local variable pnetdev in rtw_alloc_etherdev_with_old_priv
to avoid hungarian notation and clear the last checkpatch warning in
the file osdep_service.c.

rtl8188eu/os_dep/osdep_service.c:32: WARNING: line over 80 characters

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/osdep_service.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/osdep_service.c b/drivers/staging/rtl8188eu/os_dep/osdep_service.c
index 4ba2378a1bb8..4d6d0347ab8e 100644
--- a/drivers/staging/rtl8188eu/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8188eu/os_dep/osdep_service.c
@@ -26,17 +26,17 @@ void _rtw_init_queue(struct __queue *pqueue)
 
 struct net_device *rtw_alloc_etherdev_with_old_priv(void *old_priv)
 {
-	struct net_device *pnetdev;
+	struct net_device *netdev;
 	struct rtw_netdev_priv_indicator *pnpi;
 
-	pnetdev = alloc_etherdev_mq(sizeof(struct rtw_netdev_priv_indicator), 4);
-	if (!pnetdev)
+	netdev = alloc_etherdev_mq(sizeof(struct rtw_netdev_priv_indicator), 4);
+	if (!netdev)
 		return NULL;
 
-	pnpi = netdev_priv(pnetdev);
+	pnpi = netdev_priv(netdev);
 	pnpi->priv = old_priv;
 
-	return pnetdev;
+	return netdev;
 }
 
 void rtw_free_netdev(struct net_device *netdev)
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
