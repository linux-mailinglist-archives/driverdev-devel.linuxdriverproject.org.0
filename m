Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BF946E5A
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Jun 2019 06:36:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1409587D60;
	Sat, 15 Jun 2019 04:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vmM9D6eKnO+h; Sat, 15 Jun 2019 04:36:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7FE4D87C65;
	Sat, 15 Jun 2019 04:36:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C13181BF2F6
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2019 04:36:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BCE2587C5A
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2019 04:36:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5QQZuZ7y7c-t for <devel@linuxdriverproject.org>;
 Sat, 15 Jun 2019 04:36:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D996587849
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2019 04:36:42 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id c85so2590140pfc.1
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 21:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=9TzP9R77YBv27zLWGOzWcy2A4JLPhkA+M467EDOabGI=;
 b=d8W3j3s5VKyo3sUWiVy4n82d9ZvQVwr8FxmBMTXW972Z8PRLPFfykO4D7whmkbsV5R
 j1NqpBF/nDxwTpTxy2tXEC4jrgLCOgPO8DkA9AWmqdpnO+qfEfTa63lpDqvqrwOqp6TB
 aTspCZOzuDoMpOLBqr+Tn2MYgIT145PArEJz1h2Jo2/073CNxpt0qfyhIZdGo1uZDdNK
 aP0NgIqTn29dUFXsOxykdQ+DVLUGIJilkYBl48LtUiND/lHZrSN2p0yGVS/iGvt7vou2
 4aVCwgZ8+FqMpM5hqY4r27R+fdsYPdQ1dHu4XOMm+62lEPb4Jb/oHIWFW4CFvi6d08f0
 Hpuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=9TzP9R77YBv27zLWGOzWcy2A4JLPhkA+M467EDOabGI=;
 b=NUSqALasdKS7UJpJmlLKgJ62/DLw+cY5xH6gwmE5NPscQkFjy1Z9M4W+yxjRFFdw29
 uitIAaIymT6mtET71kMOQ4zAw2S5wN3KwsesEpqEjbr+UfJt8F0Aao+A/FJOG7e5F93Z
 JjCsjlEKugqQRGF7c55KhbXrvv2GKnStjDPso8glMLDF6cU4LOsvtw7osJWz3zNgrd7F
 bW+adv3urws3rTAO1ee2k7f3DUwQwQeTCUV8FfyQj9HI7zDIuLrCev8Fvs4/u4LlF1mL
 Azijq/3yb4KXEPnEBNvRLSCF9W5MbwHnDnCidc8SoQR+f44wAKIYZbD1IygLvS9/1tH2
 uyeA==
X-Gm-Message-State: APjAAAW0wi9fSNgIyBeAVKyZBwZJGbM89FcpQfkc9O7Jq9a+E+UDR0Kk
 LMQ/kWrNTQrnUJNVJUJDSaw=
X-Google-Smtp-Source: APXvYqwaI9WOyiDgJl/8lBvZQQc6QYyeJSRl5BF6V1zYN2t7lGPJ1xUf/FQUmPNAbmCFFwKbOPXUew==
X-Received: by 2002:a62:d149:: with SMTP id t9mr82212002pfl.173.1560573402434; 
 Fri, 14 Jun 2019 21:36:42 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id y22sm8452171pfo.39.2019.06.14.21.36.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 21:36:41 -0700 (PDT)
Date: Sat, 15 Jun 2019 10:06:36 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Himadri Pandya <himadri18.07@gmail.com>,
 YueHaibing <yuehaibing@huawei.com>, Arnd Bergmann <arnd@arndb.de>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] staging: rtl8723bs: hal: Using comparison to true is
 error prone
Message-ID: <20190615043636.GA12605@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

fix below issue reported by checkpatch

