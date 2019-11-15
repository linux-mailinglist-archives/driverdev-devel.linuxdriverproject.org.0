Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A38FFE3E8
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Nov 2019 18:28:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F2F2188A9A;
	Fri, 15 Nov 2019 17:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fbyk4neQi1zZ; Fri, 15 Nov 2019 17:28:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 759E6888A2;
	Fri, 15 Nov 2019 17:28:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6FC941BF869
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 17:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 698D5887DD
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 17:28:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zt8WxJd8ccG3 for <devel@linuxdriverproject.org>;
 Fri, 15 Nov 2019 17:28:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 563FF887C4
 for <devel@driverdev.osuosl.org>; Fri, 15 Nov 2019 17:28:31 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id f19so6297654pgk.11
 for <devel@driverdev.osuosl.org>; Fri, 15 Nov 2019 09:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=qZK3HVs47SIGhhTd1rfR9bYUjfajSgqCvuOVVPpyYw8=;
 b=D4R//0ToYPZ5E+f9cJ54J1f2gUUdXdxRfJZl5SHyTee5cP/eXs3geoATkdCjdyB11n
 Rvy98ITUQIKIohMG9ejK0vm3XU3N3uKqa8nDnAcTtz8OKEslkUTPwy700Nmk4Qm0c8rz
 gvxhYEJ8HmI7r+sQcuFyKEZP+6WAv9gh07wUY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=qZK3HVs47SIGhhTd1rfR9bYUjfajSgqCvuOVVPpyYw8=;
 b=jbT20dqOkd5KCVWUysadg1ZSI3fo2chibFCBp0mXelaaPyGBidrpuMRK8Mhts5GhUb
 idC1RCybl1kZMxeaY92PQ+ZWfxsND3w2+CgrQSvXd7GdzYCz+DPHanvEPy33G2k6DaUM
 oxOc3rvJSJcJgmN4bstkneNtkrczTZqmXVkseVeYOytlsM+/qhFWutvIUBzISvsPWy2l
 4YoeXXYa5TCXraYx7H/dRgzbeeh/rR6U+fAWK5g3isIp6tI4OzDVS4fVcu+0g+hmxNIK
 EHcTYClaxRMO5NuZb8TxrbDckT9u8rlSVywzfdDL9Y37xHhHlU2AIf+CpwX6fW5RkK6r
 aG3A==
X-Gm-Message-State: APjAAAWSJ9ELUQUKgosOLYYclz2WEzBkkq+CCN2dmGFDzPSCvJdDUR5H
 2LErYxle6TyIa8yQodDOabKhEg==
X-Google-Smtp-Source: APXvYqzqnqFmSS2VHuIdvDVLykwCxxnjumTQ2o71V4Q8yIl7S4k2NJ2KDbH/pGYp1b24ePhUjkvg6g==
X-Received: by 2002:a63:5f04:: with SMTP id t4mr17214702pgb.73.1573838910748; 
 Fri, 15 Nov 2019 09:28:30 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r68sm11947340pfr.78.2019.11.15.09.28.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 09:28:29 -0800 (PST)
Date: Fri, 15 Nov 2019 09:28:28 -0800
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: rtl*: Remove tasklet callback casts
Message-ID: <201911150926.2894A4F973@keescook>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 kernel-hardening@lists.openwall.com, linux-kernel@vger.kernel.org,
 Romain Perier <romain.perier@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In order to make the entire kernel usable under Clang's Control Flow
Integrity protections, function prototype casts need to be avoided
because this will trip CFI checks at runtime (i.e. a mismatch between
the caller's expected function prototype and the destination function's
prototype). Many of these cases can be found with -Wcast-function-type,
which found that the rtl wifi drivers had a bunch of needless function
casts. Remove function casts for tasklet callbacks in the various drivers.

Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
---
v2: rebased to staging-next, added reviewed-by
v1: https://lore.kernel.org/lkml/201911142135.5656E23@keescook
---
 drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c        |  3 +--
 drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c        |  3 +--
 drivers/staging/rtl8188eu/include/rtl8188e_recv.h     |  2 +-
 drivers/staging/rtl8188eu/include/rtl8188e_xmit.h     |  2 +-
 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c      |  8 ++++----
 drivers/staging/rtl8192e/rtllib_softmac.c             |  7 +++----
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c    |  7 +++----
 drivers/staging/rtl8192u/r8192U_core.c                |  8 ++++----
 drivers/staging/rtl8712/rtl8712_recv.c                |  9 ++++-----
 drivers/staging/rtl8712/rtl871x_xmit.c                |  5 ++---
 drivers/staging/rtl8712/rtl871x_xmit.h                |  2 +-
 drivers/staging/rtl8712/usb_ops_linux.c               |  4 ++--
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c        | 11 ++++-------
 13 files changed, 31 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
