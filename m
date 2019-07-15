Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1848681BD
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 02:11:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B57C885618;
	Mon, 15 Jul 2019 00:11:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FHGapcQF8NLi; Mon, 15 Jul 2019 00:11:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0484285625;
	Mon, 15 Jul 2019 00:11:24 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5DD281BF860
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 00:11:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 548B08560B
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 00:11:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 50cvrBPt1plf
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 00:11:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 88AEB855C6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 00:11:21 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id k10so13941963qtq.1
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 17:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MCe40YbQXFPhxCndnrznLP1e8gHjy1t8QpfVZEscKsw=;
 b=JBj1Agd24JHKoB+7yRxeI4NTIgMg/WfFBNSWdQZSI5jMRqDHX6ZDU9XDWAwhKil+PO
 B6PMOvAyrK36WWtC+AZfPAUJ7QEWDcToPBz8tQ8x++gqr5yJls1DJsO9Rqizqp9tacXZ
 zdHn+b9oMIqt3D0wvZnNc9NcJZBfEcrtL0UJp0J1/Thoa+8uiMO8q5dp1XxO/OyQEqE+
 k/BmosW7Y8peYZQSVcAo00eD+Npt8PPpHHmsZ734DZRUvzxMhLNwC4DjBzOtEYcwr3M5
 wijPTa8Fq34tH7nu1npHPKv00oho11RpoCfuUxW60jf3GtJNdY+t1r2dUHADRZhYS+Te
 Qxdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MCe40YbQXFPhxCndnrznLP1e8gHjy1t8QpfVZEscKsw=;
 b=aCoLTwp6PfjfBCFX/doz/tXgfIrCBAM/7VP1J61qyw6MEvyNTdTZ+PHE2Jmnrm9vp0
 95XWg1DWO31VyEddEosDUht2to90vWBg8npL/pf2ppFqen8TsfCtT0uXm/mxYH5j4uML
 ERuFyXFsjlZE6LZYu/VTV1g6GmA0kPAUHPqY+9v6wcSauEpphCCQZDqb1cgK2RjfKi8E
 x7aR9zGE3X2PxwVUxBcCIAgM91H2GQAydtSYAi2bIwI7MLoNPpFRTyuam4Xa72AU+W09
 qWTTLxdTgd2fL34MMnKF8BXt4Jg+5kiMbUbvkDSTDlWkJpeTfZKRlgotXLg7UbE83okg
 2Jvw==
X-Gm-Message-State: APjAAAUztZ+HuzYEnpF013/HZyjXZskUmOFafQGZrPOsiOw3mpFn5IlE
 10JoJLZKd7IayvYYbDar7JduyCBD3FsTsw==
X-Google-Smtp-Source: APXvYqzG5i+n9h7LGa1Pzg6t14ZOjRlwf1xlKzJOUYTnbub4+G0TO3nOhsrxQ7Yvm8L5+N3PRaeOUA==
X-Received: by 2002:ac8:2194:: with SMTP id 20mr15406753qty.203.1563149480717; 
 Sun, 14 Jul 2019 17:11:20 -0700 (PDT)
Received: from localhost.localdomain ([181.31.106.136])
 by smtp.gmail.com with ESMTPSA id r14sm7652335qke.47.2019.07.14.17.11.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 17:11:20 -0700 (PDT)
From: christianluciano.m@gmail.com
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com,
 driverdev-devel@linuxdriverproject.org, christianluciano.m@gmail.com
Subject: [PATCH] staging: rtl8712: Fix alignment with open parenthesis
Date: Sun, 14 Jul 2019 21:11:08 -0300
Message-Id: <20190715001108.1003-1-christianluciano.m@gmail.com>
X-Mailer: git-send-email 2.22.0
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

From: Christian Luciano Moreno <christianluciano.m@gmail.com>

Fix 'CHECK: Alignment should match open parenthesis' reported by checkpatch.

Signed-off-by: Christian Luciano Moreno <christianluciano.m@gmail.com>
---
 drivers/staging/rtl8712/usb_ops.h       |  9 +++++----
 drivers/staging/rtl8712/usb_ops_linux.c | 13 +++++++------
 2 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8712/usb_ops.h b/drivers/staging/rtl8712/usb_ops.h
