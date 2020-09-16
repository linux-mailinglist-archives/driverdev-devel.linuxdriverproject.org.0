Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9559926BC85
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Sep 2020 08:18:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D0218517E;
	Wed, 16 Sep 2020 06:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4sg4pPrGVUta; Wed, 16 Sep 2020 06:18:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD6D484F8B;
	Wed, 16 Sep 2020 06:18:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 330FD1BF866
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:18:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2FD7184F8B
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:18:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TBNfZy3y2yBa for <devel@linuxdriverproject.org>;
 Wed, 16 Sep 2020 06:18:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1A21984EE2
 for <devel@driverdev.osuosl.org>; Wed, 16 Sep 2020 06:18:42 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id b17so1005150pji.1
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 23:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xJQ3FsTVfk8/l7DLVbHWOGOV95cm7eu8ckmsTobu+6c=;
 b=f0oBPAIhglykcqr72OVTEpZClcmcWk9IRTesPQKFa9s68vyLyD2kzol3SSM9OO+cr0
 v9CCq+l0j1NOF8zTXcINm0DmMJMHUpv9bg9ftd2jnYouB/8L4nnpYRFnUAFZBfeCMBNN
 x5bCoh3vpVmLDStpwT4uhHrY68r3YmhlSNEmtZ78UgTwaQI21dLGTxpvOGwCjTshAZdJ
 WrBpiqOFUxOatp1dx+JlsYVZXZJXIuYdzPNCSRwaA7nysQ7RnMKq3qzyHHVNJt6YRB6R
 utL166nJqFvA3N3nTKBKxi0akn6ETvE27SYeJZfVIyJub9WFBKhy4wUgVeld94Jq30Te
 Gisg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xJQ3FsTVfk8/l7DLVbHWOGOV95cm7eu8ckmsTobu+6c=;
 b=ouYHPcj5WQszNk2SqgysESBEy59bJppC03OidI7ZfzEsPC/0lbpqDwQbvJ8Aeg2NB+
 EgRcF7X82Ive895lrhNQIHXOU41fnUXXkb/8E7SoBxhUcStGWbzEYvJ/SxruPR/EBnBV
 xNpd7tDgw4aRMQtcV30OgZRfCTAKFa/S5isYrj1gjlFa3v6chiUjqlj8m8d4qPRnYaDD
 JGpOqmDctk4SQZQdx4tpI+pnIfQH01XeRJDhgAk/+gzv7x1UdWe3mGCmTVEbiwUlSYFe
 XHTztr6CBUi0zZ3rHbjDooaYE+kYH9j1vQMBvs9JEqQJDVIprU8hMIWfyFRMu2T2fd8X
 nfUA==
X-Gm-Message-State: AOAM5321FMbBoTo0Bhct/oYuod0PYFGh9nWV/MVzmf/eD1Z8y9qhcHSd
 JJRS31aOZVrrGw4KxSPFztQ=
X-Google-Smtp-Source: ABdhPJwF2ZCe1gOtc22sZewBGwbbOaEeq1q/p9dAcTypK66zbZ/cqHmKN+S1bpXG3rl7pjmnkV5b5w==
X-Received: by 2002:a17:902:eb54:b029:d1:f365:a668 with SMTP id
 i20-20020a170902eb54b02900d1f365a668mr114496pli.69.1600237121745; 
 Tue, 15 Sep 2020 23:18:41 -0700 (PDT)
Received: from localhost.localdomain ([49.207.195.121])
 by smtp.gmail.com with ESMTPSA id kk17sm1275108pjb.31.2020.09.15.23.18.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 23:18:41 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8712: convert tasklets to use new tasklet_setup()
 API
Date: Wed, 16 Sep 2020 11:48:31 +0530
Message-Id: <20200916061831.57848-1-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 Romain Perier <romain.perier@gmail.com>,
 Allen Pais <apais@linux.microsoft.com>, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Allen Pais <apais@linux.microsoft.com>

