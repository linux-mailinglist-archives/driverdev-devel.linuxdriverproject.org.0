Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 413418716D
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 07:24:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8CC2821579;
	Fri,  9 Aug 2019 05:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tZlEiNLmveLy; Fri,  9 Aug 2019 05:24:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 67CE42041A;
	Fri,  9 Aug 2019 05:24:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F27B61BF9BF
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ED721880F4
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XjAi9Bqqpr7a for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 05:24:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 580E1880C0
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 05:24:24 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id t132so45258163pgb.9
 for <devel@driverdev.osuosl.org>; Thu, 08 Aug 2019 22:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+AhxhHkb/zd2oXcLueBZgh4EeRgIQDoEsFsSb9jQj0g=;
 b=YPrrmpXFJ98TvN8sULpwln55ldtKty26jw/lDYSke4IjLV7EgzGGsrath4jV1sMrEh
 zkFhLYIl9Fes6xqx0y29Vm1vScwy0NLcbmG+43WIcs8eV8gOmCDU++nKraDbXwTv7y1U
 bNFYcGPReKp8nbf/4OaBXhU0de/Ps9DQ+sHHI19sfcIMdxMI9vmLCkAI7nwB8is/3lIu
 Yt8I4sfJOMDfbdJkOfrrqVVMTWuaKUygcEB9CN9LNlps9CwXbx/B74z7ys26EPMtWVwj
 sXjB2XkZ/d/odqlQlmek0/gVJ6zUTrgMzPRhOvw/nSPCcdeY7ggBQczLtwUPNrQgK+Sr
 DWZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+AhxhHkb/zd2oXcLueBZgh4EeRgIQDoEsFsSb9jQj0g=;
 b=gxP4b0USx0NffLGTycsyg53JalwF+FJVy9eMb+9AynldPd5uN63ylIQZGpkg1o6qS7
 zaoC6N7FCIahlu/nnQuobsIO0Y35aD07P539h1dyqXDKmxbT/rPwwU5DPpCMj421stII
 gUyvWBbBJRlL2AZUB45muAFJ9Vl5HcQel+z/0W4zNmPSDHInZnkHEBYonYurU5ULvT6A
 /6zQ98a05E4edQMAj6FBfM/8/YOApXZ+mL/FoJLn/1dsNLSBgZjl8gpGXnDdMKBtXUgd
 GRwbB59c5OZ2zyyla2pY2Mk0nQxd4jYwkZKlZor8iPkDw+eKANhVzoJEkOXIo4YRnS7H
 llAw==
X-Gm-Message-State: APjAAAXi1t0YGMCXMR1G05CiqUUFAOEBWLWcRIBnlUubzwzsy6pPlrhD
 yFgDU1CqzqXBQH1Mum1ysKw=
X-Google-Smtp-Source: APXvYqxJeYxIVKy+pxBwJxWs5csC0yyg1ZkGgDF2D0Ng9UggGWdsJ1vQ30ZZ4O8IJQvYr72F4AT9pQ==
X-Received: by 2002:a63:e610:: with SMTP id g16mr15597060pgh.392.1565328264027; 
 Thu, 08 Aug 2019 22:24:24 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id h13sm65710491pfn.13.2019.08.08.22.24.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 22:24:23 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 07/11] staging: rtl8712: r8712_construct_txaggr_cmd_desc():
 Change return type
Date: Fri,  9 Aug 2019 10:53:49 +0530
Message-Id: <20190809052353.5308-7-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190809052353.5308-1-nishkadg.linux@gmail.com>
References: <20190809052353.5308-1-nishkadg.linux@gmail.com>
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

Change return type of r8712_construct_txaggr_cmd_desc from u8 to void
(and remove its return statement) as it always returns _SUCCESS and its
return value is never stored, checked or otherwise used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index d6e8e3fc6527..87278438bc48 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -246,7 +246,7 @@ void r8712_do_queue_select(struct _adapter *padapter,
 }
 
 #ifdef CONFIG_R8712_TX_AGGR
-u8 r8712_construct_txaggr_cmd_desc(struct xmit_buf *pxmitbuf)
+void r8712_construct_txaggr_cmd_desc(struct xmit_buf *pxmitbuf)
 {
 	struct tx_desc *ptx_desc = (struct tx_desc *)pxmitbuf->pbuf;
 
@@ -260,8 +260,6 @@ u8 r8712_construct_txaggr_cmd_desc(struct xmit_buf *pxmitbuf)
 
 	/* dw1 */
 	ptx_desc->txdw1 |= cpu_to_le32((0x13 << QSEL_SHT) & 0x00001f00);
-
-	return _SUCCESS;
 }
 
 u8 r8712_construct_txaggr_cmd_hdr(struct xmit_buf *pxmitbuf)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
