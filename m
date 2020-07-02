Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3022321284A
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 17:45:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B632D8A089;
	Thu,  2 Jul 2020 15:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e94OofULNz5R; Thu,  2 Jul 2020 15:45:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E117B8A15F;
	Thu,  2 Jul 2020 15:45:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B70231BF4E6
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 15:45:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B436088E96
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 15:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QPzKLyatB8-G for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 15:45:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0E3AC88E92
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 15:45:20 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id w2so12847968pgg.10
 for <devel@driverdev.osuosl.org>; Thu, 02 Jul 2020 08:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=M5epT+ZnUgKP+WCCXExIrVbl9Uf15MOmZ2N+7978elE=;
 b=DKYPBWm73CUJPwZ5vWCd5nexOuLCVv9xz7Z+H6m7w+/pjgI/1+jIO+Mm6dTdAeDkox
 rmSVdm1HuYFB3c1wisNEbkB+WQdaFb4Gm7uvcYeKasyZbx+YS1nhN4jrwT21rPLMCnwb
 pua0fKKHoJOBlwzOouwBIWN3f+lprwa0uZfi3FMoT15r+kYqn5ydb3gDQ4G0XNA/SWYf
 C3OM4i7DAZZcy5nEKryodmsrI+TtUDxMdYHO40TfKd0UnynRoA9g8IeIW8Tw0sDODAvy
 cZGHH3n8PW4EdGNYhR7Q11Z0BF0TqGN/p9QC/qWgZaqX1eeNWDMmdALVOLGfBMkK4GpO
 ZFxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=M5epT+ZnUgKP+WCCXExIrVbl9Uf15MOmZ2N+7978elE=;
 b=EjdXwi0kGspkbs4CuN63y5xgWMTzkCU4YrPmvRLbN5SYC9orxmQ+jTBEOD3hvAcAv4
 lftsYfB1zvQBGr/4G6XK8PM/hA8/MQ6/Rsh+9fyUqbTAEijb9Z55bwdui0FB7sOV4Djo
 hGMCm6tiTw6uOoEi4t380V4oH2+OUaM4NsQnrAI64MUlEsTJMUMJnoQa+Mh38m2ykM2P
 vNCt/+4q1K3cdHGs3Roy0id9DlnfKjjWtPkv1kLHhSrRQ65NigKS+DsX9bklBQJHiUaP
 MPkwOYIB605GG6ghXdHq8TSxuJT1uepwAltWoAPNW3eC7MAsTpIgbSvDYDhLZNKbIY/U
 14zw==
X-Gm-Message-State: AOAM531eLnH5b5jLntkkdGp6cghkr8zGE/vBDtFHk7VNrj4jSzs4AIRe
 PK1FvNH8/E3a0Xb37QzEjko=
X-Google-Smtp-Source: ABdhPJykLlKwL2WPoDRiAMRqYEo7wDo2RE5ICzKdbcSkxAQcLiK6SiEHTdjf/LEr4/ls1rQTcN3S6w==
X-Received: by 2002:a63:8b4c:: with SMTP id j73mr24643165pge.209.1593704719681; 
 Thu, 02 Jul 2020 08:45:19 -0700 (PDT)
Received: from localhost.localdomain (n11923716050.netvigator.com.
 [119.237.16.50])
 by smtp.gmail.com with ESMTPSA id f15sm7166804pgr.36.2020.07.02.08.45.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jul 2020 08:45:19 -0700 (PDT)
From: Simon Fong <simon.fodin@gmail.com>
To: Larry.Finger@lwfinger.net
Subject: [PATCH 2/2] staging: rtl8188eu: Fix WARNINGs of Block comments
Date: Thu,  2 Jul 2020 23:44:20 +0800
Message-Id: <239f5c7f4761dd2ef0df8ee6966fca8ed2a13a9c.1593703689.git.simon.fodin@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1593703689.git.simon.fodin@gmail.com>
References: <cover.1593703689.git.simon.fodin@gmail.com>
In-Reply-To: <cover.1593703689.git.simon.fodin@gmail.com>
References: <cover.1593703689.git.simon.fodin@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Simon Fong <simon.fodin@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed 5 WARNINGs of Block comments use * on subsequent lines.

