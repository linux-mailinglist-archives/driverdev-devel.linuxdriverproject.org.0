Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4CD383D9
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 07:45:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 66B79880F4;
	Fri,  7 Jun 2019 05:45:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qtY-ohPxNs0y; Fri,  7 Jun 2019 05:45:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DCF0587E45;
	Fri,  7 Jun 2019 05:45:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E2FC81BF2C1
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 05:45:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DB4538691B
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 05:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ingTIqiyV8PJ for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 05:45:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2731385F96
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 05:45:52 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id a23so540583pff.4
 for <devel@driverdev.osuosl.org>; Thu, 06 Jun 2019 22:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dJSp45eadbpPiua3fEEFgrW9+FuYaMbkZIVwyRLMC2U=;
 b=AfqAPhy++i//S9sHbQqCA3alpjIvPKt/GNYoUyPP3lhvM4MDccOobq71T1dlhrOxWO
 +r92MQmb3BH7jtbgjiWtmm6ngjfZlfA+2vk3tOfWzgp9lCwl/LZDYYxNy2sLspaxlxYx
 CdGLnhbKU2nbWJBeE4FBCKO+54QbavF03XYwtLL2tTWOf+x29EtNMsE9m/+RdUQYnQ+W
 ZRHPHZu5ovzpOVJ0I+ozy14XVK7N3nu6nxnsYVvUswMXfTIgy+Bnmc59YS4UUJzDJKM9
 SAkTt7NaAwJS1nr9g+0ch3ICArFyxuulK9PeKuN8r25GVCpMrEE/CuPt9eAjeEibic3f
 QciA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dJSp45eadbpPiua3fEEFgrW9+FuYaMbkZIVwyRLMC2U=;
 b=oi8HGnteW4YFLyP79aAKvxapCkbg4zhSZBqxIhJe0xIpcKaw5G+U07giEgyRGEr6a2
 IUcdW1mWUySCL/ayP1Kq9re+exhb0BDM/U2RA2jjNZTq1MMb2lqO6U+BoZ3DhiWf3qQ3
 yRgYNYETincBAqgfjqsTp8Pe5/+aBFzT963HPypxoUtg/dEtaT1Vz9oVgA5Gpmn1Bnpr
 iq50jxD0wr1cbbGS8tw899R1QgBG+D65Qi7j8tWTdMJ1KvE3J9IK3Rj8fKmx5Y0s71to
 N90m+clk+ArSqVjeXGbj8WH009Vvi+D4xC3WERe8A35PGHPYhISCbJ/BlnPItl3sFCUK
 1u1Q==
X-Gm-Message-State: APjAAAWanieDejJKLGS36xmAivRNW1+E44kiRG2luQWG+QInuD6/XkJl
 aB0QFcZRLETprguyFxa8YX0=
X-Google-Smtp-Source: APXvYqxdPjGW2D0I6fgd/G/4EUdY7BmcTAepA6nBxw6iEXG5ng8ST3WwWPut5/967MzkpstTsnJ+sg==
X-Received: by 2002:a17:90a:1902:: with SMTP id
 2mr3640902pjg.113.1559886351791; 
 Thu, 06 Jun 2019 22:45:51 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id s5sm1138147pgj.60.2019.06.06.22.45.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 22:45:51 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, straube.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8712: recv_linux.c: Remove leading p from
 variable names
Date: Fri,  7 Jun 2019 11:15:38 +0530
Message-Id: <20190607054538.20822-1-nishkadg.linux@gmail.com>
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

Remove leading p from the following pointer variable names:
- padapter
- pmlmepriv
- precv_frame
- precvpriv
- pfree_recv_queue
- pattrib.
Issue found with Coccinelle

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/recv_linux.c | 50 ++++++++++++++--------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 4e20cbafa9fb..84c4c8580f9a 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -72,11 +72,11 @@ int r8712_os_recvbuf_resource_free(struct _adapter *padapter,
 	return _SUCCESS;
 }
 
