Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB38DE5A68
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 14:12:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0EC9B87A14;
	Sat, 26 Oct 2019 12:12:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2z3RsUYxIwKv; Sat, 26 Oct 2019 12:12:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 574D5877E4;
	Sat, 26 Oct 2019 12:12:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB2291BF3D1
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 12:11:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C85148737E
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 12:11:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XcTK2rZvpJmV for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 12:11:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D40AA87082
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 12:11:58 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id c22so4623030wmd.1
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 05:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NbVw9OZf55Mog4i/sEkAhwwn11xFr8zvKreYfJn7iLs=;
 b=mefPGp8zoB4sngplTq72i2EyVeL3DuklHM38e/Gi/ILN/GE4zliseR0FQmxSwEAclg
 xl68zhkGpfRrgYApPYFOX87LLWcPEpluAoTy1FpfI+5giIXcGLmazFqwXGa1HuUG145B
 P4wMWoE4O3Rn1R+w539NPThKr9OpPuTGGhiw/Q82iAtgLhpwdG9uwomYhTno6gIDmWNm
 awV8QzbheoPCvCQAPot+MOwWKtApQovy6RbgpPUocfimlomnl9gi6n1xMI+wk482ECjC
 HtJzoTvtEwLZWkmim478iXTu55u91tNjhjApbTYkO+QDj945TPJBxk9J6/DKnzZ6dMVP
 UqcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NbVw9OZf55Mog4i/sEkAhwwn11xFr8zvKreYfJn7iLs=;
 b=FdFz6aMyVorRX0oOA3vz66OpkNRImBvr9Qm9gphiETPD19EIMBqeuaufPxigwCptr3
 +dtmygx3b0OPizJlV3E9QHhPUNoVUyRXH0GmK21FZNKJPM1gWv54w1yb5X0FI7nvnVwy
 iUZMnJDYB7rFSo1PFBhXVi/JcWmOztP7XpGtGfPuKicSYVpKWK8taIs2rzaO4WHH/pve
 sKw2Xxiuqx1CYP/tIsmU9FO0ZEGgJsthGwql4C1/9siVS3BXLdDxIZqdJW3OboNDbfP+
 JI+QOdHr/xQeyoxaCDJhEPOG6+CRSPYsgAhVyrVaqxWdw9Ei89/T4Jz5EaIRSKM4DoqJ
 /YeA==
X-Gm-Message-State: APjAAAUeIfHOXp4sM66QlZqMmLokJ3JxrQioNdjf7+Y35OYRIYdZxNzY
 hISnXsTwOL/rhraOjvQzlZU=
X-Google-Smtp-Source: APXvYqwl5eWg+VITDyN2ZJlOeMGJRckdHk7Bpa7YTjumiFu79UNA7QXRDnZdCHTT5OiXG4jd7Son7g==
X-Received: by 2002:a1c:a551:: with SMTP id o78mr7224184wme.4.1572091917410;
 Sat, 26 Oct 2019 05:11:57 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id v8sm5789906wra.79.2019.10.26.05.11.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Oct 2019 05:11:56 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 7/7] staging: rtl8188eu: reduce indentation level in
 rtw_alloc_stainfo
Date: Sat, 26 Oct 2019 14:11:35 +0200
Message-Id: <20191026121135.181897-7-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026121135.181897-1-straube.linux@gmail.com>
References: <20191026121135.181897-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove else-arm from if-else statement. Move the else code out of the
if-else and skip it by adding goto exit to the if block. The exit label
was directly after the else-arm, so there is no change in behaviour.
Reduces indentation level and clears a line over 80 characters
checkpatch warning.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 101 ++++++++++---------
 1 file changed, 51 insertions(+), 50 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 43925b1f43ef..776931b8bf72 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -181,70 +181,71 @@ struct sta_info *rtw_alloc_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 					struct sta_info, list);
 	if (!psta) {
 		spin_unlock_bh(&pfree_sta_queue->lock);
-	} else {
-		list_del_init(&psta->list);
-		spin_unlock_bh(&pfree_sta_queue->lock);
-		_rtw_init_stainfo(psta);
-		memcpy(psta->hwaddr, hwaddr, ETH_ALEN);
-		index = wifi_mac_hash(hwaddr);
-		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_info_,
-			 ("%s: index=%x", __func__, index));
-		if (index >= NUM_STA) {
-			RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_,
-				 ("ERROR => %s: index >= NUM_STA", __func__));
-			psta = NULL;
-			goto exit;
-		}
-		phash_list = &pstapriv->sta_hash[index];
-
-		spin_lock_bh(&pstapriv->sta_hash_lock);
-		list_add_tail(&psta->hash_list, phash_list);
-		pstapriv->asoc_sta_count++;
-		spin_unlock_bh(&pstapriv->sta_hash_lock);
+		goto exit;
+	}
 
