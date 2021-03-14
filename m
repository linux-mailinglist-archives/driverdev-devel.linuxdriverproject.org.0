Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D48E33A3AD
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Mar 2021 10:04:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCC958376E;
	Sun, 14 Mar 2021 09:04:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q-c4o_CnLfNV; Sun, 14 Mar 2021 09:04:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A7CE983A89;
	Sun, 14 Mar 2021 09:04:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 13E5C1BF395
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 09:03:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 624686F477
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 09:03:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c89zYD98nrL0 for <devel@linuxdriverproject.org>;
 Sun, 14 Mar 2021 09:03:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 768486071F
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 09:03:40 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id q25so52192177lfc.8
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 01:03:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hguw5+O2RXZ1hrL363Zt/JpzxYDjK5DKbtQbdHmjNfA=;
 b=XIpf0NlDgf3jaQj4Rkx43hV8ifcplrc9YfH+4IhyWcdGFYN7Mm9hfMtMY2GZ2H8JPt
 0182mRSaSP5WhwgPaH9nXHMeNrcw7G9jN5hXQ1IL0KABfd4fkKa/6rmURo5xj+thVgTF
 Ou6nf9IFIn9D8/um+vWUO4UJ3H6XZoQXJUDUxkFexrbCrxJ2GtyjtSaT0cu1SJXSIdRd
 4g11P1qKwKB6o+soteNlSRTOwvnWrk+sL2xwXhbXoRtWRjeqax+hqLSVp5RTm7YZWP/0
 76NKv10W9RjNFqMAkj1zyhv1RZwTwkytF3IGcQTy0He8UVAwPBNu8378VoRmo3BjxdFD
 IBGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hguw5+O2RXZ1hrL363Zt/JpzxYDjK5DKbtQbdHmjNfA=;
 b=MRJ7q7bnTe0IN9u2VYFMz4S8pNoY9mw1SqM114PH0ptKp1ZXFLv6gxdEbdeOy8dGfG
 SwDKfLzxY0d5WVrVveCYPMZ3LcdDz3mJkPAogVEgGD/uwZHDkPDCs/WuRSu+HkExn/eM
 tvPgSz8H+7IyOeNnoiYGjnDb/C+YV6ifyz5Ky4iT5RrtbHK52JhbhErjQxQzZFvBLdzs
 BaHYDTs2LaqMLigzqJBVzcc805TeuFY7SUAzO/Qhjm9/P0YlHK0EEVhVhgOxUZ8uk5Ic
 qVwKap69FIY4HRLGDhCc+ccRnxURu2+xqDOBImi9J9ig2blWvB7bwy/CPZxhRvYP5fiV
 /NXw==
X-Gm-Message-State: AOAM530pbS9/YJZnCHAnLhgnzzKllbbVq4qzhOdUKAPNZ8OmSlecdq/D
 BkswLvOWFeoXo5BTINTexI4=
X-Google-Smtp-Source: ABdhPJw8YisPXI7lgmJQPChYNB1hUVwl5a1e9hxwlgEvYUMROXFHSiaWgjPd97NarrONVpmd7qKPJQ==
X-Received: by 2002:ac2:482c:: with SMTP id 12mr4601474lft.4.1615712618184;
 Sun, 14 Mar 2021 01:03:38 -0800 (PST)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id w5sm2265319lfu.179.2021.03.14.01.03.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Mar 2021 01:03:37 -0800 (PST)
Received: (nullmailer pid 21235 invoked by uid 1000);
 Sun, 14 Mar 2021 09:03:26 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 4/4] staging:r8188eu: use ieee80211_is_ctl instead
 IsFrameTypeCtrl
Date: Sun, 14 Mar 2021 12:02:47 +0300
Message-Id: <20210314090247.21181-5-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210314090247.21181-1-insafonov@gmail.com>
References: <20210314090247.21181-1-insafonov@gmail.com>
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
Cc: Brooke Basile <brookebasile@gmail.com>, devel@driverdev.osuosl.org,
 Ivan Safonov <insafonov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Shreeya Patel <shreeya.patel23498@gmail.com>,
 Mrinal Pandey <mrinalmni@gmail.com>, Simon Fong <simon.fodin@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

IsFrameTypeCtrl() duplicate ieee80211_is_ctl().

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c | 8 +++++---
 drivers/staging/rtl8188eu/include/wifi.h        | 8 --------
 2 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
index 4fae75fc3dd5..8669bf097479 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
@@ -133,6 +133,8 @@ void update_recvframe_phyinfo_88e(struct recv_frame *precvframe,
 	struct rx_pkt_attrib *pattrib = &precvframe->attrib;
 	struct odm_phy_status_info *pPHYInfo  = (struct odm_phy_status_info *)(&pattrib->phy_info);
 	u8 *wlanhdr;
+	struct ieee80211_hdr *hdr =
+		(struct ieee80211_hdr *)precvframe->pkt->data;
 	struct odm_per_pkt_info	pkt_info;
 	u8 *sa = NULL;
 	struct sta_priv *pstapriv;
@@ -144,13 +146,13 @@ void update_recvframe_phyinfo_88e(struct recv_frame *precvframe,
 
 	wlanhdr = precvframe->pkt->data;
 
-	pkt_info.bPacketMatchBSSID = ((!IsFrameTypeCtrl(wlanhdr)) &&
+	pkt_info.bPacketMatchBSSID = (!ieee80211_is_ctl(hdr->frame_control) &&
 		!pattrib->icv_err && !pattrib->crc_err &&
 		!memcmp(get_hdr_bssid(wlanhdr),
 		 get_bssid(&padapter->mlmepriv), ETH_ALEN));
 
 	pkt_info.bPacketToSelf = pkt_info.bPacketMatchBSSID &&
-				 (!memcmp(ieee80211_get_DA((struct ieee80211_hdr *)wlanhdr),
+				 (!memcmp(ieee80211_get_DA(hdr),
 				  myid(&padapter->eeprompriv), ETH_ALEN));
 
 	pkt_info.bPacketBeacon = pkt_info.bPacketMatchBSSID &&
@@ -161,7 +163,7 @@ void update_recvframe_phyinfo_88e(struct recv_frame *precvframe,
 			sa = padapter->mlmepriv.cur_network.network.MacAddress;
 		/* to do Ad-hoc */
 	} else {
-		sa = ieee80211_get_SA((struct ieee80211_hdr *)wlanhdr);
+		sa = ieee80211_get_SA(hdr);
 	}
 
 	pstapriv = &padapter->stapriv;
diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl8188eu/include/wifi.h
index d65a0a88a69a..84e17330628e 100644
--- a/drivers/staging/rtl8188eu/include/wifi.h
+++ b/drivers/staging/rtl8188eu/include/wifi.h
@@ -197,14 +197,6 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 	return sa;
 }
 
-static inline int IsFrameTypeCtrl(unsigned char *pframe)
-{
-	if (GetFrameType(pframe) == WIFI_CTRL_TYPE)
-		return true;
-	else
-		return false;
-}
-
 /*-----------------------------------------------------------------------------
 			Below is for the security related definition
 ------------------------------------------------------------------------------*/
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
