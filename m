Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEEA33C3C7
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:13:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 914834DFF8;
	Mon, 15 Mar 2021 17:13:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2MHPjteX72Ta; Mon, 15 Mar 2021 17:13:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 551B34D751;
	Mon, 15 Mar 2021 17:13:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B5321BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68954430C7
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id myLIxoIzlUEN for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A87D430C0
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:42 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id p7so56192152eju.6
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=xB33FDO4UEYgYxHZECh5xA06icjAah7DgO/SAqbF9G8=;
 b=TRewqaDYealn9PXZ1zpRnIUsbshLvw+8MjiU0FzQYwTNr0hGqJJKSIr0MQSasv9HJA
 ZV63JnHXYTGoo3iCPKS0OywOXPcVI8OOuG6a1hqQtsgipO7D4aNBSDDqTfLl0RUWu6DD
 oskA89dcPSIyCOr/WkHMpZdNtRiHdrgfDNBYMPip4vDeSR+pjoqdJK/RznfQkX3p5Afh
 +l7jIVosUp/w07laFaBz0Yglor8h7S9dJLTP4/GSfb0YCwOrQXXWDvHss+7YPlyDhgz9
 HIJXhqtMUdneRiccjRaUgeb+BBVQejaASSOwEJ3RfXJ54E3fJ/hUl/voT5PwAWFLKuSN
 jcOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xB33FDO4UEYgYxHZECh5xA06icjAah7DgO/SAqbF9G8=;
 b=l7/PgrN3I1VgW+lUwQ3ahWcACFVaYeIguV7hSyk4gDNuRKKUvkuSrzlh3EGUu2YmU8
 +OhCXpsg0PK7G/tIWjEBaJdTUz/jjqOUTntpDa902ETM91HQR1v1FA02djtINN6IUa+b
 IlmyI/HgF3YM+Chdg678uubD7CPkhD3B60J+u/TNQNG5MyjhAMWlmpFzCsuwso6hicnm
 Dp7nmQKx8NuTVGYp29Fr23YcLnNbhKPxy5JSz4Rf98qifXgX5oZp8LE3cuc71tBWwx7O
 wcn3l1RH0xwrIgasPfA0Vu0W6yKy9ASHoug4fNjkxa9BRMuwxhVQ1PKLV/sC0gFqE0//
 JFjw==
X-Gm-Message-State: AOAM531UF+hSiJGOxITA+h7GA6LND/RKRIfNI+1wA0uvGIGUSWBcks2A
 AhDfEwKxk36ihp0mla7sX6A=
X-Google-Smtp-Source: ABdhPJx2EXZIDJe8+ZooItBQDuZHGv0TxT817Url8H0IPdN+x6fqPVY63eT4YfdH50f8zCjsjY4/BQ==
X-Received: by 2002:a17:906:2816:: with SMTP id
 r22mr24446292ejc.2.1615828000977; 
 Mon, 15 Mar 2021 10:06:40 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:40 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 40/57] Staging: rtl8723bs: fix spaces in drv_types.h
Date: Mon, 15 Mar 2021 18:06:01 +0100
Message-Id: <20210315170618.2566-41-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "(foo*)" should be "(foo *)"
    #210: FILE: ./include/drv_types.h:210:
    +#define RGTRY_SZ(field)   sizeof(((struct registry_priv*) 0)->field)

    ERROR:POINTER_LOCATION: "foo *		bar" should be "foo *bar"
    #404: FILE: ./include/drv_types.h:404:
    +	void *		HalData;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #432: FILE: ./include/drv_types.h:432:
    +	void (*intf_start)(struct adapter * adapter);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #433: FILE: ./include/drv_types.h:433:
    +	void (*intf_stop)(struct adapter * adapter);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #435: FILE: ./include/drv_types.h:435:
    +	struct net_device * pnetdev;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #440: FILE: ./include/drv_types.h:440:
    +		struct net_device * old_pnetdev;

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/drv_types.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/drv_types.h b/drivers/staging/rtl8723bs/include/drv_types.h
index 97e8e462d718..649b2fd62abe 100644
--- a/drivers/staging/rtl8723bs/include/drv_types.h
+++ b/drivers/staging/rtl8723bs/include/drv_types.h
@@ -207,7 +207,7 @@ struct registry_priv {
 
 /* For registry parameters */
 #define RGTRY_OFT(field) ((u32)FIELD_OFFSET(struct registry_priv, field))
-#define RGTRY_SZ(field)   sizeof(((struct registry_priv*) 0)->field)
+#define RGTRY_SZ(field)   sizeof(((struct registry_priv *)0)->field)
 #define BSSID_OFT(field) ((u32)FIELD_OFFSET(struct wlan_bssid_ex, field))
 #define BSSID_SZ(field)   sizeof(((struct wlan_bssid_ex *) 0)->field)
 
@@ -401,7 +401,7 @@ struct adapter {
 
 	u32 setband;
 
-	void *		HalData;
+	void *HalData;
 	u32 hal_data_sz;
 	struct hal_ops	HalFunc;
 
@@ -429,15 +429,15 @@ struct adapter {
 	void (*intf_free_irq)(struct dvobj_priv *dvobj);
 
 
-	void (*intf_start)(struct adapter * adapter);
-	void (*intf_stop)(struct adapter * adapter);
+	void (*intf_start)(struct adapter *adapter);
+	void (*intf_stop)(struct adapter *adapter);
 
-	struct net_device * pnetdev;
+	struct net_device *pnetdev;
 	char old_ifname[IFNAMSIZ];
 
 	/*  used by rtw_rereg_nd_name related function */
 	struct rereg_nd_name_data {
-		struct net_device * old_pnetdev;
+		struct net_device *old_pnetdev;
 		char old_ifname[IFNAMSIZ];
 		u8 old_ips_mode;
 		u8 old_bRegUseLed;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
