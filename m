Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A26734AF12
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 02:38:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E5E0B87A6B;
	Wed, 19 Jun 2019 00:38:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qZHX8Vb4U0Bf; Wed, 19 Jun 2019 00:38:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AABED87A39;
	Wed, 19 Jun 2019 00:38:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D8D01BF2B0
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 00:38:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0AB2485BD3
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 00:38:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wmgu4jiVys6n for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 00:38:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DD53A85AA1
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 00:38:11 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id r1so8612336pfq.12
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 17:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=JAYmJe5T1iiVqB3ElvUYNp6OdOEQtJUCcD+W8HqcZ34=;
 b=rkdcvjDJQBsV13ApP+SzAhPzCrFGyhG4uv808C846g5f2KE/w/wAQc0/hcis4Kw6kg
 wGp2Us9AyNC0zdTcHL2odGZ+v9eX+LLxPdRxGkphSezQSkGRolHfyxla5N7HIFaL6Mmu
 mJ8lBNl0y4/QEBS/3+NfhzHp7ZorFRIBqTfiC9ttJVxLMcXttWUZILVf+++RJ0OiLBVy
 wU6bahOswqGq8GzXeOnfo+lioDz34ClMfQc1RU0SWX9vuyKHdFOQnI9ytG5cMoIT9fFe
 Q1iwOPX5c0C35w6nX91g3gp9yI5Qdp6Ha8XByA1ZQoh4wlZdqK2qNSN5tuTlxhAEHg/Y
 ywog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=JAYmJe5T1iiVqB3ElvUYNp6OdOEQtJUCcD+W8HqcZ34=;
 b=jAEvUQv4qZR6Peu6QxXCt/dVXoTxAButKkm6qZg0FfxxCGHIcdaKM5hR7FsD0LSkO8
 9Nzc1xdkpPwQUOCJ2aeHDQUxI49eS+qFywcjBWdknpog/dMjPP2bGvnbRApC1R0lcFgP
 DgYNHzX2w/0J4G/oxffs5eOVShpgFN8EdDik9lidsO6rLvepNT+t8LzA2yQarikVx+SM
 Gkob7Bocn17L2q2Ux0PABiwywAJK6RNcnG8M8eQs1MbsNJEi1znc1e9pRlwNGisSjbTU
 1hYmLIRq7WFZwCs00bxpascQ+zz46FnkVb9IMZQzLudppooSDXGXxIu6Rl0pOM9CRfza
 jxug==
X-Gm-Message-State: APjAAAVK3lzpo3JZtbDxRcGqxFCeBtfynkOwVkG/6lUR6O/3HfFMlnPa
 yJ0ifHHovWeSIE86H6cHzjM=
X-Google-Smtp-Source: APXvYqwyv80tBdd+sz4InrPFefbkO6plmb6Oy6tFC24Qyb7vByVoHBqrcT0HnWVevET5qndxrH1kHQ==
X-Received: by 2002:a63:2a83:: with SMTP id q125mr5109145pgq.102.1560904691258; 
 Tue, 18 Jun 2019 17:38:11 -0700 (PDT)
Received: from localhost.localdomain (c-98-210-58-162.hsd1.ca.comcast.net.
 [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id x26sm14217860pfq.69.2019.06.18.17.38.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Jun 2019 17:38:10 -0700 (PDT)
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 1/3] staging: rtl8723bs: Resolve checkpatch error "that
 open brace { should be on the previous line" in the rtl8723 driver
Date: Tue, 18 Jun 2019 17:37:32 -0700
Message-Id: <e7c5b40f5415b8c23c7ad7995fc3dadf3345b1ed.1560903975.git.shobhitkukreti@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1560903975.git.shobhitkukreti@gmail.com>
References: <20190618070019.GA20601@kroah.com>
 <cover.1560903975.git.shobhitkukreti@gmail.com>
In-Reply-To: <cover.1560903975.git.shobhitkukreti@gmail.com>
References: <cover.1560903975.git.shobhitkukreti@gmail.com>
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
 Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>,
 Joe Perches <joe@perches.com>, Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleaned up the code from the following files to get rid of
check patch error "that open brace { should be on the previous line"

drivers/staging/rtl8723bs/os_dep/mlme_linux.c
drivers/staging/rtl8723bs/os_dep/recv_linux.c
drivers/staging/rtl8723bs/os_dep/rtw_proc.c
drivers/staging/rtl8723bs/os_dep/sdio_intf.c
drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c

Signed-off-by: Shobhit Kukreti <shobhitkukreti@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c     | 14 ++---
 drivers/staging/rtl8723bs/os_dep/recv_linux.c     | 76 ++++++++---------------
 drivers/staging/rtl8723bs/os_dep/rtw_proc.c       |  6 +-
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c      | 15 ++---
 drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c | 24 +++----
 5 files changed, 47 insertions(+), 88 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
index aa2499f..4bccfd6 100644
--- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
@@ -46,8 +46,7 @@ void rtw_os_indicate_connect(struct adapter *adapter)
 	struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);
 
 	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true) ||