index c0d51ba70a75..1cf8cff9a2a4 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
@@ -22,8 +22,7 @@ int	rtw_hal_init_recv_priv(struct adapter *padapter)
 	int	i, res = _SUCCESS;
 	struct recv_buf *precvbuf;
 
-	tasklet_init(&precvpriv->recv_tasklet,
-		     (void(*)(unsigned long))rtl8188eu_recv_tasklet,
+	tasklet_init(&precvpriv->recv_tasklet, rtl8188eu_recv_tasklet,
 		     (unsigned long)padapter);
 
 	/* init recv_buf */
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
index ab94ad9d608a..2808f2b119bf 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
@@ -17,8 +17,7 @@ s32 rtw_hal_init_xmit_priv(struct adapter *adapt)
 {
 	struct xmit_priv *pxmitpriv = &adapt->xmitpriv;
 
-	tasklet_init(&pxmitpriv->xmit_tasklet,
-		     (void(*)(unsigned long))rtl8188eu_xmit_tasklet,
+	tasklet_init(&pxmitpriv->xmit_tasklet, rtl8188eu_xmit_tasklet,
 		     (unsigned long)adapt);
 	return _SUCCESS;
 }
diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_recv.h b/drivers/staging/rtl8188eu/include/rtl8188e_recv.h
index c2c7ef974dc5..23251ffa8404 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_recv.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_recv.h
@@ -43,7 +43,7 @@ enum rx_packet_type {
 };
 
 #define INTERRUPT_MSG_FORMAT_LEN 60
-void rtl8188eu_recv_tasklet(void *priv);
+void rtl8188eu_recv_tasklet(unsigned long priv);
 void rtl8188e_process_phy_info(struct adapter *padapter,
 			       struct recv_frame *prframe);
 void update_recvframe_phyinfo_88e(struct recv_frame *fra, struct phy_stat *phy);
diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h b/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
index 421e9f45306f..c6c2ad20d9cf 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
@@ -148,7 +148,7 @@ void rtl8188e_fill_fake_txdesc(struct adapter *padapter, u8 *pDesc,
 s32 rtl8188eu_init_xmit_priv(struct adapter *padapter);
 s32 rtl8188eu_xmit_buf_handler(struct adapter *padapter);
 #define hal_xmit_handler rtl8188eu_xmit_buf_handler
-void rtl8188eu_xmit_tasklet(void *priv);
+void rtl8188eu_xmit_tasklet(unsigned long priv);
 bool rtl8188eu_xmitframe_complete(struct adapter *padapter,
 				  struct xmit_priv *pxmitpriv);
 
diff --git a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
index aaab0d577453..3cd6da1f843d 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
@@ -773,10 +773,10 @@ void usb_write_port_cancel(struct adapter *padapter)
 	}
 }
 
-void rtl8188eu_recv_tasklet(void *priv)
+void rtl8188eu_recv_tasklet(unsigned long priv)
 {
 	struct sk_buff *pskb;
-	struct adapter *adapt = priv;
+	struct adapter *adapt = (struct adapter *)priv;
 	struct recv_priv *precvpriv = &adapt->recvpriv;
 
 	while (NULL != (pskb = skb_dequeue(&precvpriv->rx_skb_queue))) {
@@ -792,9 +792,9 @@ void rtl8188eu_recv_tasklet(void *priv)
 	}
 }
 
-void rtl8188eu_xmit_tasklet(void *priv)
+void rtl8188eu_xmit_tasklet(unsigned long priv)
 {
-	struct adapter *adapt = priv;
+	struct adapter *adapt = (struct adapter *)priv;
 	struct xmit_priv *pxmitpriv = &adapt->xmitpriv;
 
 	if (check_fwstate(&adapt->mlmepriv, _FW_UNDER_SURVEY))
diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index f2f7529e7c80..6e2f620afd14 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -2044,8 +2044,9 @@ static short rtllib_sta_ps_sleep(struct rtllib_device *ieee, u64 *time)
 
 }
 
-static inline void rtllib_sta_ps(struct rtllib_device *ieee)
+static inline void rtllib_sta_ps(unsigned long data)
 {
+	struct rtllib_device *ieee = (struct rtllib_device *)data;
 	u64 time;
 	short sleep;
 	unsigned long flags, flags2;
@@ -3027,9 +3028,7 @@ void rtllib_softmac_init(struct rtllib_device *ieee)
 	spin_lock_init(&ieee->mgmt_tx_lock);
 	spin_lock_init(&ieee->beacon_lock);
 
-	tasklet_init(&ieee->ps_task,
-	     (void(*)(unsigned long)) rtllib_sta_ps,
-	     (unsigned long)ieee);
+	tasklet_init(&ieee->ps_task, rtllib_sta_ps, (unsigned long)ieee);
 
 }
 
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index bd5b554787d1..90692db81b71 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -1683,8 +1683,9 @@ static short ieee80211_sta_ps_sleep(struct ieee80211_device *ieee, u32 *time_h,
 	return 1;
 }
 
-static inline void ieee80211_sta_ps(struct ieee80211_device *ieee)
+static inline void ieee80211_sta_ps(unsigned long data)
 {
+	struct ieee80211_device *ieee = (struct ieee80211_device *)data;
 	u32 th, tl;
 	short sleep;
 
@@ -2593,9 +2594,7 @@ void ieee80211_softmac_init(struct ieee80211_device *ieee)
 	spin_lock_init(&ieee->mgmt_tx_lock);
 	spin_lock_init(&ieee->beacon_lock);
 
-	tasklet_init(&ieee->ps_task,
-		     (void(*)(unsigned long)) ieee80211_sta_ps,
-		     (unsigned long)ieee);
+	tasklet_init(&ieee->ps_task, ieee80211_sta_ps, (unsigned long)ieee);
 }
 
 void ieee80211_softmac_free(struct ieee80211_device *ieee)
diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 48f1591ed5b4..7e2cabd16e88 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -2193,7 +2193,7 @@ static void rtl8192_init_priv_lock(struct r8192_priv *priv)
 
 static void rtl819x_watchdog_wqcallback(struct work_struct *work);
 
-static void rtl8192_irq_rx_tasklet(struct r8192_priv *priv);
+static void rtl8192_irq_rx_tasklet(unsigned long data);
 /* init tasklet and wait_queue here. only 2.6 above kernel is considered */
 #define DRV_NAME "wlan0"
 static void rtl8192_init_priv_task(struct net_device *dev)
@@ -2214,8 +2214,7 @@ static void rtl8192_init_priv_task(struct net_device *dev)
 			  InitialGainOperateWorkItemCallBack);
 	INIT_WORK(&priv->qos_activate, rtl8192_qos_activate);
 
