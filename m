Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2107C26BCC7
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Sep 2020 08:22:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6E23727256;
	Wed, 16 Sep 2020 06:22:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cdpS0qDaiM71; Wed, 16 Sep 2020 06:22:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F332B20010;
	Wed, 16 Sep 2020 06:22:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F47C1BF866
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:22:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 889FF864B8
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:22:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XLroXUU470ed for <devel@linuxdriverproject.org>;
 Wed, 16 Sep 2020 06:22:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D0B8486416
 for <devel@driverdev.osuosl.org>; Wed, 16 Sep 2020 06:22:34 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id f1so2631967plo.13
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 23:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3u+/e+GVaTMgytHZfUTcAguGcbD5fnB/jR8v11HQAQE=;
 b=gVI33U5lFI+jKa0UdI6M0hjiXF5YVWc0iLdNayK+dwi/ug1qKtafS7VkuK17h424PV
 wXphLKt7cTvkCd62UdFLzaV2jHH7TrzXXraYXhVaqNnxgHP8EmDec+1Tszib/TIMABQm
 KTaB3OOcS6xZVcaQ5HwY/dJNYVWylYN1gwxAMqukqvDbiNFjKUSiHCw5aXLnRk+1gkZC
 if/5fNByXq7f7hvf1Nb88fLyO2B2chOJw5jiaPhuSQt0hxDkuicPqzwDn8VeO6UPBne1
 war9RLvt6XuqUCKEi7EVEVAhjC505yhwq02JBdvHJy9maL3e6O341xblgND9ds8VYW20
 ixDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3u+/e+GVaTMgytHZfUTcAguGcbD5fnB/jR8v11HQAQE=;
 b=Nt0LePx2cH2ArD41y4rHFVdmz2y1CLt/5pUdmD+oWxmqiQjP7Rs43r36k+EiWDBhQv
 HU8RauQZUIDgCej2RQpI9zymm0KowOaJxLLC6CiX6zakZGuYF35+YGg4rbwc+qRwShTv
 +1h3pRistisDcSqyKqslarwzY+G2i8Mn/u+PPChRgXjMiPF73r/7jY9gaTC/55yPIEnM
 fjCckRMRbVbTnUUM8L2hjZdnE3IsG9o+jkAB4GcHUIDzttio721hQLBPrIbWfJ+C3FUJ
 YyM8UEy8gjdxByWq2UuycZr9viZLCE9YDyyuWUe/OwkdKOuYVPWWwbaBlur4WZ6drjnQ
 vJ7g==
X-Gm-Message-State: AOAM530XN9RRwB9sMj4/mskaFocxuYCI7v23cWycFLy2nVVZn9Q5F9zp
 o4JJXzn6pTN5A9I3Cr6B7ME=
X-Google-Smtp-Source: ABdhPJyrTWxhAAZ7X/sTU2d3HR0Scy9kC3wTWBynWpUeOG1kdqTxiIhecT6geVifLMEcfi5qm7BlPg==
X-Received: by 2002:a17:90b:1988:: with SMTP id
 mv8mr2689739pjb.23.1600237354465; 
 Tue, 15 Sep 2020 23:22:34 -0700 (PDT)
Received: from localhost.localdomain ([49.207.195.121])
 by smtp.gmail.com with ESMTPSA id 137sm16369269pfu.149.2020.09.15.23.22.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 23:22:33 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: convert tasklets to use new
 tasklet_setup() API
Date: Wed, 16 Sep 2020 11:52:24 +0530
Message-Id: <20200916062224.58203-1-allen.lkml@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Romain Perier <romain.perier@gmail.com>,
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
 drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c    | 3 +--
 drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c    | 3 +--
 drivers/staging/rtl8188eu/include/rtl8188e_recv.h | 2 +-
 drivers/staging/rtl8188eu/include/rtl8188e_xmit.h | 2 +-
 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c  | 8 ++++----
 5 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
