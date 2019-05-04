Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B4913BD0
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 20:47:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 245E687E5D;
	Sat,  4 May 2019 18:47:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jmYQTpmdESQP; Sat,  4 May 2019 18:47:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 89D4B87A04;
	Sat,  4 May 2019 18:47:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9FDF81BF5E9
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 18:47:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9CC55228E7
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 18:47:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ou9IbpUfzAlp for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 18:47:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id EF363215DF
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 18:47:13 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id d31so4357637pgl.7
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 11:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=l3c6KFF6BsmBy3LVEJIfrDKvV0/RDELn3G8eEmiKxLM=;
 b=FH5gmfmQbT7Z7/f7ibgaYZzoAGT0PM9xBJJDOLN8ljEUxvD53vVI8RJD/m2hdsuvX4
 aRuGjIFon600zbymKxPsy7JArdeJP0XNnLueZd9pdoRJbciHY+5aGmYKTzhBSGK9GxVo
 p6oWdxksOTWSmeDcUinlCds+P2/Q8qn4wzaM6WxP+LKdq5gE5PpR7aKEfCEIzbcJi7bC
 Pch8ZHzyFOljRjmfOpk4bd/7eI1yl3nwbajFVUCQM1cZxbdYxE31M0m9l4UeY4uIphKl
 BsQY8zWeL2egFIc66sciXuUeiAfJG14EkyaJEPJH4ptcBKaSOUCOcEOC+V/abRUhv5XI
 wXJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=l3c6KFF6BsmBy3LVEJIfrDKvV0/RDELn3G8eEmiKxLM=;
 b=BbxNujGVg78Zk9PvaGwOPwxVPpVW/qp5kV60AxPnr9I1GNto3erMv2ADwjgDYJjsKg
 oxsPyMnuPL1hd5EDJn8HeBOOVFbEn1A6wzgS7gk5r8xsTjjW9XDI1SR7NKaTcLlZ1xy+
 9b/KAIYhCulfOTxbReaN9NclGtOi58aRMuVMZetL0+TstAAa6Pnnn2LwE5bmhPYXflgK
 bToo0XySUb5750L8ti/vbzVADXw8dDqMA0Gpd0FBNwVSFs9t0Ht6GzcXiuRFvpnzB/Z4
 y+wxHkFUh5ii1jbtpqNCObXvwolx9pc2nHU6ayRqW8rurJGQD4l94gBaZPKRmrCAJv+S
 ljrw==
X-Gm-Message-State: APjAAAWp1RL6nPIDqWxXAKwWJmmfCOsOlz4097QCM2PCCzNTFbMtrPMu
 u2cqCKoF1r3CTJdk9cXfTu8=
X-Google-Smtp-Source: APXvYqymQKkkxsqq8taEVSzOWaYsFAAvsSK6EKs5rUtEyV71u2gBpBEFW5W/MxiIANly9lBD6Q/cZw==
X-Received: by 2002:a62:27c2:: with SMTP id n185mr20628729pfn.51.1556995633508; 
 Sat, 04 May 2019 11:47:13 -0700 (PDT)
Received: from localhost.localdomain ([103.87.57.241])
 by smtp.gmail.com with ESMTPSA id f21sm6989063pfn.30.2019.05.04.11.47.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 11:47:12 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/7] staging: rtl8723bs: core: Remove unnecessary parentheses.
Date: Sun,  5 May 2019 00:16:44 +0530
Message-Id: <20190504184644.25988-1-vatsalanarang@gmail.com>
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

Remove unnecessary parentheses after 'address-of' operator to get rid of
checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 32b66dce99cd..60079532bddd 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -277,7 +277,7 @@ void init_mlme_default_rate_set(struct adapter *padapter)
 static void init_mlme_ext_priv_value(struct adapter *padapter)
 {
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
+	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
 	atomic_set(&pmlmeext->event_seq, 0);
 	pmlmeext->mgnt_seq = 0;/* reset to zero when disconnect at client mode */
@@ -464,8 +464,8 @@ int	init_mlme_ext_priv(struct adapter *padapter)
 	int	res = _SUCCESS;
 	struct registry_priv *pregistrypriv = &padapter->registrypriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
+	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
 	pmlmeext->padapter = padapter;
 
@@ -609,8 +609,8 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 	unsigned char *p;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
-	struct wlan_bssid_ex	*cur = &(pmlmeinfo->network);
+	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
+	struct wlan_bssid_ex	*cur = &pmlmeinfo->network;
 	u8 *pframe = precv_frame->u.hdr.rx_data;
 	uint len = precv_frame->u.hdr.len;
 	u8 is_valid_p2p_probereq = false;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
