Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2585FC9E5D
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 14:25:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 21576226D8;
	Thu,  3 Oct 2019 12:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pGas4eKTAkzH; Thu,  3 Oct 2019 12:25:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 578A7228E3;
	Thu,  3 Oct 2019 12:25:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F56D1BF9BD
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 12:25:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 79F6022879
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 12:25:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aFHZa2xcFqmp for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 12:25:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id A663220512
 for <devel@driverdev.osuosl.org>; Thu,  3 Oct 2019 12:25:36 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id a11so2729066wrx.1
 for <devel@driverdev.osuosl.org>; Thu, 03 Oct 2019 05:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ib/r61tbSexB1OnVkKNOt18FLUJy8O36CIIdkYoTSQw=;
 b=okVxu1JDlRGVgK8S/rV/IcDImZam46EkKetvnamhwBl7P3VaF5kAWPfnGQlY6ZBo3z
 aGzf0HjKxPd6nWvp3pX9U2ywm8VgI+I/BiU88M39jQ/OpS/ZLcPD8Nnd+HuK9NYRrXsq
 5BFHLpikIiPox8UFABtT9umwYXPjX8BmwvjAX3UOJoev0J4uPrjuJl23nvcbAgmGcGPg
 qTE7XYV810iQdT33+eAEy8w4MjTx5rqE+VdSBfdKrqEXfjYUb34B7unfe3M4Go97btSd
 A2U1nC1NBoTEDCeCNSa5QfgkuEMGfefaOzDXwz1ZgWDnx81MSF0nF6P5FTjeqkpDvJOK
 eQSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ib/r61tbSexB1OnVkKNOt18FLUJy8O36CIIdkYoTSQw=;
 b=pTD3i5WL02JCEBAUkVdgh9HyQG/UYYubfvMfYsR+7niuIwsYNNpjXVWb96/FVh5+HW
 PCXZmhaMOt+ZTCX9vM/sOO2O+F2Vj4q2YzVgcf//GfphUcXDTb9ofCEEFyictXH2Gd5e
 uaZPuM2KW6QfyuCdxuZGdbPwj/GNsbO1cqBXG3lK+wIz/Uq8VPrSD0QmTe5lzrtfOLUo
 nlW0yN+Rr/o5iD8XxMJ3mIwVpddNFhVIwj3YLhUqsQ2UzTfsLj095g21koKcUt1g+lwj
 w9Kl4ALv2EKKoCnCaFtGBsMOj7N+zst9RZg36tNDg3rmIwnIxXE+Mv0FtqmRSzuMIcxA
 A1SQ==
X-Gm-Message-State: APjAAAXLMDXKGbM0q0kafe2081fYFLGg5mMLTxEZZ7HZPPEJll5X4Zxd
 NwHGgoUJMjAcrgjD5zU1rFF4z8fU
X-Google-Smtp-Source: APXvYqy+2M5QPIy6JWX+AH37obCYnWiGytvV3JKfeetDLFiW+zxNzmthvaujaJAOSFQteC+LJGbUAA==
X-Received: by 2002:adf:ee92:: with SMTP id b18mr6460803wro.217.1570105535287; 
 Thu, 03 Oct 2019 05:25:35 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id f17sm2699322wru.29.2019.10.03.05.25.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 05:25:34 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/4] staging: rtl8188eu: rename variables to avoid mixed case
Date: Thu,  3 Oct 2019 14:25:12 +0200
Message-Id: <20191003122514.1760-3-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003122514.1760-1-straube.linux@gmail.com>
References: <20191003122514.1760-1-straube.linux@gmail.com>
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

Rename the local varibles max_AMPDU_len and min_MPDU_spacing to avoid
mixed case.

max_AMPDU_len -> max_ampdu_len
min_MPDU_spacing -> min_mpdu_spacing

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 1e4461a74474..75c34e8f2335 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -560,8 +560,8 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 
 static void update_hw_ht_param(struct adapter *padapter)
 {
-	u8 max_AMPDU_len;
-	u8 min_MPDU_spacing;
+	u8 max_ampdu_len;
+	u8 min_mpdu_spacing;
 	struct mlme_ext_priv	*pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
 
@@ -572,13 +572,13 @@ static void update_hw_ht_param(struct adapter *padapter)
 		ampdu_params_info [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
 		ampdu_params_info [4:2]:Min MPDU Start Spacing
 	*/
-	max_AMPDU_len = pmlmeinfo->HT_caps.ampdu_params_info & 0x03;
+	max_ampdu_len = pmlmeinfo->HT_caps.ampdu_params_info & 0x03;
 
-	min_MPDU_spacing = (pmlmeinfo->HT_caps.ampdu_params_info & 0x1c) >> 2;
+	min_mpdu_spacing = (pmlmeinfo->HT_caps.ampdu_params_info & 0x1c) >> 2;
 
-	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_MIN_SPACE, &min_MPDU_spacing);
+	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_MIN_SPACE, &min_mpdu_spacing);
 
-	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_FACTOR, &max_AMPDU_len);
+	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_FACTOR, &max_ampdu_len);
 
 	/*  */
 	/*  Config SM Power Save setting */
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
