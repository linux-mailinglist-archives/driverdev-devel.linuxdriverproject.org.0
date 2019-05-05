Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC7613F9F
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2019 15:19:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0D8912340C;
	Sun,  5 May 2019 13:19:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ICYxJZgA9mtd; Sun,  5 May 2019 13:19:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EFD29226B3;
	Sun,  5 May 2019 13:19:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B6171BF48B
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 13:19:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 15AF8860ED
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 13:19:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yycMaXfcP4fo for <devel@linuxdriverproject.org>;
 Sun,  5 May 2019 13:19:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6E98C860D6
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2019 13:19:43 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id y13so5283976pfm.11
 for <devel@driverdev.osuosl.org>; Sun, 05 May 2019 06:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=5+ufxo2LIp2vNFzc2baEGBYQFRJKvB7gapWAnt4yEUs=;
 b=Ss1177TGVBZRC4ZdxltdqKk32g1FWS0uad+bzsQ7QW+kLKd+3d0Ziu+rXQpwNNa8Vh
 8V+X/wz0l7spxzPeWNjkrM+EguFYQ56hSaAST8ZpXvYtJAvPXW2y27EMvwa/RuMeD/A5
 lQgCMD4cjpYAGxbYHFQwW/TctBUyjrdwCcOGX0y9BW9qaj0mH+P/GmyVMWVcRAmORSJt
 dxR//VetpPxtOKn5wkTrGq6i+GLj/xo73DEgPTiDtsHlxTMxEjDSwvQdV9mAmBmVXd7q
 btbco3Dp1PeXmocNtTB4a/1HVdQsyx19h6y7V2L70/bSY1PojII1oqrp/e2TnLlpDKQE
 ElfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5+ufxo2LIp2vNFzc2baEGBYQFRJKvB7gapWAnt4yEUs=;
 b=euKgLByg8qIF4fW+wDKjCrbSmTnH7oUKuc6mjSxCzlVoIpZNYMQk+4977sn3UEIgky
 gDWtcGwP5EPFX3YCEZl/tu62dAXcH4WHJSuBZnPP+1U5+2ITDbJ0CNjDZ8Pf9ZHIXM5z
 p03kVe2vO915lDzNZRDc0/89PoKmXB4un8SGC1glvkj2QYqovBORkuKa2msw88rwAKSk
 omhKtZOgKyJGkExpChWYuF5U6WojLkipXign8UDduWbir9/FNEoMxJNNHPqNOUDDslQq
 29IS4EBgAYg/sYfUTg+TjGkZ9Zm8UFrFTZQb8RLL60FL/5lU044yZF0Y3UWlkQWdxVK9
 Dk0g==
X-Gm-Message-State: APjAAAUAPgo31msdfqqN9HPORj/mhpzT+Q8dKoJzgfb2qeAezKTxcIjI
 Osuv/xUrXQ+CaVcTtqYCOLA=
X-Google-Smtp-Source: APXvYqzi3TyHqWSdbPSAY1PJGeYDoVIkPTtsUevU1g1L1iwW894H5GMHjqVJ6PbHO8Od5NNqn9/ZTA==
X-Received: by 2002:a63:1e5b:: with SMTP id p27mr24155274pgm.213.1557062383061; 
 Sun, 05 May 2019 06:19:43 -0700 (PDT)
Received: from localhost.localdomain ([103.87.56.229])
 by smtp.gmail.com with ESMTPSA id o6sm14386189pfh.97.2019.05.05.06.19.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 06:19:42 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/6] staging: rtl8723bs: core: Remove blank line.
Date: Sun,  5 May 2019 18:49:25 +0530
Message-Id: <20190505131925.4234-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, julia.lawall@lip6.fr,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, hadess@hadess.net,
 Vatsala Narang <vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

To avoid style issues, remove multiple blank lines.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index d110d4514771..00d84d34da97 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -11,7 +11,6 @@
 #include <rtw_wifi_regd.h>
 #include <linux/kernel.h>
 
-
 static struct mlme_handler mlme_sta_tbl[] = {
 	{WIFI_ASSOCREQ,		"OnAssocReq",	&OnAssocReq},
 	{WIFI_ASSOCRSP,		"OnAssocRsp",	&OnAssocRsp},
@@ -51,7 +50,6 @@ static struct action_handler OnAction_tbl[] = {
 	{RTW_WLAN_CATEGORY_P2P, "ACTION_P2P", &DoReserved},
 };
 
-
 static u8 null_addr[ETH_ALEN] = {0, 0, 0, 0, 0, 0};
 
 /**************************************************
@@ -1261,7 +1259,6 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		goto OnAssocReqFail;
 	}
 
-
 	/*  now we should check all the fields... */
 	/*  checking SSID */
 	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, _SSID_IE_, &ie_len,
@@ -3219,7 +3216,6 @@ void issue_asocrsp(struct adapter *padapter, unsigned short status, struct sta_i
 
 	}
 
-
 	if (pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_REALTEK) {
 		pframe = rtw_set_ie(pframe, _VENDOR_SPECIFIC_IE_, 6, REALTEK_96B_IE, &(pattrib->pktlen));
 	}
@@ -3264,7 +3260,6 @@ void issue_assocreq(struct adapter *padapter)
 	pattrib = &pmgntframe->attrib;
 	update_mgntframe_attrib(padapter, pattrib);
 
-
 	memset(pmgntframe->buf_addr, 0, WLANHDR_OFFSET + TXDESC_OFFSET);
 
 	pframe = (u8 *)(pmgntframe->buf_addr) + TXDESC_OFFSET;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