index 7badfc2e45df..25f46b2f4920 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
@@ -22,8 +22,7 @@ int rtw_hal_init_recv_priv(struct adapter *padapter)
 	int i, res = _SUCCESS;
 	struct recv_buf *precvbuf;
 
-	tasklet_init(&precvpriv->recv_tasklet, rtl8188eu_recv_tasklet,
-		     (unsigned long)padapter);
+	tasklet_setup(&precvpriv->recv_tasklet, rtl8188eu_recv_tasklet);
 
 	/* init recv_buf */
 	_rtw_init_queue(&precvpriv->free_recv_buf_queue);
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
index 7d315bd438d4..52023551ab30 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
@@ -17,8 +17,7 @@ s32 rtw_hal_init_xmit_priv(struct adapter *adapt)
 {
 	struct xmit_priv *pxmitpriv = &adapt->xmitpriv;
 
-	tasklet_init(&pxmitpriv->xmit_tasklet, rtl8188eu_xmit_tasklet,
-		     (unsigned long)adapt);
+	tasklet_setup(&pxmitpriv->xmit_tasklet, rtl8188eu_xmit_tasklet);
 	return _SUCCESS;
 }
 
diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_recv.h b/drivers/staging/rtl8188eu/include/rtl8188e_recv.h
index 23251ffa8404..fea1119c426e 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_recv.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_recv.h
@@ -43,7 +43,7 @@ enum rx_packet_type {
 };
 
 #define INTERRUPT_MSG_FORMAT_LEN 60
-void rtl8188eu_recv_tasklet(unsigned long priv);
+void rtl8188eu_recv_tasklet(struct tasklet_struct *t);
 void rtl8188e_process_phy_info(struct adapter *padapter,
 			       struct recv_frame *prframe);
 void update_recvframe_phyinfo_88e(struct recv_frame *fra, struct phy_stat *phy);
diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h b/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
index 85efa41c8350..354480678270 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_xmit.h
@@ -147,7 +147,7 @@ void rtl8188e_fill_fake_txdesc(struct adapter *padapter, u8 *pDesc,
 s32 rtl8188eu_init_xmit_priv(struct adapter *padapter);
 s32 rtl8188eu_xmit_buf_handler(struct adapter *padapter);
 #define hal_xmit_handler rtl8188eu_xmit_buf_handler
-void rtl8188eu_xmit_tasklet(unsigned long priv);
+void rtl8188eu_xmit_tasklet(struct tasklet_struct *t);
 bool rtl8188eu_xmitframe_complete(struct adapter *padapter,
 				  struct xmit_priv *pxmitpriv);
 
diff --git a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
index a80c7f3b86d1..6926443bba4e 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
@@ -773,10 +773,10 @@ void usb_write_port_cancel(struct adapter *padapter)
 	}
 }
 
-void rtl8188eu_recv_tasklet(unsigned long priv)
+void rtl8188eu_recv_tasklet(struct tasklet_struct *t)
 {
 	struct sk_buff *pskb;
-	struct adapter *adapt = (struct adapter *)priv;
+	struct adapter *adapt = from_tasklet(adapt, t, recvpriv.recv_tasklet);
 	struct recv_priv *precvpriv = &adapt->recvpriv;
 
 	while (NULL != (pskb = skb_dequeue(&precvpriv->rx_skb_queue))) {
@@ -792,9 +792,9 @@ void rtl8188eu_recv_tasklet(unsigned long priv)
 	}
 }
 
-void rtl8188eu_xmit_tasklet(unsigned long priv)
+void rtl8188eu_xmit_tasklet(struct tasklet_struct *t)
 {
-	struct adapter *adapt = (struct adapter *)priv;
+	struct adapter *adapt = from_tasklet(adapt, t, xmitpriv.xmit_tasklet);
 	struct xmit_priv *pxmitpriv = &adapt->xmitpriv;
 
 	if (check_fwstate(&adapt->mlmepriv, _FW_UNDER_SURVEY))
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
