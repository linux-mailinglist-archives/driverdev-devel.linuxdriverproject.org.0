Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 583B631C467
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 00:35:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E706986BE5;
	Mon, 15 Feb 2021 23:35:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id olRcc7iZXt1J; Mon, 15 Feb 2021 23:34:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A42D86BAF;
	Mon, 15 Feb 2021 23:34:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 082A51BF362
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 23:34:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E88816F539
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 23:34:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bIinZB3aXGBc for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 23:34:49 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 3FEEB6F4E0; Mon, 15 Feb 2021 23:34:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 436C76F52C
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 23:34:46 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id v7so10987193wrr.12
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 15:34:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BuvgedmN4/CYNm0K/K7y4QPZsyXKlASI/aChbguICAc=;
 b=qg3KfU/fc5L+Wdrpcg9GEtmscmWH81wBc1tvRfuoSc70Xk1pmoz3sgLUs5Ddo7MLTs
 gEEGDY9rzml32Yrzfk0cdqlzBMYl2GlILgrXgK5nZ51vyPJg/eFJ8CnzQNQ4vxuGJudu
 vN8zkLdX7eZ/YmyeAwCw/Ela5i3a5vnUM6282zI5vXlGrN1aj7lGJrSe+WyKSErqKD0z
 pM7vWp6VzW4nAD0v73TUfCNpEp7mJjY5jmsISDQQcwAbiAl4M4VsgiZp0jtTsF8Q+nzg
 5+Kln8eHaoDzJcsofRZMaesaItTqZ7VjmEUlgMWpn5BarvEjWp82LfZzzNIL8VHPiUA7
 fKWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BuvgedmN4/CYNm0K/K7y4QPZsyXKlASI/aChbguICAc=;
 b=skhyFGMTp23H82NZKRdzmHSTozKO/a9xYf71P1QEzUOOwWsCCQaN/gZGsAwWXfDZK6
 4LXpdBWgP0WikhskqZbHDeuQeJeWVEPioGC5Q/RfdCfhMk16BkZ8L0KWbhsVYQ0DRMhY
 peGyOKiKMssLMLW2L+8zeG5sdCVNFphAzXbEWBDRE+YZoRxZnM/1xy80Onx18XJWItg4
 hIyXfshkY9ozVTxjZTF65dD1468NfxiZenHXuBkOkiVJrikStjBmnOs1rk3ZOOUNM5YK
 GPr0N5jhOr1iTaH8nzADVkv4YUbVzjrMVhPIzILrIM76LBQue+hhbzMPtYg7XhVsF4De
 QPgw==
X-Gm-Message-State: AOAM5303p8k62jqkBeYV1TEmiSDeJU11+Jhtro5a1PmQObQ2XaW1L7Ab
 4psPxJe9x2+JYJwnFtcXaXvB7g==
X-Google-Smtp-Source: ABdhPJwI1Kq04b+O688UugVzg1CfEU4CDqr4xxyhWdWZHbVmkszJgV9DrTUatEIxEWViofMYnwom9w==
X-Received: by 2002:adf:d1ce:: with SMTP id b14mr20494459wrd.329.1613432084566; 
 Mon, 15 Feb 2021 15:34:44 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id y16sm21691445wrw.46.2021.02.15.15.34.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Feb 2021 15:34:44 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/6] staging: rtl8723bs: remove DBG_COUNTER calls from
 os_dep/xmit_linux.c
Date: Mon, 15 Feb 2021 23:34:36 +0000
Message-Id: <20210215233440.80617-3-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210215233440.80617-2-phil@philpotter.co.uk>
References: <20210215233440.80617-1-phil@philpotter.co.uk>
 <20210215233440.80617-2-phil@philpotter.co.uk>
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
Cc: devel@driverdev.osuosl.org, vkor@vkten.in, insafonov@gmail.com,
 foxhlchen@gmail.com, linux-kernel@vger.kernel.org, yujian.wu1@gmail.com,
 matthew.v.deangelis@gmail.com, amarjargal16@gmail.com, pterjan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove all DBG_COUNTER macro calls from os_dep/xmit_linux.c, as the
corresponding variables are only ever written to and not used. This
makes the code cleaner, and is necessary prior to removing the
DBG_COUNTER definition itself.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
index b060a6a2df34..1c23fbe58881 100644
--- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
@@ -139,8 +139,6 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
 	int i;
 	s32	res;
 
-	DBG_COUNTER(padapter->tx_logs.os_tx_m2u);
-
 	spin_lock_bh(&pstapriv->asoc_list_lock);
 	phead = &pstapriv->asoc_list;
 	plist = get_next(phead);
@@ -160,20 +158,14 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
 
 	for (i = 0; i < chk_alive_num; i++) {
 		psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
-		if (!(psta->state & _FW_LINKED)) {
-			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_fw_linked);
+		if (!(psta->state & _FW_LINKED))
 			continue;
-		}
 
 		/* avoid come from STA1 and send back STA1 */
 		if (!memcmp(psta->hwaddr, &skb->data[6], 6) ||
 		    !memcmp(psta->hwaddr, null_addr, 6) ||
-		    !memcmp(psta->hwaddr, bc_addr, 6)) {
-			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_self);
+		    !memcmp(psta->hwaddr, bc_addr, 6))
 			continue;
-		}
-
-		DBG_COUNTER(padapter->tx_logs.os_tx_m2u_entry);
 
 		newskb = rtw_skb_copy(skb);
 
@@ -181,13 +173,11 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
 			memcpy(newskb->data, psta->hwaddr, 6);
 			res = rtw_xmit(padapter, &newskb);
 			if (res < 0) {
-				DBG_COUNTER(padapter->tx_logs.os_tx_m2u_entry_err_xmit);
 				DBG_871X("%s()-%d: rtw_xmit() return error!\n", __func__, __LINE__);
 				pxmitpriv->tx_drop++;
 				dev_kfree_skb_any(newskb);
 			}
 		} else {
-			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_entry_err_skb);
 			DBG_871X("%s-%d: rtw_skb_copy() failed!\n", __func__, __LINE__);
 			pxmitpriv->tx_drop++;
 			/* dev_kfree_skb_any(skb); */
@@ -206,11 +196,9 @@ int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	s32 res = 0;
 
-	DBG_COUNTER(padapter->tx_logs.os_tx);
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("+xmit_enry\n"));
 
 	if (rtw_if_up(padapter) == false) {
-		DBG_COUNTER(padapter->tx_logs.os_tx_err_up);
 		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit_entry: rtw_if_up fail\n"));
 		#ifdef DBG_TX_DROP_FRAME
 		DBG_871X("DBG_TX_DROP_FRAME %s if_up fail\n", __func__);
@@ -236,7 +224,6 @@ int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
 		} else {
 			/* DBG_871X("Stop M2U(%d, %d)! ", pxmitpriv->free_xmitframe_cnt, pxmitpriv->free_xmitbuf_cnt); */
 			/* DBG_871X("!m2u); */
-			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_stop);
 		}
 	}
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
