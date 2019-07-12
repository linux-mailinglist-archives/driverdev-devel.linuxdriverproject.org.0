Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F5E667A3
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 09:18:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1182188309;
	Fri, 12 Jul 2019 07:18:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9LIi-jT5gAcH; Fri, 12 Jul 2019 07:18:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 23D2B882E0;
	Fri, 12 Jul 2019 07:18:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFDD41BF255
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:18:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AAA268763C
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:18:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HWJ-e8uznIvV for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 07:18:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1816587633
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 07:18:18 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id o13so4113143pgp.12
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 00:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ptmKuuLdADg6w87HTfOcndlFs7Gd3e3JTYJIYLzUg5A=;
 b=qq16aU5YU2EDzTD1XEjAkjVU96q1MEA5b000nxEtuUZ2FIruixUdLN3DksgRRihaxU
 cJQNTrZT4emo0lE0OTw2KXWTP0yOi1TcSVXQOeIAUNhPBKHSgkOWIvhos662nHWS8r83
 dyuPXO9TrQOd9k92iW8XxznXuNxEUhJCBH+dip3CEIFQAp7uANQwNd2BrUOjLC14ViPr
 Jzb3ajgpaU3R8lKfWNWGYJ/fgVrJ6UKpJasPxIzbnNcNtHY5ANGL9HabBEPawKAc1UZ+
 eGVeoJdskXfWdOj1S/oMj1t9ffC1BStQI4h7nELtGjbxbCxfclRydNTn2Wgk/gtQHcj0
 tXXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ptmKuuLdADg6w87HTfOcndlFs7Gd3e3JTYJIYLzUg5A=;
 b=FSlRSlSIA8b8Z8lCqemtQ/tp0VlqL+SfbsG7mcVh2G8xCpb9qmOTQMahcSvC+tz/qE
 kBnGKUegoYkB/c/Q+WBzAx+9BE1IN/mOgblQ/sTjgkjLPt0kb8Wz6yNLqvSemVAyQYgA
 MOZ/yXRa9JioArnmnqJ0slAc9tQuCpyWiMkRUj/5HHJL91fu95d17DbSMIcxGYcL7kWv
 tg99CwNf3QHHA2G95CfUbRSuMJ0Z6bF1RZO3ueS0QheCAdvbHybXd8iGnOepqXS2lcEC
 VOiOQ0PkDSEP6w7kivZivMr5ABL7EkcYEE2FHrMqxZsVwJtueL6gWvokhAJ5jxezyIym
 vXlA==
X-Gm-Message-State: APjAAAULapywo8IrU9b9bc9Hc5iSUeOZ467XDaIvLpTBXsjCsddsTiZO
 YaVSFBwJPmXeVwXvuSKI5Lw=
X-Google-Smtp-Source: APXvYqwKqI894Lbu7lrYHfrmgGyyRJ9cwVaQ1QWjjQkfVgmp1xhwZeA0PnbR2n7n9TpVwR3By/AkXw==
X-Received: by 2002:a65:52ca:: with SMTP id z10mr9318645pgp.424.1562915897146; 
 Fri, 12 Jul 2019 00:18:17 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id b126sm14019422pfa.126.2019.07.12.00.18.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 00:18:16 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 5/8] staging: rtl8188eu: Remove function rtw_modular64()
Date: Fri, 12 Jul 2019 12:47:42 +0530
Message-Id: <20190712071746.2474-5-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190712071746.2474-1-nishkadg.linux@gmail.com>
References: <20190712071746.2474-1-nishkadg.linux@gmail.com>
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

Remove function rtw_modular64 as all it does is call do_div.
Replace call to rtw_modular64 with call to do_div.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c       | 2 +-
 drivers/staging/rtl8188eu/include/osdep_service.h | 2 --
 drivers/staging/rtl8188eu/os_dep/osdep_service.c  | 5 -----
 3 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 89babcb12d02..994392ac249b 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -1298,7 +1298,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 			struct mlme_ext_priv	*pmlmeext = &Adapter->mlmeextpriv;
 			struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
 
-			tsf = pmlmeext->TSFValue - rtw_modular64(pmlmeext->TSFValue, (pmlmeinfo->bcn_interval*1024)) - 1024; /* us */
+			tsf = pmlmeext->TSFValue - do_div(pmlmeext->TSFValue, (pmlmeinfo->bcn_interval*1024)) - 1024; /* us */
 
 			if (((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) || ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE))
 				StopTxBeacon(Adapter);
diff --git a/drivers/staging/rtl8188eu/include/osdep_service.h b/drivers/staging/rtl8188eu/include/osdep_service.h
index cfe5698fbbb1..c0114ad79788 100644
--- a/drivers/staging/rtl8188eu/include/osdep_service.h
+++ b/drivers/staging/rtl8188eu/include/osdep_service.h
@@ -80,8 +80,6 @@ void rtw_free_netdev(struct net_device *netdev);
 #define FUNC_ADPT_FMT "%s(%s)"
 #define FUNC_ADPT_ARG(adapter) __func__, adapter->pnetdev->name
 
-u64 rtw_modular64(u64 x, u64 y);
-
 /* Macros for handling unaligned memory accesses */
 
 #define RTW_GET_BE24(a) ((((u32)(a)[0]) << 16) | (((u32) (a)[1]) << 8) | \
diff --git a/drivers/staging/rtl8188eu/os_dep/osdep_service.c b/drivers/staging/rtl8188eu/os_dep/osdep_service.c
index 105f3f21bdea..69d4b1d66b6f 100644
--- a/drivers/staging/rtl8188eu/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8188eu/os_dep/osdep_service.c
@@ -59,11 +59,6 @@ void rtw_free_netdev(struct net_device *netdev)
 	return;
 }
 
-u64 rtw_modular64(u64 x, u64 y)
-{
-	return do_div(x, y);
-}
-
 void rtw_buf_free(u8 **buf, u32 *buf_len)
 {
 	*buf_len = 0;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