In preparation for unconditionally passing the
struct tasklet_struct pointer to all tasklet
callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <apais@linux.microsoft.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c  | 10 +++++-----
 drivers/staging/rtl8712/rtl871x_xmit.c  |  3 +--
 drivers/staging/rtl8712/rtl871x_xmit.h  |  2 +-
 drivers/staging/rtl8712/usb_ops_linux.c |  5 +++--
 4 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index d83f421acfc1..978594c676eb 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -28,7 +28,7 @@
 #include "usb_ops.h"
 #include "wifi.h"
 
-static void recv_tasklet(unsigned long priv);
+static void recv_tasklet(struct tasklet_struct *t);
 
 void r8712_init_recv_priv(struct recv_priv *precvpriv,
 			  struct _adapter *padapter)
@@ -60,8 +60,7 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
 		precvbuf++;
 	}
 	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
-	tasklet_init(&precvpriv->recv_tasklet, recv_tasklet,
-		     (unsigned long)padapter);
+	tasklet_setup(&precvpriv->recv_tasklet, recv_tasklet);
 	skb_queue_head_init(&precvpriv->rx_skb_queue);
 
 	skb_queue_head_init(&precvpriv->free_recv_skb_queue);
@@ -1057,10 +1056,11 @@ static void recvbuf2recvframe(struct _adapter *padapter, struct sk_buff *pskb)
 	} while ((transfer_len > 0) && pkt_cnt > 0);
 }
 
-static void recv_tasklet(unsigned long priv)
+static void recv_tasklet(struct tasklet_struct *t)
 {
 	struct sk_buff *pskb;
-	struct _adapter *padapter = (struct _adapter *)priv;
+	struct _adapter *padapter = from_tasklet(padapter, t,
+						 recvpriv.recv_tasklet);
 	struct recv_priv *precvpriv = &padapter->recvpriv;
 
 	while (NULL != (pskb = skb_dequeue(&precvpriv->rx_skb_queue))) {
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 8b88fd5dc9a1..cae552276ab8 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -144,8 +144,7 @@ int _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	INIT_WORK(&padapter->wk_filter_rx_ff0, r8712_SetFilter);
 	alloc_hwxmits(padapter);
 	init_hwxmits(pxmitpriv->hwxmits, pxmitpriv->hwxmit_entry);
-	tasklet_init(&pxmitpriv->xmit_tasklet, r8712_xmit_bh,
-		     (unsigned long)padapter);
+	tasklet_setup(&pxmitpriv->xmit_tasklet, r8712_xmit_bh);
 	return 0;
 }
 
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
index c0c0c781fe17..cc58c7216935 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.h
+++ b/drivers/staging/rtl8712/rtl871x_xmit.h
@@ -277,7 +277,7 @@ int r8712_pre_xmit(struct _adapter *padapter, struct xmit_frame *pxmitframe);
 int r8712_xmit_enqueue(struct _adapter *padapter,
 		       struct xmit_frame *pxmitframe);
 void r8712_xmit_direct(struct _adapter *padapter, struct xmit_frame *pxmitframe);
-void r8712_xmit_bh(unsigned long priv);
+void r8712_xmit_bh(struct tasklet_struct *t);
 
 void xmitframe_xmitbuf_attach(struct xmit_frame *pxmitframe,
 			struct xmit_buf *pxmitbuf);
diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
index 9a04a752af13..655497cead12 100644
--- a/drivers/staging/rtl8712/usb_ops_linux.c
+++ b/drivers/staging/rtl8712/usb_ops_linux.c
@@ -308,10 +308,11 @@ void r8712_usb_read_port_cancel(struct _adapter *padapter)
 	}
 }
 
-void r8712_xmit_bh(unsigned long priv)
+void r8712_xmit_bh(struct tasklet_struct *t)
 {
 	int ret = false;
-	struct _adapter *padapter = (struct _adapter *)priv;
+	struct _adapter *padapter = from_tasklet(padapter, t,
+						 xmitpriv.xmit_tasklet);
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
 	if (padapter->driver_stopped ||
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
