Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE4733875E
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:30:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6FB414150C;
	Fri, 12 Mar 2021 08:30:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LnwpbwLXixl8; Fri, 12 Mar 2021 08:30:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7CE9542C27;
	Fri, 12 Mar 2021 08:30:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7857D1C1135
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 67BDC4150B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wEtzoT0kdC9N for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D8C642C27
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:02 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id f12so4290191wrx.8
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ODyHiPtpiMW/TTGZApcOf3NcX0Z3OQ7IMg0BqmZfv9g=;
 b=IyFrL/CgwpXsA9XZBskOTAL/m1n/GY9h6hiJmEPlQi9D8OmM++fs12XvpsKr8EbrVr
 yuYIs9TVYM3y6AhOSd4gsdgGKPRYu8Y1Cgd+aR0qvS2jn/MWg+xi/sFR/pifY4+X+FWl
 unzqLjlHVFu1DLc6YOw45PdMlgx4q4RJReO8f+wZWTjUcbADE2VEXKFkz6goN46Oe04N
 uT194l4Ul8knTvdWJh3GKeRJRCZBBigPgdYXxMJrvbL3o5gNISqNLPz3fC5MY5xvVqsR
 MBNFT/JtSGonTMYwTLd6uUyNT/qPdlHRICvbnzBieo/hs5uwn6lkaaf9LiVedBM/Mwru
 oWrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ODyHiPtpiMW/TTGZApcOf3NcX0Z3OQ7IMg0BqmZfv9g=;
 b=Ei6Xfr/f4qYvUtEcYrNOATuzifly083NWZLqOJY13kbWpcbhogq/nqi6pcf7kKFcpl
 422D0gG2rjMvQ2E5Avz6qeGhNKcGm6Pe+0gx/LSQqSu5+JnOHyImFIZcOCNfCNAuBDwF
 M009LJecCb5oPlS1bqZwYuvzEtxMcogRYs7nq4ldzUVE9JKvLozloGqtHWnRWsipoPdR
 QCB9nRu8shcZoiYq9wYJDVUlKQWWMBddnjTBy715FS3ewv0w5LOTEjbvE+lgV+tz+jNc
 xPAwTFpk5PXCOa2FHZk7FUM1LJvP3BsA0rXzvorj5M30Fu80d7rzl/A4glDoo7vUPxcs
 KjZg==
X-Gm-Message-State: AOAM530/TG5MIIq9T5JEXz8OeV5KqQvURrX1C5ancX8lzbALVZfdIQoy
 b7ig2ay+3kPXb9paxjocsns=
X-Google-Smtp-Source: ABdhPJzmYFQhRicDX5a4KUi61YRLo2kXj3bShOIfWWViQim3bV+Yvq/w/Q5gFkfhXf+rpphUQ6jjmA==
X-Received: by 2002:a5d:4884:: with SMTP id g4mr12668362wrq.191.1615537620893; 
 Fri, 12 Mar 2021 00:27:00 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.27.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:27:00 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 20/33] staging: rtl8723bs: remove typedefs in rtl8723b_xmit.h
Date: Fri, 12 Mar 2021 09:26:25 +0100
Message-Id: <20210312082638.25512-21-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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

This commit fixes the following checkpatch.pl warning:

    WARNING: do not add new typedefs
    #62: FILE: include/rtl8723b_xmit.h:62:
    +typedef struct txdesc_8723b {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 8 ++++----
 drivers/staging/rtl8723bs/include/rtl8723b_xmit.h | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 84e963909283..26f432ea7012 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -2999,7 +2999,7 @@ static u8 fill_txdesc_sectype(struct pkt_attrib *pattrib)
 	return sectype;
 }
 
-static void fill_txdesc_vcs_8723b(struct adapter *padapter, struct pkt_attrib *pattrib, PTXDESC_8723B ptxdesc)
+static void fill_txdesc_vcs_8723b(struct adapter *padapter, struct pkt_attrib *pattrib, struct TXDESC_8723B *ptxdesc)
 {
 	/* DBG_8192C("cvs_mode =%d\n", pattrib->vcs_mode); */
 
@@ -3032,7 +3032,7 @@ static void fill_txdesc_vcs_8723b(struct adapter *padapter, struct pkt_attrib *p
 	}
 }
 
-static void fill_txdesc_phy_8723b(struct adapter *padapter, struct pkt_attrib *pattrib, PTXDESC_8723B ptxdesc)
+static void fill_txdesc_phy_8723b(struct adapter *padapter, struct pkt_attrib *pattrib, struct TXDESC_8723B *ptxdesc)
 {
 	/* DBG_8192C("bwmode =%d, ch_off =%d\n", pattrib->bwmode, pattrib->ch_offset); */
 
@@ -3052,7 +3052,7 @@ static void rtl8723b_fill_default_txdesc(
 	struct mlme_ext_priv *pmlmeext;
 	struct mlme_ext_info *pmlmeinfo;
 	struct pkt_attrib *pattrib;
-	PTXDESC_8723B ptxdesc;
+	struct TXDESC_8723B *ptxdesc;
 	s32 bmcst;
 
 	memset(pbuf, 0, TXDESC_SIZE);
@@ -3065,7 +3065,7 @@ static void rtl8723b_fill_default_txdesc(
 	pattrib = &pxmitframe->attrib;
 	bmcst = IS_MCAST(pattrib->ra);
 
-	ptxdesc = (PTXDESC_8723B)pbuf;
+	ptxdesc = (struct TXDESC_8723B *)pbuf;
 
 	if (pxmitframe->frame_tag == DATA_FRAMETAG) {
 		u8 drv_userate = 0;
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h b/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h
index 243d36d9bc7b..45573336ead2 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h
@@ -59,7 +59,7 @@
 /*  */
 /* defined for TX DESC Operation */
 /*  */
-typedef struct txdesc_8723b {
+struct TXDESC_8723B {
 	/*  Offset 0 */
 	u32 pktlen:16;
 	u32 offset:8;
@@ -175,7 +175,7 @@ typedef struct txdesc_8723b {
 	u32 txbf_path:1;
 	u32 seq:12;
 	u32 final_data_rate:8;
-} TXDESC_8723B, *PTXDESC_8723B;
+};
 
 #ifndef __INC_HAL8723BDESC_H
 #define __INC_HAL8723BDESC_H
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