Signed-off-by: Simon Fong <simon.fodin@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_xmit.c | 62 +++++++++++------------
 1 file changed, 31 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index 258531bc1408..9a3e5d5bade9 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -49,8 +49,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	spin_lock_init(&pxmitpriv->lock);
 
 	/*
-	Please insert all the queue initializaiton using _rtw_init_queue below
-	*/
+	 * Please insert all the queue initializaiton using _rtw_init_queue below
+	 */
 
 	pxmitpriv->adapter = padapter;
 
@@ -63,10 +63,10 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	_rtw_init_queue(&pxmitpriv->free_xmit_queue);
 
 	/*
-	Please allocate memory with the sz = (struct xmit_frame) * NR_XMITFRAME,
-	and initialize free_xmit_frame below.
-	Please also apply  free_txobj to link_up all the xmit_frames...
-	*/
+	 * Please allocate memory with the sz = (struct xmit_frame) * NR_XMITFRAME,
+	 * and initialize free_xmit_frame below.
+	 * Please also apply  free_txobj to link_up all the xmit_frames...
+	 */
 
 	pxmitpriv->pallocated_frame_buf = vzalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4);
 
@@ -893,17 +893,17 @@ s32 rtw_txframes_sta_ac_pending(struct adapter *padapter, struct pkt_attrib *pat
 }
 
 /*
-
-This sub-routine will perform all the following:
-
-1. remove 802.3 header.
-2. create wlan_header, based on the info in pxmitframe
-3. append sta's iv/ext-iv
-4. append LLC
-5. move frag chunk from pframe to pxmitframe->mem
-6. apply sw-encrypt, if necessary.
-
-*/
+ *
+ * This sub-routine will perform all the following:
+ *
+ * 1. remove 802.3 header.
+ * 2. create wlan_header, based on the info in pxmitframe
+ * 3. append sta's iv/ext-iv
+ * 4. append LLC
+ * 5. move frag chunk from pframe to pxmitframe->mem
+ * 6. apply sw-encrypt, if necessary.
+ *
+ */
 s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct xmit_frame *pxmitframe)
 {
 	s32 frg_inx, frg_len, mpdu_len, llc_sz, mem_sz;
@@ -1233,25 +1233,25 @@ s32 rtw_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 }
 
 /*
-Calling context:
-1. OS_TXENTRY
-2. RXENTRY (rx_thread or RX_ISR/RX_CallBack)
-
-If we turn on USE_RXTHREAD, then, no need for critical section.
-Otherwise, we must use _enter/_exit critical to protect free_xmit_queue...
-
-Must be very very cautious...
-
-*/
+ * Calling context:
+ * 1. OS_TXENTRY
+ * 2. RXENTRY (rx_thread or RX_ISR/RX_CallBack)
+ *
+ * If we turn on USE_RXTHREAD, then, no need for critical section.
+ * Otherwise, we must use _enter/_exit critical to protect free_xmit_queue...
+ *
+ * Must be very very cautious...
+ *
+ */
 
 struct xmit_frame *rtw_alloc_xmitframe(struct xmit_priv *pxmitpriv)
 				/* _queue *pfree_xmit_queue) */
 {
 	/*
-		Please remember to use all the osdep_service api,
-		and lock/unlock or _enter/_exit critical to protect
-		pfree_xmit_queue
-	*/
+	 *	Please remember to use all the osdep_service api,
+	 *	and lock/unlock or _enter/_exit critical to protect
+	 *	pfree_xmit_queue
+	 */
 	struct xmit_frame *pxframe;
 	struct __queue *pfree_xmit_queue = &pxmitpriv->free_xmit_queue;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
