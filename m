Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DD287166
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 07:24:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8E091882F2;
	Fri,  9 Aug 2019 05:24:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ht6r34WGCnx; Fri,  9 Aug 2019 05:24:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 10A17880F4;
	Fri,  9 Aug 2019 05:24:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 77DCD1BF5DC
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 73D7287FDE
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tUWA6M-0d1Dr for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 05:24:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7BED387ECD
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 05:24:09 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id w10so45263534pgj.7
 for <devel@driverdev.osuosl.org>; Thu, 08 Aug 2019 22:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y+ryikjyPvLCyh+Xc6KRtMjBXb4a5VTlcEcaD1Vs9Yo=;
 b=YF4L1WxwIZF0tfT9r09a6FneGEleAzbNpbkw06x9SkRt3kP0vBNj9dOz4Rhded/Crk
 Z7mtNXLTyGJRIOD3MYyfgjShk0gCwUN8MstSiwWCM0oMmuVNYjQrZnjOpiu3soGpnhxv
 a4Gn9hBgWLfImc8Snt3X4F+f49xwHnalUUrKT67goGz+OcPj9WQhktsZ5CiVfA6ACR9H
 9DH/aDIRayTiu7en1zR8JNULcQc34Ha+enUUquRIyeshYshafgjkp7nqtFbTiMs8aBij
 6ItRJhUfuLQlQSKR7uBhcSk4DqSZ5xSDpBvCfJP4nc0HEhD0ay/RL1D6GJYzMFjVgbja
 hSkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y+ryikjyPvLCyh+Xc6KRtMjBXb4a5VTlcEcaD1Vs9Yo=;
 b=QvItne/lVu8BoIGiGi86Gb3zUqeQ93ehPMENIAVRNiZ7iHQZIQphYPIu6Y8cfUnnkH
 vpZBWYkU6u2MGjlm1Z18GoRoHq2eA1y7KV1CKol3diThr9lSsumxC8/S9igoknn8Db1u
 h2eDRIxPCH04j063jI9CEISLQkclDF2HUttLgqD+HSZ2yPRc1uRu3wbXrI/aLvuAZovu
 dYDkBfgOJnJ4aVktZSVqf8DcqNHhCH7mR0pd/CrfsMuNIcGeRumN4mjvgO4wTWjewbnb
 t0Fr5NkeSRZQWG8kRi2DxaqeryKgY8TCG9y8evPyrGam4X7zrpMzrQqlmozWVmVe7FO6
 q7Zw==
X-Gm-Message-State: APjAAAUVmcXvosbreSGD7UPY44snTaT4fa5/CnSSnBrPFOHOylj1tUix
 lFr+ToT56KIAZoIS+MAffu4=
X-Google-Smtp-Source: APXvYqzvog7RBzIKj1RCA4CdfesrgZkL5aMOqwdfKS8u8+rVO7G64II8Z+WwsJD/LIlSdW4sJKXHdw==
X-Received: by 2002:a62:cd45:: with SMTP id o66mr19741399pfg.112.1565328249102; 
 Thu, 08 Aug 2019 22:24:09 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id h13sm65710491pfn.13.2019.08.08.22.24.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 22:24:08 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 01/11] staging: rtl8712: _r8712_init_xmit_priv(): Change
 return values and type
Date: Fri,  9 Aug 2019 10:53:43 +0530
Message-Id: <20190809052353.5308-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Change the return values in _r8712_init_xmit_priv from _SUCCESS/_FAIL to
0/-ENOMEM respectively. Change return type from sint to int.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_xmit.c | 14 +++++++-------
 drivers/staging/rtl8712/rtl871x_xmit.h |  4 ++--
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index f625fd5b9eb3..b9dc8953c6b3 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -49,8 +49,8 @@ void _r8712_init_sta_xmit_priv(struct sta_xmit_priv *psta_xmitpriv)
 	INIT_LIST_HEAD(&psta_xmitpriv->apsd);
 }
 
-sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
-			   struct _adapter *padapter)
+int _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
+			  struct _adapter *padapter)
 {
 	sint i;
 	struct xmit_buf *pxmitbuf;
@@ -79,7 +79,7 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 		kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4, GFP_ATOMIC);
 	if (!pxmitpriv->pallocated_frame_buf) {
 		pxmitpriv->pxmit_frame_buf = NULL;
-		return _FAIL;
+		return -ENOMEM;
 	}
 	pxmitpriv->pxmit_frame_buf = pxmitpriv->pallocated_frame_buf + 4 -
 			((addr_t) (pxmitpriv->pallocated_frame_buf) & 3);
@@ -119,7 +119,7 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	if (!pxmitpriv->pallocated_xmitbuf) {
 		kfree(pxmitpriv->pallocated_frame_buf);
 		pxmitpriv->pallocated_frame_buf = NULL;
-		return _FAIL;
+		return -ENOMEM;
 	}
 	pxmitpriv->pxmitbuf = pxmitpriv->pallocated_xmitbuf + 4 -
 			      ((addr_t)(pxmitpriv->pallocated_xmitbuf) & 3);
@@ -129,12 +129,12 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 		pxmitbuf->pallocated_buf = kmalloc(MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ,
 						   GFP_ATOMIC);
 		if (!pxmitbuf->pallocated_buf)
-			return _FAIL;
+			return -ENOMEM;
 		pxmitbuf->pbuf = pxmitbuf->pallocated_buf + XMITBUF_ALIGN_SZ -
 				 ((addr_t) (pxmitbuf->pallocated_buf) &
 				 (XMITBUF_ALIGN_SZ - 1));
 		if (r8712_xmit_resource_alloc(padapter, pxmitbuf))
-			return _FAIL;
+			return -ENOMEM;
 		list_add_tail(&pxmitbuf->list,
 				 &(pxmitpriv->free_xmitbuf_queue.queue));
 		pxmitbuf++;
@@ -146,7 +146,7 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	tasklet_init(&pxmitpriv->xmit_tasklet,
 		(void(*)(unsigned long))r8712_xmit_bh,
 		(unsigned long)padapter);
-	return _SUCCESS;
+	return 0;
 }
 
 void _free_xmit_priv(struct xmit_priv *pxmitpriv)
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
index d4bc059e6a42..6ddf5b6bb633 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.h
+++ b/drivers/staging/rtl8712/rtl871x_xmit.h
@@ -268,8 +268,8 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 			 struct pkt_attrib *pattrib);
 int r8712_txframes_sta_ac_pending(struct _adapter *padapter,
 				  struct pkt_attrib *pattrib);
-sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
-			   struct _adapter *padapter);
+int _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
+			  struct _adapter *padapter);
 void _free_xmit_priv(struct xmit_priv *pxmitpriv);
 void r8712_free_xmitframe_ex(struct xmit_priv *pxmitpriv,
 			     struct xmit_frame *pxmitframe);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
