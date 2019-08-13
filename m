Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9A08AE08
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2019 06:47:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACE7A87DB2;
	Tue, 13 Aug 2019 04:47:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ChXFPf6z4QR9; Tue, 13 Aug 2019 04:47:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 260B787522;
	Tue, 13 Aug 2019 04:47:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BB7491BF369
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 04:47:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B85AD86BB9
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 04:47:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lfihnuqZ29Wa for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 04:47:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0A64686B90
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 04:47:02 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 196so3690755pfz.8
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 21:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WFQgXLs8DeronhFyYcvrLO7Mg35uT2uPyNmKpc5hatA=;
 b=YWL9MqHTs7cnRLJ0BVFc/K7qmLDkrmagPrO3QixDsy45zlT0zYU/eB2y5pc6ZdiisJ
 GNLs3bzayyDKj+vy84OHFiEznI4Ns3CSrFLsFN7IzDGUuNHH3eppsov5NUoQf+otmQht
 HPFCOA3W+0w8vOt5+oMltjMyIkAmlTiIeUrwFoWcCnYiqdGLekVK0k9pKSbKN2/tHyhi
 BmniuEacmfQxnSfS7w054P+W4dM2FKdsoGDDhYqnuQboACCMbuCuU1XW40tNWXK7W+EG
 evi9m/vHUzMWx/4ccVllub0nvd0HIaHbezrxzMWuXqA1GRnqi7hcuMKvDRUo373kFQv9
 Z1Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WFQgXLs8DeronhFyYcvrLO7Mg35uT2uPyNmKpc5hatA=;
 b=n96TM8pJbyXfu1tyXR4mZFwP8h2Wzo+3+DBkUpF0CZ4u8DjN2jyzZfgTXyi8o/Dty1
 uCol7Bd2F0HKVfaqGWgIgg8VpeIE51B19jCzksk4FXvSQDlIJVW5qtjjvC2a/FpNOu1e
 y7g5WSDWhMmRq5AiFFnATi9KerNClbREypj982RuxE6rddsX+VpDhQumxTEul0cX/qQZ
 L0dYPevhPiS65B2ZZT9pPXg3bRUNgl9XUpWXLv49SKAQfLtlqTRZ277mAdYV0Yhv9DVD
 ZNi90VeyaUT32J7bNp/05PUyEvTeQRcmC8m2WbH0lGdse2v1V5d2ZdqB1SthSxg4Z0pN
 RFBQ==
X-Gm-Message-State: APjAAAVWf2sFZM/gRZj9ogUzqHqBrDCGlvD7Sn0Bm1W1avWFy10cnAp0
 fOH53+HB4Sjr8h4a3xle8KM=
X-Google-Smtp-Source: APXvYqxlOZQn3jKZ/jd6ZnD8OPo5vHVm9AwiKi4MW2z9Pw2TqP4sy5Gold+BZ5ST8drIP7BofCS5nQ==
X-Received: by 2002:a65:690e:: with SMTP id s14mr33538354pgq.47.1565671621681; 
 Mon, 12 Aug 2019 21:47:01 -0700 (PDT)
Received: from localhost.localdomain ([122.163.110.75])
 by smtp.gmail.com with ESMTPSA id t7sm246135pgp.68.2019.08.12.21.46.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 21:47:01 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH RESEND 4/4] staging: rtl8712: r8712_dump_aggr_xframe(): Change
 type to void
Date: Tue, 13 Aug 2019 10:16:38 +0530
Message-Id: <20190813044638.16348-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190813044638.16348-1-nishkadg.linux@gmail.com>
References: <20190813044638.16348-1-nishkadg.linux@gmail.com>
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