-	tasklet_init(&priv->irq_rx_tasklet,
-		     (void(*)(unsigned long))rtl8192_irq_rx_tasklet,
+	tasklet_init(&priv->irq_rx_tasklet, rtl8192_irq_rx_tasklet,
 		     (unsigned long)priv);
 }
 
@@ -4655,8 +4654,9 @@ static void rtl8192_rx_cmd(struct sk_buff *skb)
 	}
 }
 
-static void rtl8192_irq_rx_tasklet(struct r8192_priv *priv)
+static void rtl8192_irq_rx_tasklet(unsigned long data)
 {
+	struct r8192_priv *priv = (struct r8192_priv *)data;
 	struct sk_buff *skb;
 	struct rtl8192_rx_info *info;
 
diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 06de031be6a9..00ea0beb12c9 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -33,7 +33,7 @@ static u8 bridge_tunnel_header[] = {0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8};
 /* Ethernet-II snap header (RFC1042 for most EtherTypes) */
 static u8 rfc1042_header[] = {0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00};
 
-static void recv_tasklet(void *priv);
+static void recv_tasklet(unsigned long priv);
 
 void r8712_init_recv_priv(struct recv_priv *precvpriv,
 			  struct _adapter *padapter)
@@ -65,8 +65,7 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
 		precvbuf++;
 	}
 	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
