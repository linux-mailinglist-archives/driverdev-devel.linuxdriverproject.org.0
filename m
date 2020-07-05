Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9BB214947
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jul 2020 02:22:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A039885E5;
	Sun,  5 Jul 2020 00:22:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LmdHjD4-ltut; Sun,  5 Jul 2020 00:22:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5A06588558;
	Sun,  5 Jul 2020 00:22:37 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BD52B1BF8C7
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B6FF18918B
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A1xeQ1AYLfrd
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1E97989128
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:35 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id l6so31894682qkc.6
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 04 Jul 2020 17:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Sx5/1vcogzavzK2rKv1PhFCty04Pv813I6Tq6fAZhBU=;
 b=mv9+F2OlsEpj2Ey8JKY224VPvG8h/71cL0pz1DFr6raw+dTnH1QbJVm99gi3cuvRd0
 TJtuyEXyE9Gx9WsOjiGCMYZn6zp6bwUuNNAht+XEt41kJ8YOwVCxzz5IF9RYHdSqDHcd
 /FZpVQhIiTb7M2/L5cP7sN/9LJjb7noygEovCm98mYuX/B/HTMasbfiYKJ8orTlvrXzb
 WVrA51RqnNWGujbRqE6vJXWs/OQQO9tc5RKhL1HEPuP+aLp32r315OQBI0xW9aARPlbm
 5/4bC4ml1Rj8APNO9J6KxKgVVDsM/HR7p+F32YC1OeOrKXQzYJGUxoOw7VoN/4o3S5mt
 a/dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Sx5/1vcogzavzK2rKv1PhFCty04Pv813I6Tq6fAZhBU=;
 b=Mg+KN+VO/R6OiREESq/CgGPV4qqjWbZ13V28w/mRR2u0sG+zwy4129As2N8Y6amctu
 /sbevNR8EREghJZ1zf6DgY0YhKwPA7KUgcEo+kHoXwGFz5YWKEmh0YXKdDkZOIOJ6C5I
 moVrpt/82n3cEfOK9BukRSl5qBwPC50ThJlI1mccUfWDWDI9Sknp6Cm20X4dbTetpNuk
 3b468kJbBnvsWItMkm/Dx1nsy3F8A/ALhFutuOF56GhOXWtGCC3NleUpAK83Y956f26j
 MJzPR5s2vFpJEhSdwRVNxXapf/TWjHAh2GrOg09+EoIxhP0K/bfBUm0SMnXYq5XdJnTB
 fAwg==
X-Gm-Message-State: AOAM5319qgbMTuJJR1sQv5RtRmJNq2343iGNuxk87LblC0jlIoQ3RCjK
 tJ/2vyPffVqTXTSVJAUhUQI=
X-Google-Smtp-Source: ABdhPJyGFMDd2Q6R7Ka8SXqSKg4pvluJdhIpFdwavykKzIlf6wPGKiMKYuZoIV+i7xxnAId0WRwB2w==
X-Received: by 2002:a37:b307:: with SMTP id c7mr32180927qkf.307.1593908554203; 
 Sat, 04 Jul 2020 17:22:34 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:7481:1475:1a4c:230b:91f2:972d])
 by smtp.gmail.com with ESMTPSA id v62sm10254072qkb.81.2020.07.04.17.22.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jul 2020 17:22:33 -0700 (PDT)
From: Mauro Dreissig <mukadr@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH 2/5] staging: rtl8712: Simplify expressions with boolean logic
Date: Sat,  4 Jul 2020 21:22:12 -0300
Message-Id: <20200705002215.17968-3-mukadr@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200705002215.17968-1-mukadr@gmail.com>
References: <20200705002215.17968-1-mukadr@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Simplify some expressions by using boolean operations.

Signed-off-by: Mauro Dreissig <mukadr@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c     | 4 ++--
 drivers/staging/rtl8712/osdep_intf.h   | 2 +-
 drivers/staging/rtl8712/rtl8712_recv.c | 5 ++---
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 1f5ba9cbe951..d3fc6fa9a715 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -99,12 +99,12 @@ static void fill_fwpriv(struct _adapter *adapter, struct fw_priv *fwpriv)
 	default:
 		fwpriv->rf_config = RTL8712_RFC_1T2R;
 	}
-	fwpriv->mp_mode = (regpriv->mp_mode == 1) ? 1 : 0;
+	fwpriv->mp_mode = (regpriv->mp_mode == 1);
 	/* 0:off 1:on 2:auto */
 	fwpriv->vcs_type = regpriv->vrtl_carrier_sense;
 	fwpriv->vcs_mode = regpriv->vcs_type; /* 1:RTS/CTS 2:CTS to self */
 	/* default enable turbo_mode */
-	fwpriv->turbo_mode = ((regpriv->wifi_test == 1) ? 0 : 1);
+	fwpriv->turbo_mode = (regpriv->wifi_test != 1);
 	fwpriv->low_power_mode = regpriv->low_power;
 }
 
diff --git a/drivers/staging/rtl8712/osdep_intf.h b/drivers/staging/rtl8712/osdep_intf.h
index 2cc25db1a91d..9e75116c987e 100644
--- a/drivers/staging/rtl8712/osdep_intf.h
+++ b/drivers/staging/rtl8712/osdep_intf.h
@@ -17,7 +17,7 @@
 #include "osdep_service.h"
 #include "drv_types.h"
 
-#define RND4(x)	(((x >> 2) + (((x & 3) == 0) ?  0 : 1)) << 2)
+#define RND4(x)	(((x >> 2) + ((x & 3) != 0)) << 2)
 
 struct intf_priv {
 	u8 *intf_dev;
diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index c513cda2a49e..d83f421acfc1 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -143,9 +143,8 @@ static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
 	/*TODO:
 	 * Offset 0
 	 */
-	pattrib->bdecrypted = ((le32_to_cpu(prxstat->rxdw0) & BIT(27)) >> 27)
-				 ? 0 : 1;
-	pattrib->crc_err = (le32_to_cpu(prxstat->rxdw0) & BIT(14)) >> 14;
+	pattrib->bdecrypted = (le32_to_cpu(prxstat->rxdw0) & BIT(27)) == 0;
+	pattrib->crc_err = (le32_to_cpu(prxstat->rxdw0) & BIT(14)) != 0;
 	/*Offset 4*/
 	/*Offset 8*/
 	/*Offset 12*/
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
