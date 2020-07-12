Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDA421C948
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Jul 2020 14:33:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B470E2547E;
	Sun, 12 Jul 2020 12:33:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 47A6dpMeZdWg; Sun, 12 Jul 2020 12:33:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 64961204C5;
	Sun, 12 Jul 2020 12:33:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF1FF1BF576
 for <devel@linuxdriverproject.org>; Sun, 12 Jul 2020 12:33:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D3B7888C34
 for <devel@linuxdriverproject.org>; Sun, 12 Jul 2020 12:33:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yJ92QJXRipUb for <devel@linuxdriverproject.org>;
 Sun, 12 Jul 2020 12:33:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AFFF288BA1
 for <devel@driverdev.osuosl.org>; Sun, 12 Jul 2020 12:33:27 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id c11so5662253lfh.8
 for <devel@driverdev.osuosl.org>; Sun, 12 Jul 2020 05:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E6sNIw2XPzIq0VfJGAFCHOZVum8taNf/8D8Ge/FQ7ik=;
 b=XTSQMi3c2DwdMBZx3YYbYBCEc30+2fs3vNdLDyjwOhV+mr8KgRWmX8+mEp0KCeVN5k
 TpkbUndSDw17EVXMgUVfJmC5KFuPrrBsxgVpXZOBtwmmxqWpoKhgSwLTkV0bu508Eepz
 AL9rzA1A/DVXvWRvaDYd05qss38pRCEd6nHKsYbkKOvnnai498K05vhkx+i/BUcLtMjD
 n9g0XINzdoXEXhMH+TIAQpTHz6pl+8XccdClDoMcSmK6qToSgVcCs55uvwxtXm1ejElV
 bOn+lKX6HDEdaxiI/OQWkgJx6ht3tZbT3eQjHtWUozeXELRUGgSTdRSdSu8r8w+63GDb
 ukKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E6sNIw2XPzIq0VfJGAFCHOZVum8taNf/8D8Ge/FQ7ik=;
 b=oy6ksxNPZ/L6cb73vQp+aP402wq+TNieaZDDnkj9jR7pcOlakbO98qLLcGM2guiSnl
 NUaUr//xfVc6dA94woaHqAsnkF5oydBqFed//+W2xfSCmg6INCpVHbWcQeZ+/GL40vs+
 35/cAV4L7w6OkNNeKvOt9SFWrUHQYTvlkGQria+KvEjN4cIwFU7h3BGDm3WQl+QGVRhx
 4TcH9Vi2FbQt1s5dIGvtsraTWI63pSVGTYYIi+Dw6zOjbL0NGfbpAeh0zqiE7GP3hwAS
 eJvk/GV3HlOBaii6HwUrqIpWNF5oAEpdLvHSQ0rMsUQPlCCfpcCOMjSBGZ/zynVBZS7o
 SmLQ==
X-Gm-Message-State: AOAM533KMvYH8b+7Ml4aes/hvLRnsStmmt1lrzkTaZqwkm5pm+eY9Qvb
 eKCcLDaVo/xkMC3kMVxEZxo=
X-Google-Smtp-Source: ABdhPJwn/U7bMpXBeJBWvB7sqdmC+drDGd/YsFLewuXZCGZrYjrcy6IAvPfbdXfK3E8gM7eBYCd1Aw==
X-Received: by 2002:ac2:5593:: with SMTP id v19mr48799025lfg.43.1594557205710; 
 Sun, 12 Jul 2020 05:33:25 -0700 (PDT)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id e10sm3422877ljb.118.2020.07.12.05.33.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Jul 2020 05:33:25 -0700 (PDT)
Received: (nullmailer pid 553466 invoked by uid 1000);
 Sun, 12 Jul 2020 12:38:30 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging: r8188eu: remove unused members of struct xmit_buf
Date: Sun, 12 Jul 2020 15:38:21 +0300
Message-Id: <20200712123821.553420-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Soumyajit Deb <debsoumyajit100@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unused members of struct xmit_buf: alloc_sz, ff_hwaddr,
dma_transfer_addr, bpending and last.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8188eu/include/rtw_xmit.h  | 5 -----
 drivers/staging/rtl8188eu/os_dep/xmit_linux.c | 1 -
 2 files changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_xmit.h b/drivers/staging/rtl8188eu/include/rtw_xmit.h
index 12d16e98176a..3c03987c81a1 100644
--- a/drivers/staging/rtl8188eu/include/rtw_xmit.h
+++ b/drivers/staging/rtl8188eu/include/rtw_xmit.h
@@ -193,14 +193,9 @@ struct xmit_buf {
 	void *priv_data;
 	u16 ext_tag; /*  0: Normal xmitbuf, 1: extension xmitbuf. */
 	u16 flags;
-	u32 alloc_sz;
 	u32  len;
 	struct submit_ctx *sctx;
-	u32	ff_hwaddr;
 	struct urb *pxmit_urb[8];
-	dma_addr_t dma_transfer_addr;	/* (in) dma addr for transfer_buffer */
-	u8 bpending[8];
-	int last[8];
 };
 
 struct xmit_frame {
diff --git a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
index 017e1d628461..61ced1160951 100644
--- a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
@@ -24,7 +24,6 @@ int rtw_os_xmit_resource_alloc(struct adapter *padapter,
 		return _FAIL;
 
 	pxmitbuf->pbuf = PTR_ALIGN(pxmitbuf->pallocated_buf, XMITBUF_ALIGN_SZ);
-	pxmitbuf->dma_transfer_addr = 0;
 
 	for (i = 0; i < 8; i++) {
 		pxmitbuf->pxmit_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