index d62975447d29..5e825dda49e5 100644
--- a/drivers/staging/rtl8712/usb_ops.h
+++ b/drivers/staging/rtl8712/usb_ops.h
@@ -21,9 +21,9 @@
 void r8712_usb_write_mem(struct intf_hdl *pintfhdl, u32 addr,
 			 u32 cnt, u8 *wmem);
 u32 r8712_usb_write_port(struct intf_hdl *pintfhdl, u32 addr,
-			  u32 cnt, u8 *wmem);
+			 u32 cnt, u8 *wmem);
 u32 r8712_usb_read_port(struct intf_hdl *pintfhdl, u32 addr,
-			 u32 cnt, u8 *rmem);
+			u32 cnt, u8 *rmem);
 void r8712_usb_set_intf_option(u32 *poption);
 void r8712_usb_set_intf_funs(struct intf_hdl *pintf_hdl);
 uint r8712_usb_init_intf_priv(struct intf_priv *pintfpriv);
@@ -31,8 +31,9 @@ void r8712_usb_unload_intf_priv(struct intf_priv *pintfpriv);
 void r8712_usb_set_intf_ops(struct _io_ops *pops);
 void r8712_usb_read_port_cancel(struct _adapter *padapter);
 void r8712_usb_write_port_cancel(struct _adapter *padapter);
-int r8712_usbctrl_vendorreq(struct intf_priv *pintfpriv, u8 request, u16 value,
-		      u16 index, void *pdata, u16 len, u8 requesttype);
+int r8712_usbctrl_vendorreq(struct intf_priv *pintfpriv, u8 request,
+			    u16 value, u16 index, void *pdata,
+			    u16 len, u8 requesttype);
 
 #endif
 
diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
index 9d290bc2fdb7..5ba9ac6cb6b4 100644
--- a/drivers/staging/rtl8712/usb_ops_linux.c
+++ b/drivers/staging/rtl8712/usb_ops_linux.c
@@ -192,7 +192,7 @@ static void r8712_usb_read_port_complete(struct urb *purb)
 		if ((purb->actual_length > (MAX_RECVBUF_SZ)) ||
 		    (purb->actual_length < RXDESC_SIZE)) {
 			r8712_read_port(padapter, precvpriv->ff_hwaddr, 0,
-				  (unsigned char *)precvbuf);
+					(unsigned char *)precvbuf);
 		} else {
 			_pkt *pskb = precvbuf->pskb;
 
@@ -228,7 +228,7 @@ static void r8712_usb_read_port_complete(struct urb *purb)
 			/* Fall through. */
 		case -EPROTO:
 			r8712_read_port(padapter, precvpriv->ff_hwaddr, 0,
-				  (unsigned char *)precvbuf);
+					(unsigned char *)precvbuf);
 			break;
 		case -EINPROGRESS:
 			netdev_err(padapter->pnetdev, "ERROR: URB IS IN PROGRESS!\n");
@@ -262,8 +262,9 @@ u32 r8712_usb_read_port(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *rmem)
 	precvbuf->pskb = skb_dequeue(&precvpriv->free_recv_skb_queue);
 
 	if (!precvbuf->pskb) {
-		precvbuf->pskb = netdev_alloc_skb(adapter->pnetdev,
-				 MAX_RECVBUF_SZ + RECVBUFF_ALIGN_SZ);
+		precvbuf->pskb =
+			netdev_alloc_skb(adapter->pnetdev,
+					 MAX_RECVBUF_SZ + RECVBUFF_ALIGN_SZ);
 		if (!precvbuf->pskb)
 			return _FAIL;
 		tmpaddr = (addr_t)precvbuf->pskb->data;
@@ -367,7 +368,7 @@ static void usb_write_port_complete(struct urb *purb)
 		break;
 	default:
 		netdev_warn(padapter->pnetdev,
-				"r8712u: pipe error: (%d)\n", purb->status);
+			    "r8712u: pipe error: (%d)\n", purb->status);
 		break;
 	}
 	/* not to consider tx fragment */
@@ -467,7 +468,7 @@ void r8712_usb_write_port_cancel(struct _adapter *padapter)
 }
 
 int r8712_usbctrl_vendorreq(struct intf_priv *pintfpriv, u8 request, u16 value,
-		      u16 index, void *pdata, u16 len, u8 requesttype)
+			    u16 index, void *pdata, u16 len, u8 requesttype)
 {
 	unsigned int pipe;
 	int status;
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
