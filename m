Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F6C33FB00
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:24:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85D566F9BA;
	Wed, 17 Mar 2021 22:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SoN3eMur6Vzd; Wed, 17 Mar 2021 22:24:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B74C46F998;
	Wed, 17 Mar 2021 22:24:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 608DA1BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5DC206F998
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SD4lMv8sdO-W for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9864260636
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:30 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id u5so818016ejn.8
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=A2NNcNPlSq8fUJiDs/0RCWlkutFrxtOg0m1ci2xZsHY=;
 b=EFVfbp+P+pCH3fz34SQSJb3DWvUShVekKwy1+dZAmlmuai73wMCPbUVHaOMkFyjb1N
 L1T8zgfoOqLTmjgakFQ9q6ZN/iTdCpfgs+0MK8GOMFPQVxRPVEDeE/Cd8DPPhxMW/jYe
 3AhzaOWtGSnBvdj5/SiLwr9W+/SkAZgIZvYeWAALiOX1acsYVkXqmsdaqKxUQ4l79A3m
 dyCZS9q1wVwcS91h8VigwmrATSFwGW9MU7DKBGv0ucC4tGJDVPpGnYIjbdsbsBOsOLmS
 L55/4Qb1f9HT4iiVDPiTmzuQ9riVMv5keCGZIo3XDqI9x6TELu9Vcnlecm3AH8cHiQjk
 WXuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A2NNcNPlSq8fUJiDs/0RCWlkutFrxtOg0m1ci2xZsHY=;
 b=jfyWS4xjAQza2EQel2uqy2hr5+bsiAaU4PyHi0CAdVyboyF+MEgNp6iGKwS7fK9oJC
 WqdiCNao98li+DFV1lri1yMLgzNGYmU6Bz/mjXNjLlfvXAdVghLM4isQSylamA2b/EFp
 iWRLGmGsDdiJK5/ZV8WAhEGZzXwZdQxAaKDQr1aNmQhYkPFCx3lQxoq7ibTOQVV2dB+e
 sZMKKkftT9XxyRMDQHFg0LMP59EHG/FuYsRS9tLjgMkXkXM4+8AJKTLB1YzVIgnHTWeq
 DwbPpEmC3Wj5V2UPKvCIoukV6PBxYko+8vDVzvBhVCWCkjQZ5ktb6kWaRT5YH6mwUJyh
 8IWQ==
X-Gm-Message-State: AOAM5331rvH7zhy6lIctDdi2Gn9TmJPZ946aS3tIiibWBI4dU+Q1LiL1
 JqKPbyIkG9FbUAz/ZT3Adgs=
X-Google-Smtp-Source: ABdhPJypl1Lf8X/4LRhlGGsY3HfgqUgYTcEts0BilXlq3+3U8NuMKEvMZygsDEG8l99QnVwXD3MmTA==
X-Received: by 2002:a17:906:379b:: with SMTP id
 n27mr38531047ejc.182.1616019688891; 
 Wed, 17 Mar 2021 15:21:28 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:28 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 15/43] Staging: rtl8723bs: fix names in rtl8723b_xmit.h
Date: Wed, 17 Mar 2021 23:21:02 +0100
Message-Id: <20210317222130.29528-16-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit converts names of structs / enums
in include/rtl8723b_xmit.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 8 ++++----
 drivers/staging/rtl8723bs/include/rtl8723b_xmit.h | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index d30659a11236..9c30024fa984 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -2991,7 +2991,7 @@ static u8 fill_txdesc_sectype(struct pkt_attrib *pattrib)
 	return sectype;
 }
 
-static void fill_txdesc_vcs_8723b(struct adapter *padapter, struct pkt_attrib *pattrib, struct TXDESC_8723B *ptxdesc)
+static void fill_txdesc_vcs_8723b(struct adapter *padapter, struct pkt_attrib *pattrib, struct txdesc_8723b *ptxdesc)
 {
 	/* DBG_8192C("cvs_mode =%d\n", pattrib->vcs_mode); */
 
@@ -3024,7 +3024,7 @@ static void fill_txdesc_vcs_8723b(struct adapter *padapter, struct pkt_attrib *p
 	}
 }
 
-static void fill_txdesc_phy_8723b(struct adapter *padapter, struct pkt_attrib *pattrib, struct TXDESC_8723B *ptxdesc)
+static void fill_txdesc_phy_8723b(struct adapter *padapter, struct pkt_attrib *pattrib, struct txdesc_8723b *ptxdesc)
 {
 	/* DBG_8192C("bwmode =%d, ch_off =%d\n", pattrib->bwmode, pattrib->ch_offset); */
 
@@ -3044,7 +3044,7 @@ static void rtl8723b_fill_default_txdesc(
 	struct mlme_ext_priv *pmlmeext;
 	struct mlme_ext_info *pmlmeinfo;
 	struct pkt_attrib *pattrib;
-	struct TXDESC_8723B *ptxdesc;
+	struct txdesc_8723b *ptxdesc;
 	s32 bmcst;
 
 	memset(pbuf, 0, TXDESC_SIZE);
@@ -3057,7 +3057,7 @@ static void rtl8723b_fill_default_txdesc(
 	pattrib = &pxmitframe->attrib;
 	bmcst = IS_MCAST(pattrib->ra);
 
-	ptxdesc = (struct TXDESC_8723B *)pbuf;
+	ptxdesc = (struct txdesc_8723b *)pbuf;
 
 	if (pxmitframe->frame_tag == DATA_FRAMETAG) {
 		u8 drv_userate = 0;
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h b/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h
index ccadc3d11644..56bdc14af47d 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h
@@ -59,7 +59,7 @@
 /*  */
 /* defined for TX DESC Operation */
 /*  */
-struct TXDESC_8723B {
+struct txdesc_8723b {
 	/*  Offset 0 */
 	u32 pktlen:16;
 	u32 offset:8;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