-void r8712_handle_tkip_mic_err(struct _adapter *padapter, u8 bgroup)
+void r8712_handle_tkip_mic_err(struct _adapter *adapter, u8 bgroup)
 {
 	union iwreq_data wrqu;
 	struct iw_michaelmicfailure ev;
-	struct mlme_priv *pmlmepriv  = &padapter->mlmepriv;
+	struct mlme_priv *mlmepriv  = &adapter->mlmepriv;
 
 	memset(&ev, 0x00, sizeof(ev));
 	if (bgroup)
@@ -84,54 +84,54 @@ void r8712_handle_tkip_mic_err(struct _adapter *padapter, u8 bgroup)
 	else
 		ev.flags |= IW_MICFAILURE_PAIRWISE;
 	ev.src_addr.sa_family = ARPHRD_ETHER;
-	ether_addr_copy(ev.src_addr.sa_data, &pmlmepriv->assoc_bssid[0]);
+	ether_addr_copy(ev.src_addr.sa_data, &mlmepriv->assoc_bssid[0]);
 	memset(&wrqu, 0x00, sizeof(wrqu));
 	wrqu.data.length = sizeof(ev);
-	wireless_send_event(padapter->pnetdev, IWEVMICHAELMICFAILURE, &wrqu,
+	wireless_send_event(adapter->pnetdev, IWEVMICHAELMICFAILURE, &wrqu,
 			    (char *)&ev);
 }
 
-void r8712_recv_indicatepkt(struct _adapter *padapter,
-			    union recv_frame *precv_frame)
+void r8712_recv_indicatepkt(struct _adapter *adapter,
+			    union recv_frame *recvframe)
 {
-	struct recv_priv *precvpriv;
-	struct  __queue	*pfree_recv_queue;
+	struct recv_priv *recvpriv;
+	struct  __queue	*free_recv_queue;
 	_pkt *skb;
-	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
+	struct rx_pkt_attrib *attrib = &recvframe->u.hdr.attrib;
 
-	precvpriv = &padapter->recvpriv;
-	pfree_recv_queue = &precvpriv->free_recv_queue;
-	skb = precv_frame->u.hdr.pkt;
+	recvpriv = &adapter->recvpriv;
+	free_recv_queue = &recvpriv->free_recv_queue;
+	skb = recvframe->u.hdr.pkt;
 	if (!skb)
 		goto _recv_indicatepkt_drop;
-	skb->data = precv_frame->u.hdr.rx_data;
-	skb->len = precv_frame->u.hdr.len;
+	skb->data = recvframe->u.hdr.rx_data;
+	skb->len = recvframe->u.hdr.len;
 	skb_set_tail_pointer(skb, skb->len);
-	if ((pattrib->tcpchk_valid == 1) && (pattrib->tcp_chkrpt == 1))
+	if ((attrib->tcpchk_valid == 1) && (attrib->tcp_chkrpt == 1))
 		skb->ip_summed = CHECKSUM_UNNECESSARY;
 	else
 		skb->ip_summed = CHECKSUM_NONE;
-	skb->dev = padapter->pnetdev;
-	skb->protocol = eth_type_trans(skb, padapter->pnetdev);
+	skb->dev = adapter->pnetdev;
+	skb->protocol = eth_type_trans(skb, adapter->pnetdev);
 	netif_rx(skb);
-	precv_frame->u.hdr.pkt = NULL; /* pointers to NULL before
+	recvframe->u.hdr.pkt = NULL; /* pointers to NULL before
 					* r8712_free_recvframe()
 					*/
-	r8712_free_recvframe(precv_frame, pfree_recv_queue);
+	r8712_free_recvframe(recvframe, free_recv_queue);
 	return;
 _recv_indicatepkt_drop:
 	 /*enqueue back to free_recv_queue*/
-	if (precv_frame)
-		r8712_free_recvframe(precv_frame, pfree_recv_queue);
-	precvpriv->rx_drop++;
+	if (recvframe)
+		r8712_free_recvframe(recvframe, free_recv_queue);
+	recvpriv->rx_drop++;
 }
 
 static void _r8712_reordering_ctrl_timeout_handler (struct timer_list *t)
 {
-	struct recv_reorder_ctrl *preorder_ctrl =
-			 from_timer(preorder_ctrl, t, reordering_ctrl_timer);
+	struct recv_reorder_ctrl *reorder_ctrl =
+			 from_timer(reorder_ctrl, t, reordering_ctrl_timer);
 
-	r8712_reordering_ctrl_timeout_handler(preorder_ctrl);
+	r8712_reordering_ctrl_timeout_handler(reorder_ctrl);
 }
 
 void r8712_init_recv_timer(struct recv_reorder_ctrl *preorder_ctrl)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