-		/* Commented by Albert 2009/08/13
-		 * For the SMC router, the sequence number of first packet of
-		 * WPS handshake will be 0. In this case, this packet will be
-		 * dropped by recv_decache function if we use the 0x00 as the
-		 * default value for tid_rxseq variable. So, we initialize the
-		 * tid_rxseq variable as the 0xffff.
-		 */
+	list_del_init(&psta->list);
+	spin_unlock_bh(&pfree_sta_queue->lock);
+	_rtw_init_stainfo(psta);
+	memcpy(psta->hwaddr, hwaddr, ETH_ALEN);
+	index = wifi_mac_hash(hwaddr);
+	RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_info_,
+		 ("%s: index=%x", __func__, index));
+	if (index >= NUM_STA) {
+		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_,
+			 ("ERROR => %s: index >= NUM_STA", __func__));
+		psta = NULL;
+		goto exit;
+	}
+	phash_list = &pstapriv->sta_hash[index];
 
-		for (i = 0; i < 16; i++)
-			memcpy(&psta->sta_recvpriv.rxcache.tid_rxseq[i],
-			       &wRxSeqInitialValue, 2);
+	spin_lock_bh(&pstapriv->sta_hash_lock);
+	list_add_tail(&psta->hash_list, phash_list);
+	pstapriv->asoc_sta_count++;
+	spin_unlock_bh(&pstapriv->sta_hash_lock);
 
-		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_info_,
-			 ("alloc number_%d stainfo  with hwaddr = %pM\n",
-			 pstapriv->asoc_sta_count, hwaddr));
+	/* Commented by Albert 2009/08/13
+	 * For the SMC router, the sequence number of first packet of
+	 * WPS handshake will be 0. In this case, this packet will be
+	 * dropped by recv_decache function if we use the 0x00 as the
+	 * default value for tid_rxseq variable. So, we initialize the
+	 * tid_rxseq variable as the 0xffff.
+	 */
 
-		init_addba_retry_timer(pstapriv->padapter, psta);
+	for (i = 0; i < 16; i++)
+		memcpy(&psta->sta_recvpriv.rxcache.tid_rxseq[i],
+		       &wRxSeqInitialValue, 2);
 
-		/* for A-MPDU Rx reordering buffer control */
-		for (i = 0; i < 16; i++) {
-			preorder_ctrl = &psta->recvreorder_ctrl[i];
+	RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_info_,
+		 ("alloc number_%d stainfo  with hwaddr = %pM\n",
+		  pstapriv->asoc_sta_count, hwaddr));
 
-			preorder_ctrl->padapter = pstapriv->padapter;
+	init_addba_retry_timer(pstapriv->padapter, psta);
 
-			preorder_ctrl->enable = false;
+	/* for A-MPDU Rx reordering buffer control */
+	for (i = 0; i < 16; i++) {
+		preorder_ctrl = &psta->recvreorder_ctrl[i];
 
-			preorder_ctrl->indicate_seq = 0xffff;
-			preorder_ctrl->wend_b = 0xffff;
-			preorder_ctrl->wsize_b = 64;/* 64; */
+		preorder_ctrl->padapter = pstapriv->padapter;
 
-			_rtw_init_queue(&preorder_ctrl->pending_recvframe_queue);
+		preorder_ctrl->enable = false;
 
-			rtw_init_recv_timer(preorder_ctrl);
-		}
+		preorder_ctrl->indicate_seq = 0xffff;
+		preorder_ctrl->wend_b = 0xffff;
+		preorder_ctrl->wsize_b = 64;/* 64; */
 
-		/* init for DM */
-		psta->rssi_stat.UndecoratedSmoothedPWDB = -1;
-		psta->rssi_stat.UndecoratedSmoothedCCK = -1;
+		_rtw_init_queue(&preorder_ctrl->pending_recvframe_queue);
 
-		/* init for the sequence number of received management frame */
-		psta->RxMgmtFrameSeqNum = 0xffff;
+		rtw_init_recv_timer(preorder_ctrl);
 	}
 
+	/* init for DM */
+	psta->rssi_stat.UndecoratedSmoothedPWDB = -1;
+	psta->rssi_stat.UndecoratedSmoothedCCK = -1;
+
+	/* init for the sequence number of received management frame */
+	psta->RxMgmtFrameSeqNum = 0xffff;
+
 exit:
 	return psta;
 }
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
