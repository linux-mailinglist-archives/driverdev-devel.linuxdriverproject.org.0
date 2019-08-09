Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA1187168
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 07:24:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 89C568833E;
	Fri,  9 Aug 2019 05:24:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o7WF36no1J-c; Fri,  9 Aug 2019 05:24:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 094DF880F4;
	Fri,  9 Aug 2019 05:24:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E50881BF5DC
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E21D481F72
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RGNp5l5rsGNe for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 05:24:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9EBF281ED9
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 05:24:19 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 19so45382366pfa.4
 for <devel@driverdev.osuosl.org>; Thu, 08 Aug 2019 22:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aU2mSAkZOrD6EszJOEIG6DDgyKtQNuv1zj7rHeNgb08=;
 b=tk083GcmQ8hufLVKkQAJaye8iMVAaoWczkDKSAWLm7eLdWynYADcnZyCaZiiHzl3kU
 C3gUPi1lME0LV361q5VcJUsIcCXsB2xKvYl6b+eZkpbYW0qtw/ua2haYcyUVIm+2uIZv
 henAMYWIdRSNs3pexb7K/OitTJLSJa00IApT3D77Ai9mTuf/ZELiJfFI/oDjePw0xDz4
 TDk1qOYOo/wooo7ghmDRsFqMW0OVp8mSlf4SGpvemUDDjdhYuUpNeYnIvr+8p3Zq/Spq
 ixXYa0OLtqokxAZXGdYlyEaN8qnXE7vDgRY0OK2IuEeU0q/WOOf8fzrw4z+mkhkv9DZ7
 cc2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aU2mSAkZOrD6EszJOEIG6DDgyKtQNuv1zj7rHeNgb08=;
 b=IlL6j/On4+A7RzobemQq4B/gch/rUadI6QCsZFL91LUHDRnvX+JtCHONz0ElYyzd//
 h8bgYG1U0hjYluIcSd0L/cCM445JWTCyJdx5KKu/P+fcK1XnOrE41BXT0mbjHpt4L1M0
 KGo21gdgCwIVsVH00ERFniHMXX9WBK4mfO73Qm1gQUwY4+tOt5vEQpYUiS4C/iunLJqS
 ADSjLD4eMpAJCurG9xoJLGBHeIOfk2Fj8w3gFp7FCVssMOxtjJY2fPrPXDo5dfqb3tpi
 /aE29ccVcKyHVS2a1f0dx6ZlfzFqjICVn24Yv0QaC/AEy0ZaLI2DSq9nynjT1mah4N0Q
 Xlxg==
X-Gm-Message-State: APjAAAXkoyGFnPwWIjfOHFmhmPWMsVg5t/m/CONwegX3j6FeZGBNG/uq
 uXVxTJt8tpgpBQCXt2Rn99c=
X-Google-Smtp-Source: APXvYqy46Uog8GpmQ3/+rJ33OV+9BC64f5Vwyf37M6qwfewPmocb0Glr2rU4o9KsNN0WmeuVmm9ajw==
X-Received: by 2002:a63:36cc:: with SMTP id
 d195mr15688438pga.157.1565328259243; 
 Thu, 08 Aug 2019 22:24:19 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id h13sm65710491pfn.13.2019.08.08.22.24.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 22:24:18 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 05/11] staging: rtl8712: r8712_free_xmitbuf(): Change return
 type
Date: Fri,  9 Aug 2019 10:53:47 +0530
Message-Id: <20190809052353.5308-5-nishkadg.linux@gmail.com>
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

Change return type of r8712_free_xmitbuf from int to void (and remove
its return values) as its return value is never used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_xmit.c | 5 ++---
 drivers/staging/rtl8712/rtl871x_xmit.h | 4 ++--
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 2ed3142cae14..cc5809e49e35 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -753,19 +753,18 @@ struct xmit_buf *r8712_alloc_xmitbuf(struct xmit_priv *pxmitpriv)
 	return pxmitbuf;
 }
 
-int r8712_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
+void r8712_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 {
 	unsigned long irqL;
 	struct  __queue *pfree_xmitbuf_queue = &pxmitpriv->free_xmitbuf_queue;
 
 	if (pxmitbuf == NULL)
-		return _FAIL;
+		return;
 	spin_lock_irqsave(&pfree_xmitbuf_queue->lock, irqL);
 	list_del_init(&pxmitbuf->list);
 	list_add_tail(&(pxmitbuf->list), &pfree_xmitbuf_queue->queue);
 	pxmitpriv->free_xmitbuf_cnt++;
 	spin_unlock_irqrestore(&pfree_xmitbuf_queue->lock, irqL);
-	return _SUCCESS;
 }
 
 /*
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
index 291763c310ba..d4658c1c4bd4 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.h
+++ b/drivers/staging/rtl8712/rtl871x_xmit.h
@@ -249,8 +249,8 @@ struct	xmit_priv {
 	uint free_xmitbuf_cnt;
 };
 
-int r8712_free_xmitbuf(struct xmit_priv *pxmitpriv,
-		       struct xmit_buf *pxmitbuf);
+void r8712_free_xmitbuf(struct xmit_priv *pxmitpriv,
+			struct xmit_buf *pxmitbuf);
 struct xmit_buf *r8712_alloc_xmitbuf(struct xmit_priv *pxmitpriv);
 void r8712_update_protection(struct _adapter *padapter, u8 *ie, uint ie_len);
 struct xmit_frame *r8712_alloc_xmitframe(struct xmit_priv *pxmitpriv);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
