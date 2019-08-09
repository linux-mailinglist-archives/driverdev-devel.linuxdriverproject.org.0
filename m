Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B09D8716E
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 07:24:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D83F5866A9;
	Fri,  9 Aug 2019 05:24:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nFCHAhn-UIjy; Fri,  9 Aug 2019 05:24:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A22FB82066;
	Fri,  9 Aug 2019 05:24:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F2F0D1BF5DC
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EC8E822270
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xR+FhNbVGkqK for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 05:24:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 42EE221551
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 05:24:34 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id ay6so44541651plb.9
 for <devel@driverdev.osuosl.org>; Thu, 08 Aug 2019 22:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WFQgXLs8DeronhFyYcvrLO7Mg35uT2uPyNmKpc5hatA=;
 b=FmL9v3HXOYLI+hwwIz4KZ86TX/xKbjo9jQYz5wnwkmblC/TzpFx54IS7PNgBHGoViY
 YnFABbjR8DCKi28IGeghg4sb5ga+mIyiAUWtddPsy2sdNjdjAudzwy/W7bnXO69q1wBB
 BESS+oA+pLhrClTn0G2hHeKQXIVnyF/i1Z0lqFyZFoE+jqhfw+DMhIgK+SnhoQgszLYK
 ma9UIgGXDEfjxPjUqioT+4R1UfCegmc2aFV5aNrNC4lbsj4+fZlKXccic2ZE7/fxq+LN
 z48BpBr8HkBqTG+hI2UEobMasZGYUG30DWhHY6PAx5Z7N4Lnflh+F50tArOrv3ck0zK6
 FjDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WFQgXLs8DeronhFyYcvrLO7Mg35uT2uPyNmKpc5hatA=;
 b=iQ8Wl/GXtbSmRE8Fu++9GVWdyvki4WqbKIbPBNsC6/iPbY7P+1nUyqDKMbeDB5OI4C
 fnVDyhjjEmxjHmiDsWWJI4O43FbwAk6l6+5cNdm6UT/FCIIXjno8RdeiYRcHc8dddtZL
 4WpWOC8oCGPej+xAsuXiNtJIVKbdl3O7W0LFNQ99HNWAoYHxPwugEkmwRhZkuTQUcyth
 N5YE+A/UBl8IZjTKI75RjTqosY5iOu3ZxPbahGnedeZES8gRYjOJsX5DXwF6zm7GVqqT
 T3mhM1b89wS4CpmQMPsapdqgm+6GnBBCOh9RtbV+82IyIF0QIE4BGhqFTtNme6VwmkIv
 ib3A==
X-Gm-Message-State: APjAAAUW32DZB26E0Ff7qC6vwgdSckvQLoNowM7/ViT4un1Sy6mmZc8J
 5iirJXRZfEJ2qmYQJx5qZHs=
X-Google-Smtp-Source: APXvYqwmiCHznZhRqH3GLoC5KYqgMBqmWz0RYZ+wPQ3RimLwjIJ6kIB2v2DPq9ktOakrcNJV7q/p3w==
X-Received: by 2002:a17:902:9307:: with SMTP id
 bc7mr16661924plb.183.1565328273990; 
 Thu, 08 Aug 2019 22:24:33 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id h13sm65710491pfn.13.2019.08.08.22.24.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 22:24:33 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 11/11] staging: rtl8712: r8712_dump_aggr_xframe(): Change type
 to void
Date: Fri,  9 Aug 2019 10:53:53 +0530
Message-Id: <20190809052353.5308-11-nishkadg.linux@gmail.com>
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

Change return type of r8712_dump_aggr_xframe from u8 to void as it
always returns _SUCCESS and its return value is never used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 6 ++----
 drivers/staging/rtl8712/rtl8712_xmit.h | 4 ++--
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index 9152c25c11f8..c247f92207f5 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -352,8 +352,8 @@ u16 r8712_xmitframe_aggr_next(struct xmit_buf *pxmitbuf,
 		(((struct tx_desc *)pxmitbuf->pbuf)->txdw0 & 0x0000ffff);
 }
 
-u8 r8712_dump_aggr_xframe(struct xmit_buf *pxmitbuf,
-			struct xmit_frame *pxmitframe)
+void r8712_dump_aggr_xframe(struct xmit_buf *pxmitbuf,
+			    struct xmit_frame *pxmitframe)
 {
 	struct _adapter *padapter = pxmitframe->padapter;
 	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
@@ -390,8 +390,6 @@ u8 r8712_dump_aggr_xframe(struct xmit_buf *pxmitbuf,
 	}
 	r8712_write_port(pxmitframe->padapter, RTL8712_DMA_H2CCMD,
 			total_length + TXDESC_SIZE, (u8 *)pxmitframe);
-
-	return _SUCCESS;
 }
 
 #endif
diff --git a/drivers/staging/rtl8712/rtl8712_xmit.h b/drivers/staging/rtl8712/rtl8712_xmit.h
index faf2128285b6..0b56bd3ac4d0 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.h
+++ b/drivers/staging/rtl8712/rtl8712_xmit.h
@@ -104,8 +104,8 @@ void r8712_do_queue_select(struct _adapter *padapter,
 #ifdef CONFIG_R8712_TX_AGGR
 void r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
 			      struct xmit_frame *pxmitframe);
-u8 r8712_dump_aggr_xframe(struct xmit_buf *pxmitbuf,
-			struct xmit_frame *pxmitframe);
+void r8712_dump_aggr_xframe(struct xmit_buf *pxmitbuf,
+			    struct xmit_frame *pxmitframe);
 #endif
 
 #endif
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