-		(check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true))
-	{
+		(check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true)) {
 		rtw_cfg80211_ibss_indicate_connect(adapter);
 	}
 	else
@@ -77,8 +76,8 @@ void rtw_reset_securitypriv(struct adapter *adapter)
 
 	spin_lock_bh(&adapter->security_key_mutex);
 
-	if (adapter->securitypriv.dot11AuthAlgrthm == dot11AuthAlgrthm_8021X)/* 802.1x */
-	{
+	if (adapter->securitypriv.dot11AuthAlgrthm == dot11AuthAlgrthm_8021X) {
+		/* 802.1x */
 		/*  Added by Albert 2009/02/18 */
 		/*  We have to backup the PMK information for WiFi PMK Caching test item. */
 		/*  */
@@ -106,8 +105,8 @@ void rtw_reset_securitypriv(struct adapter *adapter)
 		adapter->securitypriv.ndisencryptstatus = Ndis802_11WEPDisabled;
 
 	}
-	else /* reset values in securitypriv */
-	{
+	else {
+		/* reset values in securitypriv */
 		/* if (adapter->mlmepriv.fw_state & WIFI_STATION_STATE) */
 		/*  */
 		struct security_priv *psec_priv = &adapter->securitypriv;
@@ -150,8 +149,7 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
 	RT_TRACE(_module_mlme_osdep_c_, _drv_info_, ("+rtw_report_sec_ie, authmode =%d\n", authmode));
 
 	buff = NULL;
-	if (authmode == _WPA_IE_ID_)
-	{
+	if (authmode == _WPA_IE_ID_) {
 		RT_TRACE(_module_mlme_osdep_c_, _drv_info_, ("rtw_report_sec_ie, authmode =%d\n", authmode));
 
 		buff = rtw_zmalloc(IW_CUSTOM_MAX);
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 3fe9c22..17c5199 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -12,8 +12,7 @@
 
 void rtw_os_free_recvframe(union recv_frame *precvframe)
 {
-	if (precvframe->u.hdr.pkt)
-	{
+	if (precvframe->u.hdr.pkt) {
 		dev_kfree_skb_any(precvframe->u.hdr.pkt);/* free skb by driver */
 
 		precvframe->u.hdr.pkt = NULL;
@@ -34,10 +33,8 @@ void rtw_os_recv_resource_free(struct recv_priv *precvpriv)
 
 	precvframe = (union recv_frame*) precvpriv->precv_frame_buf;
 
-	for (i = 0; i < NR_RECVFRAME; i++)
-	{
-		if (precvframe->u.hdr.pkt)
-		{
+	for (i = 0; i < NR_RECVFRAME; i++) {
+		if (precvframe->u.hdr.pkt) {
 			dev_kfree_skb_any(precvframe->u.hdr.pkt);/* free skb by driver */
 			precvframe->u.hdr.pkt = NULL;
 		}
@@ -48,8 +45,7 @@ void rtw_os_recv_resource_free(struct recv_priv *precvpriv)
 /* free os related resource in struct recv_buf */
 void rtw_os_recvbuf_resource_free(struct adapter *padapter, struct recv_buf *precvbuf)
 {
-	if (precvbuf->pskb)
-	{
+	if (precvbuf->pskb) {
 		dev_kfree_skb_any(precvbuf->pskb);
 	}
 }
@@ -63,22 +59,18 @@ _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8
 	pattrib = &prframe->u.hdr.attrib;
 
 	sub_skb = rtw_skb_alloc(nSubframe_Length + 12);
-	if (sub_skb)
-	{
+	if (sub_skb) {
 		skb_reserve(sub_skb, 12);
 		skb_put_data(sub_skb, (pdata + ETH_HLEN), nSubframe_Length);
 	}
-	else
-	{
+	else {
 		sub_skb = rtw_skb_clone(prframe->u.hdr.pkt);
-		if (sub_skb)
-		{
+		if (sub_skb) {
 			sub_skb->data = pdata + ETH_HLEN;
 			sub_skb->len = nSubframe_Length;
 			skb_set_tail_pointer(sub_skb, nSubframe_Length);
 		}
-		else
-		{
+		else {
 			DBG_871X("%s(): rtw_skb_clone() Fail!!!\n", __func__);
 			return NULL;
 		}
@@ -113,8 +105,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 
 	/* Indicat the packets to upper layer */
 	if (pkt) {
-		if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true)
-		{
+		if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true) {
 			_pkt *pskb2 = NULL;
 			struct sta_info *psta = NULL;
 			struct sta_priv *pstapriv = &padapter->stapriv;
@@ -122,20 +113,17 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 
 			/* DBG_871X("bmcast =%d\n", bmcast); */
 
-			if (memcmp(pattrib->dst, myid(&padapter->eeprompriv), ETH_ALEN))
-			{
+			if (memcmp(pattrib->dst, myid(&padapter->eeprompriv), ETH_ALEN)) {
 				/* DBG_871X("not ap psta =%p, addr =%pM\n", psta, pattrib->dst); */
 
-				if (bmcast)
-				{
+				if (bmcast) {
 					psta = rtw_get_bcmc_stainfo(padapter);
 					pskb2 = rtw_skb_clone(pkt);
 				} else {
 					psta = rtw_get_stainfo(pstapriv, pattrib->dst);
 				}
 
-				if (psta)
-				{
+				if (psta) {
 					struct net_device *pnetdev = (struct net_device*)padapter->pnetdev;
 
 					/* DBG_871X("directly forwarding to the rtw_xmit_entry\n"); */
@@ -155,8 +143,8 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 					}
 				}
 			}
-			else/*  to APself */
-			{
+			else {
+				/*  to APself */
 				/* DBG_871X("to APSelf\n"); */
 				DBG_COUNTER(padapter->rx_logs.os_indicate_ap_self);
 			}
@@ -192,32 +180,26 @@ void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup)
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	unsigned long cur_time = 0;
 
-	if (psecuritypriv->last_mic_err_time == 0)
-	{
+	if (psecuritypriv->last_mic_err_time == 0) {
 		psecuritypriv->last_mic_err_time = jiffies;
 	}
-	else
-	{
+	else {
 		cur_time = jiffies;
 
-		if (cur_time - psecuritypriv->last_mic_err_time < 60*HZ)
-		{
+		if (cur_time - psecuritypriv->last_mic_err_time < 60*HZ) {
 			psecuritypriv->btkip_countermeasure = true;
 			psecuritypriv->last_mic_err_time = 0;
 			psecuritypriv->btkip_countermeasure_time = cur_time;
 		}
-		else
-		{
+		else {
 			psecuritypriv->last_mic_err_time = jiffies;
 		}
 	}
 
-	if (bgroup)
-	{
+	if (bgroup) {
 		key_type |= NL80211_KEYTYPE_GROUP;
 	}
-	else
-	{
+	else {
 		key_type |= NL80211_KEYTYPE_PAIRWISE;
 	}
 
@@ -225,12 +207,10 @@ void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup)
 		NULL, GFP_ATOMIC);
 
 	memset(&ev, 0x00, sizeof(ev));
-	if (bgroup)
-	{
+	if (bgroup) {
 	    ev.flags |= IW_MICFAILURE_GROUP;
 	}
-	else
-	{
+	else {
 	    ev.flags |= IW_MICFAILURE_PAIRWISE;
 	}
 
@@ -250,8 +230,7 @@ static void rtw_os_ksocket_send(struct adapter *padapter, union recv_frame *prec
 
 	DBG_871X("eth rx: got eth_type = 0x%x\n", pattrib->eth_type);
 
-	if (psta && psta->isrc && psta->pid>0)
-	{
+	if (psta && psta->isrc && psta->pid>0) {
 		u16 rx_pid;
 
 		rx_pid = *(u16*)(skb->data+ETH_HLEN);
@@ -259,8 +238,7 @@ static void rtw_os_ksocket_send(struct adapter *padapter, union recv_frame *prec
 		DBG_871X("eth rx(pid = 0x%x): sta("MAC_FMT") pid = 0x%x\n",
 			rx_pid, MAC_ARG(psta->hwaddr), psta->pid);
 
-		if (rx_pid == psta->pid)
-		{
+		if (rx_pid == psta->pid) {
 			int i;
 			u16 len = *(u16*)(skb->data+ETH_HLEN+2);
 			/* u16 ctrl_type = *(u16*)(skb->data+ETH_HLEN+4); */
@@ -293,8 +271,7 @@ int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *precv_frame
 	pfree_recv_queue = &(precvpriv->free_recv_queue);
 
 	skb = precv_frame->u.hdr.pkt;
-	if (skb == NULL)
-	{
+	if (skb == NULL) {
 		RT_TRACE(_module_recv_osdep_c_, _drv_err_, ("rtw_recv_indicatepkt():skb == NULL something wrong!!!!\n"));
 		goto _recv_indicatepkt_drop;
 	}
@@ -312,8 +289,7 @@ int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *precv_frame
 	RT_TRACE(_module_recv_osdep_c_, _drv_info_, ("\n skb->head =%p skb->data =%p skb->tail =%p skb->end =%p skb->len =%d\n", skb->head, skb->data, skb_tail_pointer(skb), skb_end_pointer(skb), skb->len));
 
 #ifdef CONFIG_AUTO_AP_MODE
-	if (0x8899 == pattrib->eth_type)
-	{
+	if (0x8899 == pattrib->eth_type) {
 		rtw_os_ksocket_send(padapter, precv_frame);
 
 		/* goto _recv_indicatepkt_drop; */
diff --git a/drivers/staging/rtl8723bs/os_dep/rtw_proc.c b/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
index d6862e8..5f950fd 100644
--- a/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
+++ b/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
@@ -63,8 +63,7 @@ static ssize_t proc_set_log_level(struct file *file, const char __user *buffer,
 
 	if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
 		sscanf(tmp, "%d ", &log_level);
-		if (log_level >= _drv_always_ && log_level <= _drv_debug_)
-		{
+		if (log_level >= _drv_always_ && log_level <= _drv_debug_) {
 			GlobalDebugLevel = log_level;
 			printk("%d\n", GlobalDebugLevel);
 		}
@@ -224,8 +223,7 @@ static ssize_t proc_set_linked_info_dump(struct file *file, const char __user *b
 		return -EFAULT;
 
 	if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
-		if (padapter)
-		{
+		if (padapter) {
 			/* padapter->bLinkInfoDump = mode; */
 			/* DBG_871X("linked_info_dump =%s\n", (padapter->bLinkInfoDump)?"enable":"disable"); */
 			 linked_info_dump(padapter, mode);
diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 101a22f..c60f13c 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -85,13 +85,11 @@ static int sdio_alloc_irq(struct dvobj_priv *dvobj)
 	sdio_claim_host(func);
 
 	err = sdio_claim_irq(func, &sd_sync_int_hdl);
-	if (err)
-	{
+	if (err) {
 		dvobj->drv_dbg.dbg_sdio_alloc_irq_error_cnt++;
 		printk(KERN_CRIT "%s: sdio_claim_irq FAIL(%d)!\n", __func__, err);
 	}
-	else
-	{
+	else {
 		dvobj->drv_dbg.dbg_sdio_alloc_irq_cnt++;
 		dvobj->irq_alloc = 1;
 	}
@@ -114,8 +112,7 @@ static void sdio_free_irq(struct dvobj_priv *dvobj)
         if (func) {
             sdio_claim_host(func);
             err = sdio_release_irq(func);
-            if (err)
-            {
+            if (err) {
 				dvobj->drv_dbg.dbg_sdio_free_irq_error_cnt++;
 				DBG_871X_LEVEL(_drv_err_,"%s: sdio_release_irq FAIL(%d)!\n", __func__, err);
             }
@@ -225,16 +222,14 @@ static void sdio_deinit(struct dvobj_priv *dvobj)
 	if (func) {
 		sdio_claim_host(func);
 		err = sdio_disable_func(func);
-		if (err)
-		{
+		if (err) {
 			dvobj->drv_dbg.dbg_sdio_deinit_error_cnt++;
 			DBG_8192C(KERN_ERR "%s: sdio_disable_func(%d)\n", __func__, err);
 		}
 
 		if (dvobj->irq_alloc) {
 			err = sdio_release_irq(func);
-			if (err)
-			{
+			if (err) {
 				dvobj->drv_dbg.dbg_sdio_free_irq_error_cnt++;
 				DBG_8192C(KERN_ERR "%s: sdio_release_irq(%d)\n", __func__, err);
 			}
diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c b/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
index 1787534..50b8934 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
@@ -257,15 +257,13 @@ u32 sd_read32(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
 	if (claim_needed)
 		sdio_release_host(func);
 
-	if (err && *err)
-	{
+	if (err && *err) {
 		int i;
 
 		DBG_871X(KERN_ERR "%s: (%d) addr = 0x%05x, val = 0x%x\n", __func__, *err, addr, v);
 
 		*err = 0;
-		for (i = 0; i < SD_IO_TRY_CNT; i++)
-		{
+		for (i = 0; i < SD_IO_TRY_CNT; i++) {
 			if (claim_needed) sdio_claim_host(func);
 			v = sdio_readl(func, addr, err);
 			if (claim_needed) sdio_release_host(func);
@@ -350,15 +348,13 @@ void sd_write32(struct intf_hdl *pintfhdl, u32 addr, u32 v, s32 *err)
 	if (claim_needed)
 		sdio_release_host(func);
 
-	if (err && *err)
-	{
+	if (err && *err) {
 		int i;
 
 		DBG_871X(KERN_ERR "%s: (%d) addr = 0x%05x val = 0x%08x\n", __func__, *err, addr, v);
 
 		*err = 0;
-		for (i = 0; i < SD_IO_TRY_CNT; i++)
-		{
+		for (i = 0; i < SD_IO_TRY_CNT; i++) {
 			if (claim_needed) sdio_claim_host(func);
 			sdio_writel(func, v, addr, err);
 			if (claim_needed) sdio_release_host(func);
@@ -420,13 +416,11 @@ s32 _sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
 
 	func = psdio->func;
 
-	if (unlikely((cnt == 1) || (cnt == 2)))
-	{
+	if (unlikely((cnt == 1) || (cnt == 2))) {
 		int i;
 		u8 *pbuf = pdata;
 
-		for (i = 0; i < cnt; i++)
-		{
+		for (i = 0; i < cnt; i++) {
 			*(pbuf+i) = sdio_readb(func, addr+i, &err);
 
 			if (err) {
@@ -523,13 +517,11 @@ s32 _sd_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
 	func = psdio->func;
 /*	size = sdio_align_size(func, cnt); */
 
-	if (unlikely((cnt == 1) || (cnt == 2)))
-	{
+	if (unlikely((cnt == 1) || (cnt == 2))) {
 		int i;
 		u8 *pbuf = pdata;
 
-		for (i = 0; i < cnt; i++)
-		{
+		for (i = 0; i < cnt; i++) {
 			sdio_writeb(func, *(pbuf+i), addr+i, &err);
 			if (err) {
 				DBG_871X(KERN_ERR "%s: FAIL!(%d) addr = 0x%05x val = 0x%02x\n", __func__, err, addr, *(pbuf+i));
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
