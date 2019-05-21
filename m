Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF43625237
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 16:33:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2DACF2670B;
	Tue, 21 May 2019 14:33:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qm8PKNBwATS5; Tue, 21 May 2019 14:32:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4886F26291;
	Tue, 21 May 2019 14:32:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A45281BF4E2
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:32:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9F45786AE3
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:32:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KSKvcv5LnAHc for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 14:32:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 17F758695B
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 14:32:55 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id c13so8701794pgt.1
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 07:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ql9m+VX4YbVWwFilLx1VhhEJDgpjksLlEvcITuctUC8=;
 b=vKgId+SXFB7usz2MCkMbeUFAH0IkBZzwQLzTOc+DkvFlZqZo9GnLczkqGhmdYvhEtW
 h3touIcHkWPo2peybuMDz+HCN6LpSBY12fxMmGlcfVOVz1LyqJhnYuD+axvSEgjtkI67
 NBkemLDPc78vcTjAZJNmRtsAiRt266El95HUMpdS0zYqwN0cXQgStfgJ1aZHjifwc0cQ
 vq9MmbFmHVt7Mps9Kh3VXTwIEmUBU9r1Z04dQlrBVu4a3eLpaeELm/X/12Pdp4lnAvUD
 qHP25m7nDkxMuoTYDNiSfp/wKkqu9dGiu8NsDI74QLkJ1E88Pj7ylq7pw7RmHS0WWhnJ
 lHqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ql9m+VX4YbVWwFilLx1VhhEJDgpjksLlEvcITuctUC8=;
 b=esD55+Th0KlLRnTbGwqjPevptkQtAt6kaNRXS6zh6Ye3U1a/CY/tPjMU+8ej975wa4
 y/St/D5UIYJFUWb7rrw0SHEE6ydBjdjM7/GbkLfVb0tR39jQwj++HZi23O3ojDkVUlKl
 c2F6S37vFgqelGqyQtJrPJl2b6yfsbPucS7NRjJSl8PHkeAIwUDHsNc8upEM33fYzVmT
 XfsQ/hOHklp84sZKeBWfC+jA4P81K28pVdpwpbcmPB8ezTH/f8mGkHCsHxSfVqd7MqVx
 WZ4Z2fyB33pa3DBR5NkP5oC9DjiVgEFRZRpQ500C6JxZ/Z8HLYmsGo4llnxpD+FnZhCE
 tUTg==
X-Gm-Message-State: APjAAAVl15YRO956flNko+UOTInla8w8/NoZQVJ5lVw6NfemMgWVMhl4
 YVsNplLDzNC6VU/60A20n8o=
X-Google-Smtp-Source: APXvYqy9XXB973q4CxrRym/X6+0Mn5awJA+klzLnNQ68TS76vUW5aGwXzH/9n5Uuq4yaFgdAF1ae0g==
X-Received: by 2002:a65:638e:: with SMTP id h14mr8961873pgv.209.1558449174456; 
 Tue, 21 May 2019 07:32:54 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:710a:4b60:ca77:51f2:1492:8f9a])
 by smtp.googlemail.com with ESMTPSA id o1sm8031572pfa.66.2019.05.21.07.32.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 07:32:53 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtl8188eu: core: Use !x in place of NULL comparisons
Date: Tue, 21 May 2019 20:02:25 +0530
Message-Id: <20190521143225.468-1-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Puranjay Mohan <puranjay12@gmail.com>,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change (x == NULL) to !x and (x != NULL) to x, to fix
following checkpatch.pl warnings:
CHECK: Comparison to NULL could be written "!x".

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 087f6c9a5826..9caf7041ad60 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -450,7 +450,7 @@ static struct recv_frame *portctrl(struct adapter *adapter,
 		memcpy(&be_tmp, ptr, 2);
 		ether_type = ntohs(be_tmp);
 
-		if ((psta != NULL) && (psta->ieee8021x_blocked)) {
+		if (psta && (psta->ieee8021x_blocked)) {
 			/* blocked */
 			/* only accept EAPOL frame */
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########%s:psta->ieee8021x_blocked==1\n", __func__));
@@ -700,7 +700,7 @@ static int sta2sta_data_frame(struct adapter *adapter,
 	else
 		*psta = rtw_get_stainfo(pstapriv, sta_addr); /*  get ap_info */
 
-	if (*psta == NULL) {
+	if (!*psta) {
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("can't get psta under %s ; drop pkt\n", __func__));
 		ret = _FAIL;
 		goto exit;
@@ -764,7 +764,7 @@ static int ap2sta_data_frame(
 		else
 			*psta = rtw_get_stainfo(pstapriv, pattrib->bssid); /*  get ap_info */
 
-		if (*psta == NULL) {
+		if (!*psta) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("ap2sta: can't get psta under STATION_MODE ; drop pkt\n"));
 			ret = _FAIL;
 			goto exit;
@@ -786,7 +786,7 @@ static int ap2sta_data_frame(
 	} else {
 		if (!memcmp(myhwaddr, pattrib->dst, ETH_ALEN) && !mcast) {
 			*psta = rtw_get_stainfo(pstapriv, pattrib->bssid); /*  get sta_info */
-			if (*psta == NULL) {
+			if (!*psta) {
 				DBG_88E("issue_deauth to the ap =%pM for the reason(7)\n", (pattrib->bssid));
 
 				issue_deauth(adapter, pattrib->bssid, WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA);
@@ -820,7 +820,7 @@ static int sta2ap_data_frame(struct adapter *adapter,
 		}
 
 		*psta = rtw_get_stainfo(pstapriv, pattrib->src);
-		if (*psta == NULL) {
+		if (!*psta) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("can't get psta under AP_MODE; drop pkt\n"));
 			DBG_88E("issue_deauth to sta=%pM for the reason(7)\n", (pattrib->src));
 
@@ -883,7 +883,7 @@ static int validate_recv_ctrl_frame(struct adapter *padapter,
 		aid = GetAid(pframe);
 		psta = rtw_get_stainfo(pstapriv, GetAddr2Ptr(pframe));
 
-		if ((psta == NULL) || (psta->aid != aid))
+		if ((!psta) || (psta->aid != aid))
 			return _FAIL;
 
 		/* for rx pkt statistics */
@@ -1479,7 +1479,7 @@ struct recv_frame *recvframe_chk_defrag(struct adapter *padapter,
 		}
 	}
 
-	if ((prtnframe != NULL) && (prtnframe->attrib.privacy)) {
+	if (prtnframe && (prtnframe->attrib.privacy)) {
 		/* after defrag we must check tkip mic code */
 		if (recvframe_chkmic(padapter,  prtnframe) == _FAIL) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("recvframe_chkmic(padapter,  prtnframe)==_FAIL\n"));
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
