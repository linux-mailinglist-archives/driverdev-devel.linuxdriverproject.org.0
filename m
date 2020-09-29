Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A28827BD2B
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 08:32:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 92FA920531;
	Tue, 29 Sep 2020 06:32:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N3K9j6jCRyPW; Tue, 29 Sep 2020 06:32:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 03EDF20522;
	Tue, 29 Sep 2020 06:32:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C1C21BF2F9
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 06:32:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7039320501
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 06:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cBfhJ16Qbye6 for <devel@linuxdriverproject.org>;
 Tue, 29 Sep 2020 06:32:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by silver.osuosl.org (Postfix) with ESMTPS id BA4C5204FA
 for <devel@driverdev.osuosl.org>; Tue, 29 Sep 2020 06:32:34 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id u21so13412805eja.2
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 23:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5ygH8c0/xNa/L0WeRqAttajGmFCGSI3CQQznLpjHOeI=;
 b=RFefGDaPLk/BdTI0MuXP9sB/TcXZFxg3LKu3B0V0aTK0w/5iAs7K3yua5b1/BwjTUZ
 tm6zx4xGbmEAu4XGcmgp6AyPk7GNFyfcX4S5wy9l2Cq6LwqqJqlwNdFCN47MtX2rqyo3
 XFTsVyocRP85sU/BLD1GaymZ4p2YllhMb74FuMQAZno3cT1W6OgXaS6TOddOaK5+v16T
 PY25HLYpp6ysBVjWMdqiXTtyOdE2rt1Fblg5w4h3Wzj7/FzzJpgTX9rGuS5xSBvXJePT
 riDT10+Vg/YG+Gv4Gv4BE3OOytGtaXGEIDuzVxoV1OP+nHfSTxsDVjYIgw9cKaYnwcro
 yMwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5ygH8c0/xNa/L0WeRqAttajGmFCGSI3CQQznLpjHOeI=;
 b=hsoByqlWNcQj5eqqakTANmgqJoKCDVnhwX+A2fPHB05BkLMAB1CTgMQqqaevA4G2tQ
 /K4D1+wVIeL/Jn6SWoqgRADKImwDwaJaGe6tYkIsl+5q6Bbse/shPAOSjKkIFfF35ODT
 Dgh1awR17pTI8kPYJIx/qxCQpzH91fkxf0Pt1XY8uYYPB66TLb7Dajrstcmn84RmlKxZ
 cdCwtamQ5OtaHNilZtg67/D4uUAt9q5/1fcAJK0NoPr+8eeTf+sZEIPLBt1/GeQXsjFT
 4A8GyOwwPCRINM5utSah8gYJLnRoDBo7+7peTXzetfnf0tAgdPtU0ebXBbOnnH9xp9qX
 64EA==
X-Gm-Message-State: AOAM532+51sGV3lbnl4PcAGy/qFvssiIVj8bLeXGTNEkUetIFv9ettlr
 3rdqEDTro7oppZeTLSuGbWQ=
X-Google-Smtp-Source: ABdhPJzC8WHlD8JpD7ZWD6a+vTEyfsM7azwKe2wwMcEzQAH1RzV+WJwPkvGHD2/C/Uhv8k4xb/tk9g==
X-Received: by 2002:a17:906:91d3:: with SMTP id
 b19mr2391419ejx.235.1601361152992; 
 Mon, 28 Sep 2020 23:32:32 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-039.092.219.pools.vodafone-ip.de. [92.219.207.39])
 by smtp.gmail.com with ESMTPSA id r8sm4730915edy.87.2020.09.28.23.32.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Sep 2020 23:32:32 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/8] staging: rtl8188eu: clean up comparsions to NULL
Date: Tue, 29 Sep 2020 08:28:41 +0200
Message-Id: <20200929062847.23985-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929062847.23985-1-straube.linux@gmail.com>
References: <20200929062847.23985-1-straube.linux@gmail.com>
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

Clean up remaining comparsions to NULL reported by checkpatch.
x == NULL -> !x
x != NULL -> x

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_security.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index b7a8c199de54..46ba55a8952a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -142,7 +142,7 @@ void rtw_wep_encrypt(struct adapter *padapter, struct xmit_frame *pxmitframe)
 	struct sk_buff *skb;
 	struct lib80211_crypto_ops *crypto_ops;
 
-	if (pxmitframe->buf_addr == NULL)
+	if (!pxmitframe->buf_addr)
 		return;
 
 	if ((pattrib->encrypt != _WEP40_) && (pattrib->encrypt != _WEP104_))
@@ -589,7 +589,7 @@ u32	rtw_tkip_encrypt(struct adapter *padapter, struct xmit_frame *pxmitframe)
 	struct	xmit_priv		*pxmitpriv = &padapter->xmitpriv;
 	u32	res = _SUCCESS;
 
-	if (pxmitframe->buf_addr == NULL)
+	if (!pxmitframe->buf_addr)
 		return _FAIL;
 
 	hw_hdr_offset = TXDESC_SIZE +
@@ -602,7 +602,7 @@ u32	rtw_tkip_encrypt(struct adapter *padapter, struct xmit_frame *pxmitframe)
 		else
 			stainfo = rtw_get_stainfo(&padapter->stapriv, &pattrib->ra[0]);
 
-		if (stainfo != NULL) {
+		if (stainfo) {
 			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
 
 			if (is_multicast_ether_addr(pattrib->ra))
@@ -834,7 +834,7 @@ u32 rtw_aes_decrypt(struct adapter *padapter, struct recv_frame *precvframe)
 	if (prxattrib->encrypt == _AES_) {
 		struct sta_info *stainfo = rtw_get_stainfo(&padapter->stapriv, &prxattrib->ta[0]);
 
-		if (stainfo != NULL) {
+		if (stainfo) {
 			int key_idx;
 			const int key_length = 16, iv_len = 8, icv_len = 8;
 			struct sk_buff *skb = precvframe->pkt;
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
