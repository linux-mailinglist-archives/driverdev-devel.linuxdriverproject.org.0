Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBBD13BC7
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 20:43:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5BE948695C;
	Sat,  4 May 2019 18:43:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WkLonJ-jPFbr; Sat,  4 May 2019 18:43:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 13B908657C;
	Sat,  4 May 2019 18:43:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 160FB1BF5F5
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 18:43:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 130E787916
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 18:43:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I6Aeg7czg6T7 for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 18:43:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 87377878FE
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 18:43:32 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id p6so4351206pgh.9
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 11:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=5+ufxo2LIp2vNFzc2baEGBYQFRJKvB7gapWAnt4yEUs=;
 b=dvcaKBHrQ3baDGhFiAKQWee8ptrNFC05hUNOL3mySUG8NlzmAhPKxA4vJaDLozoJ0e
 HENw9bOj7YufZZz2pYGCEyMt5PccKxqpfo1ksEhZyMkDdRhVvir84mS7MWP7t2x+SJqn
 VzP1yAfR2Fr00sYCcQJj/HkQPHQt0EcjO9z0a44hW44JpCcOyjM3q4BVzG0RHyxs/8nH
 B5/+/X/o97tUv6T95Zln8UNGpCMGajquRGDCMCK6xX5sdX4Ofv8hiwGoEKRI2WZ7UdUj
 2MLrmzcsUDVd86DQs0WjCIDf+gXKLwJC1+exImqnMWmP0RuzYYoaw2IAPT3X/HbwAX20
 ex+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5+ufxo2LIp2vNFzc2baEGBYQFRJKvB7gapWAnt4yEUs=;
 b=tMW71oOmjtTZuUCe/BcI19RJ4Xxxieyj+uC0V/BOd/gWjecjV7cj+rZpXHdSerYPDI
 zMgsN//7XvWDggOSqtuGAk71elnQ9RO2Uok2QDOBbj8ddpNT4Y0+uwmntgcunsFwXiwe
 pkWu6Gvhvo6KYLw63LgrvIbmo36dnHdfLGHsCCc25bbP9WqKGlnngoqZzdH5o6yVZFFS
 Akuc96yrJg0bKGjkCH99Q/ifTxgL9P9g1k2zdh564jdlzGoQOS2wDigM+pP/5JAOCCbN
 0i/7kD33azSWUP3FMN86x7R/+kqVhVUqW1N8yer79yad6kGtX1HqVO1ZX3s5LeYJXNSn
 GKiA==
X-Gm-Message-State: APjAAAWh93C7JuJkP6LAagwjOO7OhvhPX7L+nYxCET1GBNRDn3oORlTV
 2QlUkGPD3BFl5h6t2VCNvmg=
X-Google-Smtp-Source: APXvYqzLPEODIHlYX/QGbD7lWtt+ej4jwkGSd62GaI1unQOuW9EitC8oJ+0IvZj0rV31PsA4uGWbmQ==
X-Received: by 2002:a63:4a5a:: with SMTP id j26mr19654306pgl.361.1556995411400; 
 Sat, 04 May 2019 11:43:31 -0700 (PDT)
Received: from localhost.localdomain ([103.87.57.241])
 by smtp.gmail.com with ESMTPSA id p67sm10593167pfi.123.2019.05.04.11.43.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 11:43:30 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/7] staging: rtl8723bs: core: Remove blank line.
Date: Sun,  5 May 2019 00:13:12 +0530
Message-Id: <20190504184312.25567-1-vatsalanarang@gmail.com>
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
