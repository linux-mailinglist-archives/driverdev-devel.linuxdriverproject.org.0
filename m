Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F21CB214D28
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jul 2020 16:36:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF59E8813C;
	Sun,  5 Jul 2020 14:36:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id svTHEZ0yvPG0; Sun,  5 Jul 2020 14:36:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B25FD8813E;
	Sun,  5 Jul 2020 14:36:12 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E93D1BF36F
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9B617887D3
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UdZ8FTLViQ6q
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D7081887B3
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:08 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id o38so27180773qtf.6
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 05 Jul 2020 07:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Sx5/1vcogzavzK2rKv1PhFCty04Pv813I6Tq6fAZhBU=;
 b=G7xu1RTY7jYRcB6kTYVO0+oP7CQk0uhl8mEGvc8ibVC0XmcKyq+FC+I2GLaDU0hHHj
 jZVpRBw57LNmujzHPN18a2DKvAxo+SYcIFFI1z4R9IsRyUBadyiSW9j7m1VjSNLc6WGU
 U/x38zUocXIgeIQVaXbGTF20HAYdxzeiEb2iUYMc9o0DeAYUgW3PpfDAURUuQ3jw0L+j
 lsm3PMUTtLbVodhjoMWM+G2oIHiKEIdWNaoza/qrXIDDghWe/s75hY+3vEgVx64VPKyN
 hAlcXBo6c3FPSPYrcyv275HouV1bEoStozuUIeXwecPCPwqg/Nh08TtaqXMYOn2VcGc9
 Lc0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Sx5/1vcogzavzK2rKv1PhFCty04Pv813I6Tq6fAZhBU=;
 b=pkxsU8Qx6yeNrHltSG044KfOhlbJOMKBLFlWPVpJtnOCQJh0bUVXB8+c80E6DTle9E
 631ZLYtIHpulv5MMpwT3lFaJ70Y3aj/D6JpRqoUmyxEycvFm7lwgdNVRLwG/ym/70O2W
 JyUaG7sg9az7MEmc11kA8RKysp8bq2aBM32VGpXnF2SpTzWTdAGB7n+8/gpibGZkXDJW
 UWtM2FFGP5HK+hpDrqlkc2gEL8Vozg6finTvAH2SwpmiG2Lh6YYJyyZw1leo3oyscJwr
 pqZPpMWAGgQt63tLHzUFMsCKw7PNw0qFbxUZBYoJnWdcbF2WCydulw/+lLkKFF3iZtTE
 mwWw==
X-Gm-Message-State: AOAM533Lk9lxR6mgcBiwvbxmj9qv6wn1mWxSsZGyKRUO/BrLHyR0V7jr
 LdpbdiiwHmuIegt7AKK+1LA=
X-Google-Smtp-Source: ABdhPJxoCtAph/runQGay9wNHhQ6CrLfEigB8T78LgHSs5TAHCrdx6NwtBB/ndnLHC6QLeRf5/1Lhw==
X-Received: by 2002:ac8:d86:: with SMTP id s6mr16272800qti.343.1593959767874; 
 Sun, 05 Jul 2020 07:36:07 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:7481:1475:569e:3621:89b:963e])
 by smtp.gmail.com with ESMTPSA id
 j198sm15903286qke.71.2020.07.05.07.36.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jul 2020 07:36:07 -0700 (PDT)
From: Mauro Dreissig <mukadr@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH v2 2/5] staging: rtl8712: Simplify expressions with boolean
 logic
Date: Sun,  5 Jul 2020 11:35:49 -0300
Message-Id: <20200705143552.9368-3-mukadr@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200705143552.9368-1-mukadr@gmail.com>
References: <20200705143552.9368-1-mukadr@gmail.com>
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
