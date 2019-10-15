Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C130D7A4C
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 17:45:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D70CA8666C;
	Tue, 15 Oct 2019 15:45:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ApGH_GGS03Nb; Tue, 15 Oct 2019 15:45:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 75D57864AB;
	Tue, 15 Oct 2019 15:45:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E2F21BF296
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 15:45:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 85490875D6
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 15:45:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZLq8IZrQRUmZ for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 15:45:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 822AB854D8
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 15:45:50 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id f20so18476742edv.8
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 08:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yW8xr8iEic65XnjxnmqB+HKy0i7WjaAMK2VRQT1VESQ=;
 b=jCnleJWNSIE6p0EcgwHM3yORVXMJoYM/2LPUBJjrKgux6TXMBSTKOSPnGXf8NFx2Cc
 s2eimFJRZDKbwhktq7J7s3MJQgYlJH1uuuoKWAnQWEKn7oatw7PEGZ33hUIMy5LEJGOQ
 V3vnNOwgKGUFXOZ7ii2HeSUT91GMcSuMAjjFqM+JLWg1MpGB7mIYYBd0UXP8a7z/zBD5
 /dHXdiSIPMvASWDL8Yks1QpPQ5S+8UvzP4CBNzmvzNtvdzpckOfb4biOKZ2Fq0j8MZY7
 48LFtRHc7k9o9iYc1Q6N5VYfjxmxd66Hq9IjF3vH2joUFSmAk3ryw8jX25DxcvXQ60jq
 UUGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yW8xr8iEic65XnjxnmqB+HKy0i7WjaAMK2VRQT1VESQ=;
 b=uTV32KTq2MMRygsemAXmeH8V0TFm5o8XoXEqgT9zjBS6NQeSfzCcJn0SPNAZXLe3QF
 4Yj7ErjZrO4Hq+ezpZHu9rzMc4fusLzwJKs/RhxnIqoV9iu6VQd6oY1z0NQBHuhXUgW/
 XqQRwr9VdQLRlF2Y5N8VVf24LoNAGerC7hktJnFRFmryqNs9lDbPHYZKudlP2vHEoxp2
 bvLxICYHzZ1DqknjCrxL8/zfpgPjbW8rgwXL/53AnzFFqyA+KlhKYy04JPrc7LCE2t9h
 ZNf1VjbNewGMLR0YhL9nl4Niz82Oc7pwtFOqgidgrzHgt4nqL1puWMt+GdZ4DVAvRedB
 V9Pg==
X-Gm-Message-State: APjAAAWosIM1ULzyhQ5h6dXKeDvSj3wGrrWc2Sc9a6ht54LsGlnZ3yTD
 E81lGBm2NGlMd0z63gfOsR8=
X-Google-Smtp-Source: APXvYqwg1840dcStG/Lyyi7CGNktO56vi0k0C8rD7IJp4SzHStR1FGBIcW+3VqNE9H8E6ugcq93UfQ==
X-Received: by 2002:a50:ace1:: with SMTP id x88mr34603745edc.132.1571154348846; 
 Tue, 15 Oct 2019 08:45:48 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id nq1sm2807787ejb.75.2019.10.15.08.45.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 08:45:48 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/3] staging: rtl8188eu: rename variables to avoid mixed case
Date: Tue, 15 Oct 2019 17:45:33 +0200
Message-Id: <20191015154535.27979-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rename local variables to avoid mixed case.

max_AMPDU_len -> max_ampdu_len
min_MPDU_spacing -> min_mpdu_spacing

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 .../staging/rtl8188eu/core/rtw_wlan_util.c    | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index c985b1468d41..6d56ca7ee7b4 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -667,7 +667,7 @@ static void bwmode_update_check(struct adapter *padapter, struct ndis_802_11_var
 void HT_caps_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
 {
 	unsigned int i;
-	u8 max_AMPDU_len, min_MPDU_spacing;
+	u8 max_ampdu_len, min_mpdu_spacing;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -689,16 +689,16 @@ void HT_caps_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
 		} else {
 			/* modify from  fw by Thomas 2010/11/17 */
 			if ((pmlmeinfo->HT_caps.ampdu_params_info & 0x3) > (pIE->data[i] & 0x3))
-				max_AMPDU_len = pIE->data[i] & 0x3;
+				max_ampdu_len = pIE->data[i] & 0x3;
 			else
-				max_AMPDU_len = pmlmeinfo->HT_caps.ampdu_params_info & 0x3;
+				max_ampdu_len = pmlmeinfo->HT_caps.ampdu_params_info & 0x3;
 
 			if ((pmlmeinfo->HT_caps.ampdu_params_info & 0x1c) > (pIE->data[i] & 0x1c))
-				min_MPDU_spacing = pmlmeinfo->HT_caps.ampdu_params_info & 0x1c;
+				min_mpdu_spacing = pmlmeinfo->HT_caps.ampdu_params_info & 0x1c;
 			else
-				min_MPDU_spacing = pIE->data[i] & 0x1c;
+				min_mpdu_spacing = pIE->data[i] & 0x1c;
 
-			pmlmeinfo->HT_caps.ampdu_params_info = max_AMPDU_len | min_MPDU_spacing;
+			pmlmeinfo->HT_caps.ampdu_params_info = max_ampdu_len | min_mpdu_spacing;
 		}
 	}
 
@@ -729,8 +729,8 @@ void HT_info_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
 
 void HTOnAssocRsp(struct adapter *padapter)
 {
-	unsigned char max_AMPDU_len;
-	unsigned char min_MPDU_spacing;
+	unsigned char max_ampdu_len;
+	unsigned char min_mpdu_spacing;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
@@ -748,13 +748,13 @@ void HTOnAssocRsp(struct adapter *padapter)
 	 * AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
 	 * AMPDU_para [4:2]:Min MPDU Start Spacing
 	 */
-	max_AMPDU_len = pmlmeinfo->HT_caps.ampdu_params_info & 0x03;
+	max_ampdu_len = pmlmeinfo->HT_caps.ampdu_params_info & 0x03;
 
-	min_MPDU_spacing = (pmlmeinfo->HT_caps.ampdu_params_info & 0x1c) >> 2;
+	min_mpdu_spacing = (pmlmeinfo->HT_caps.ampdu_params_info & 0x1c) >> 2;
 
-	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_MIN_SPACE, (u8 *)(&min_MPDU_spacing));
+	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_MIN_SPACE, (u8 *)(&min_mpdu_spacing));
 
-	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_FACTOR, (u8 *)(&max_AMPDU_len));
+	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_FACTOR, (u8 *)(&max_ampdu_len));
 }
 
 void ERP_IE_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
