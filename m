Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9572D21B6
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:08:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 64AA387CAF;
	Tue,  8 Dec 2020 04:08:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iOVdfN5ps-FQ; Tue,  8 Dec 2020 04:08:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB98B879F7;
	Tue,  8 Dec 2020 04:08:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D508A1BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D05C087A0D
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wP4wv7nYFePW for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:07:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AED4D87A0A
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:07:56 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id 81so15603644ioc.13
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=50gPnG7hHVVH2qSvelrRJ4nfNp6Nhs29ibByUu5SMdE=;
 b=BX17/dI3/hznW8qJMTRTwQfBBBRQ+Qg1jACfCrpDnZQ9hTiH2wSO8hmhrw6CvCVp3B
 FwSaaG/8KFToxtv4ijDBSLmLlORlkXzgVQ4fiDl+3dWogxXTDX5F9HeQJ6gznBb3NcVr
 IowgZOvHJOS8Hg/+pisGubppzUxRvA9ba9ZZ2OGbwgvtHH+2Te2X2R3Xj5jxd4hE6G+l
 w9lHhDI8wmo6Ax01k+T2snwA38LeY3XQUjnX9IG5WGUI3yOP+frsXhbKoE0P5vWWAK7i
 ppdUReNDr7iX/6oJdhGtsBhA//hhzuqNmuQHMB5fq78P3+pXP5aX8XucG8Bg1sbLtuBQ
 0OzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=50gPnG7hHVVH2qSvelrRJ4nfNp6Nhs29ibByUu5SMdE=;
 b=TUu0eL6j7kkfkVZvKtPl/YDx8gNya5qtbHx2O1b9t2j37cA+M+5tU8NTbKzXMoK4jB
 PMXP7paMyJrvzeXTuwk6aZQDTUDPLVkr5xdU8HjQjzsYJeq7Be6XTRePRcfMdZbJmKXe
 INTNTCcb+ieyJp857u4xm8TUAWanJ0W5am3EJYR4AZbai+fpVXFBA2zZN85w62V5htgX
 M3A/a9gSY7/L/ka/yPbee67g0veWBnPGLQ2IPQ217zF1DupGqnlJxc94bnV9gVHO6VOs
 fOjgs8h6S64y3P1DGEU9sc1ZRN1HCKNdxWkWtOe87mQXe8jTWIb9o0k41hGFLBUaL5cr
 QNVg==
X-Gm-Message-State: AOAM5306fghkE7vlxMjcWOe0xagGlOhH2J3F2Vq7CKh8F64bkGENHfOe
 zipXUvVgdPgdncuPtpW7sNw=
X-Google-Smtp-Source: ABdhPJwucHn+K0UJ07C+EB1vHMlWuM8Z1Sh4hsEqUzZokgJNj6zt7lfpMPhnBWsV1mQDXRyw5OOHew==
X-Received: by 2002:a02:9469:: with SMTP id a96mr25628565jai.86.1607400476067; 
 Mon, 07 Dec 2020 20:07:56 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:55 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 16/21] staging: rtl8723bs: replace _MME_IE_
Date: Mon,  7 Dec 2020 22:07:28 -0600
Message-Id: <20201208040733.379197-17-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201208040733.379197-1-ross.schm.dev@gmail.com>
References: <20201208040733.379197-1-ross.schm.dev@gmail.com>
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace unique _MME_IE_ macro with kernel provided WLAN_EID_MMIE from
linux/ieee80211.h.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 2 +-
 drivers/staging/rtl8723bs/core/rtw_xmit.c     | 2 +-
 drivers/staging/rtl8723bs/include/wifi.h      | 1 -
 3 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 33f5d3c5ac36..a83d8f7f611c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -1819,7 +1819,7 @@ u32 rtw_BIP_verify(struct adapter *padapter, u8 *precvframe)
 	/* save the frame body + MME */
 	memcpy(BIP_AAD+BIP_AAD_SIZE, pframe+WLAN_HDR_A3_LEN, pattrib->pkt_len-WLAN_HDR_A3_LEN);
 	/* find MME IE pointer */
-	p = rtw_get_ie(BIP_AAD+BIP_AAD_SIZE, _MME_IE_, &len, pattrib->pkt_len-WLAN_HDR_A3_LEN);
+	p = rtw_get_ie(BIP_AAD+BIP_AAD_SIZE, WLAN_EID_MMIE, &len, pattrib->pkt_len-WLAN_HDR_A3_LEN);
 	/* Baron */
 	if (p) {
 		u16 keyid = 0;
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 187a2aa77a55..41632fa0b3c8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -1292,7 +1292,7 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 		pmlmeext->mgnt_80211w_IPN++;
 
 		/* add MME IE with MIC all zero, MME string doesn't include element id and length */
-		pframe = rtw_set_ie(pframe, _MME_IE_, 16,
+		pframe = rtw_set_ie(pframe, WLAN_EID_MMIE, 16,
 				    MME, &pattrib->pktlen);
 		pattrib->last_txcmdsz = pattrib->pktlen;
 		/*  total frame length - header length */
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 29621fce6a83..82dfdafb38fc 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -395,7 +395,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 #define _SRC_IE_				59
 
 #define _RIC_Descriptor_IE_			75
-#define _MME_IE_					76 /* 802.11w Management MIC element */
 #define _LINK_ID_IE_					101
 #define _CH_SWITCH_TIMING_		104
 #define _PTI_BUFFER_STATUS_		106
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