-	tasklet_init(&precvpriv->recv_tasklet,
-		     (void(*)(unsigned long))recv_tasklet,
+	tasklet_init(&precvpriv->recv_tasklet, recv_tasklet,
 		     (unsigned long)padapter);
 	skb_queue_head_init(&precvpriv->rx_skb_queue);
 
@@ -1078,10 +1077,10 @@ static void recvbuf2recvframe(struct _adapter *padapter, struct sk_buff *pskb)
 	} while ((transfer_len > 0) && pkt_cnt > 0);
 }
 
-static void recv_tasklet(void *priv)
+static void recv_tasklet(unsigned long priv)
 {
 	struct sk_buff *pskb;
-	struct _adapter *padapter = priv;
+	struct _adapter *padapter = (struct _adapter *)priv;
 	struct recv_priv *precvpriv = &padapter->recvpriv;
 
 	while (NULL != (pskb = skb_dequeue(&precvpriv->rx_skb_queue))) {
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index cc5809e49e35..f0b85338b567 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -143,9 +143,8 @@ int _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	INIT_WORK(&padapter->wk_filter_rx_ff0, r8712_SetFilter);
 	alloc_hwxmits(padapter);
 	init_hwxmits(pxmitpriv->hwxmits, pxmitpriv->hwxmit_entry);
-	tasklet_init(&pxmitpriv->xmit_tasklet,
-		(void(*)(unsigned long))r8712_xmit_bh,
-		(unsigned long)padapter);
+	tasklet_init(&pxmitpriv->xmit_tasklet, r8712_xmit_bh,
+		     (unsigned long)padapter);
 	return 0;
 }
 
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
index b14da38bf652..f227828094bf 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.h
+++ b/drivers/staging/rtl8712/rtl871x_xmit.h
@@ -277,7 +277,7 @@ int r8712_pre_xmit(struct _adapter *padapter, struct xmit_frame *pxmitframe);
 int r8712_xmit_enqueue(struct _adapter *padapter,
 		       struct xmit_frame *pxmitframe);
 void r8712_xmit_direct(struct _adapter *padapter, struct xmit_frame *pxmitframe);
-void r8712_xmit_bh(void *priv);
+void r8712_xmit_bh(unsigned long priv);
 
 void xmitframe_xmitbuf_attach(struct xmit_frame *pxmitframe,
 			struct xmit_buf *pxmitbuf);
diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
index 9d290bc2fdb7..0045da3bb69a 100644
--- a/drivers/staging/rtl8712/usb_ops_linux.c
+++ b/drivers/staging/rtl8712/usb_ops_linux.c
@@ -308,10 +308,10 @@ void r8712_usb_read_port_cancel(struct _adapter *padapter)
 	}
 }
 
-void r8712_xmit_bh(void *priv)
+void r8712_xmit_bh(unsigned long priv)
 {
 	int ret = false;
-	struct _adapter *padapter = priv;
+	struct _adapter *padapter = (struct _adapter *)priv;
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
 	if (padapter->driver_stopped ||
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index e8577c084bbd..1e8b61443408 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -230,7 +230,7 @@ static inline bool pkt_exceeds_tail(struct recv_priv *precvpriv,
 	return false;
 }
 
-static void rtl8723bs_recv_tasklet(void *priv)
+static void rtl8723bs_recv_tasklet(unsigned long priv)
 {
 	struct adapter *padapter;
 	struct hal_com_data *p_hal_data;
@@ -244,7 +244,7 @@ static void rtl8723bs_recv_tasklet(void *priv)
 	_pkt *pkt_copy = NULL;
 	u8 shift_sz = 0, rx_report_sz = 0;
 
-	padapter = priv;
+	padapter = (struct adapter *)priv;
 	p_hal_data = GET_HAL_DATA(padapter);
 	precvpriv = &padapter->recvpriv;
 	recv_buf_queue = &precvpriv->recv_buf_pending_queue;
@@ -462,11 +462,8 @@ s32 rtl8723bs_init_recv_priv(struct adapter *padapter)
 		goto initbuferror;
 
 	/* 3 2. init tasklet */
-	tasklet_init(
-		&precvpriv->recv_tasklet,
-		(void(*)(unsigned long))rtl8723bs_recv_tasklet,
-		(unsigned long)padapter
-	);
+	tasklet_init(&precvpriv->recv_tasklet, rtl8723bs_recv_tasklet,
+		     (unsigned long)padapter);
 
 	goto exit;
 
-- 
2.17.1


-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