CHECK: Using comparison to true is error prone
CHECK: Using comparison to false is error prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
index 9cf8da7..215335c 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
@@ -17,8 +17,8 @@ static u8 rtw_sdio_wait_enough_TxOQT_space(struct adapter *padapter, u8 agg_num)
 
 	while (pHalData->SdioTxOQTFreeSpace < agg_num) {
 		if (
-			(padapter->bSurpriseRemoved == true) ||
-			(padapter->bDriverStopped == true)
+			(padapter->bSurpriseRemoved) ||
+			(padapter->bDriverStopped)
 		) {
 			DBG_871X("%s: bSurpriseRemoved or bDriverStopped (wait TxOQT)\n", __func__);
 			return false;
@@ -58,7 +58,7 @@ static s32 rtl8723_dequeue_writeport(struct adapter *padapter)
 
 	ret = ret || check_fwstate(pmlmepriv, _FW_UNDER_SURVEY);
 
-	if (ret == true)
+	if (ret)
 		pxmitbuf = dequeue_pending_xmitbuf_under_survey(pxmitpriv);
 	else
 		pxmitbuf = dequeue_pending_xmitbuf(pxmitpriv);
@@ -85,7 +85,7 @@ static s32 rtl8723_dequeue_writeport(struct adapter *padapter)
 
 query_free_page:
 	/*  check if hardware tx fifo page is enough */
-	if (false == rtw_hal_sdio_query_tx_freepage(pri_padapter, PageIdx, pxmitbuf->pg_num)) {
+	if (!rtw_hal_sdio_query_tx_freepage(pri_padapter, PageIdx, pxmitbuf->pg_num)) {
 		if (!bUpdatePageNum) {
 			/*  Total number of page is NOT available, so update current FIFO status */
 			HalQueryTxBufferStatus8723BSdio(padapter);
@@ -99,8 +99,8 @@ static s32 rtl8723_dequeue_writeport(struct adapter *padapter)
 	}
 
 	if (
-		(padapter->bSurpriseRemoved == true) ||
-		(padapter->bDriverStopped == true)
+		(padapter->bSurpriseRemoved) ||
+		(padapter->bDriverStopped)
 	) {
 		RT_TRACE(
 			_module_hal_xmit_c_,
@@ -153,7 +153,7 @@ s32 rtl8723bs_xmit_buf_handler(struct adapter *padapter)
 		return _FAIL;
 	}
 
-	ret = (padapter->bDriverStopped == true) || (padapter->bSurpriseRemoved == true);
+	ret = (padapter->bDriverStopped) || (padapter->bSurpriseRemoved);
 	if (ret) {
 		RT_TRACE(
 			_module_hal_xmit_c_,
@@ -170,7 +170,7 @@ s32 rtl8723bs_xmit_buf_handler(struct adapter *padapter)
 
 	queue_pending = check_pending_xmitbuf(pxmitpriv);
 
-	if (queue_pending == false)
+	if (!queue_pending)
 		return _SUCCESS;
 
 	ret = rtw_register_tx_alive(padapter);
@@ -235,8 +235,8 @@ static s32 xmit_xmitframes(struct adapter *padapter, struct xmit_priv *pxmitpriv
 		phwxmit = hwxmits + inx[idx];
 
 		if (
-			(check_pending_xmitbuf(pxmitpriv) == true) &&
-			(padapter->mlmepriv.LinkDetectInfo.bHigherBusyTxTraffic == true)
+			(check_pending_xmitbuf(pxmitpriv)) &&
+			(padapter->mlmepriv.LinkDetectInfo.bHigherBusyTxTraffic)
 		) {
 			if ((phwxmit->accnt > 0) && (phwxmit->accnt < 5)) {
 				err = -2;
@@ -425,8 +425,8 @@ static s32 rtl8723bs_xmit_handler(struct adapter *padapter)
 
 next:
 	if (
-		(padapter->bDriverStopped == true) ||
-		(padapter->bSurpriseRemoved == true)
+		(padapter->bDriverStopped) ||
+		(padapter->bSurpriseRemoved)
 	) {
 		RT_TRACE(
 			_module_hal_xmit_c_,
@@ -569,7 +569,7 @@ s32 rtl8723bs_hal_xmit(
 		(pxmitframe->attrib.ether_type != 0x888e) &&
 		(pxmitframe->attrib.dhcp_pkt != 1)
 	) {
-		if (padapter->mlmepriv.LinkDetectInfo.bBusyTraffic == true)
+		if (padapter->mlmepriv.LinkDetectInfo.bBusyTraffic)
 			rtw_issue_addbareq_cmd(padapter, pxmitframe);
 	}
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
