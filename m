Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2496F33FB03
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:24:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0DD484169;
	Wed, 17 Mar 2021 22:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2WrNCJRUn1Tp; Wed, 17 Mar 2021 22:24:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D21C483EB6;
	Wed, 17 Mar 2021 22:24:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 332FA1BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 045644EDDA
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qr4ZDiSWfYoE for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 122DB4EDD7
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:29 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id hq27so817391ejc.9
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=f9FFHHgi4kiZnjvCHsB/XVwPhAjump5oOKUgea5Ap18=;
 b=IwdXcZceD0Yw3ciGd5r4VK+gU1YlD59iBeIzbACx86rybUOwFD8r4BC+FFmSWk1WfD
 5mnruz9IneG2oBCz/y4oidUu/7/7hUxRiG8emy4pew0lsbx7qluKdhBeMCR3USBL5MFF
 SRWT01lBkmHOeYS5uddM7XtLxbCLlu+2n2TKdVZYrtAS7pKqpRf/4A/Dnq7bW3gAscZ/
 /pN7UaBkFPCmk8yYhxjBPWz68zJKRYgNAXuIC442jXpgE5GEtn15UsmiSL7RWzjyLjHf
 ksruIWh4O0MYQ82aq6CdvBSPxs+xDNYtR5SybxcT2Vpbpmxt+79lVuN028vEKuDxb2vn
 C6FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f9FFHHgi4kiZnjvCHsB/XVwPhAjump5oOKUgea5Ap18=;
 b=tQ2mLXSvnbV04lu5Ezu/gFS6vFIpqGM8uVXTZJwQDmpm4nhdFdcJ18nRMB++7Ka7lX
 Pq3GSwKOpEKPgyv9tm0Zmx3Em/DuPA/bgV9c1aqedQ41vf6gN5pT3rTDIp317+1sNMYO
 c8xMB/xrZhAvaKh/KILxLqMuMGNB4EXELjW0OAQZphHrzlmpYjGukIa7sm3CdDZL0FfH
 H5RTY6id9OglRHORLgR1dP5bRJjthIFbsetnIb+XLouP4Kb3NpjIPgeYsn84Rb8ANpR4
 3N5nCPSpOEtsdY0ssfsoROZo5NQOjXcNULfpIvG4d+vNnsjjeA1YiwiDwbQ0JGEW7u7m
 T93w==
X-Gm-Message-State: AOAM531CmwJt6TEHTWpEpjF7AtU3Y4dMrIlmJ+u0a5uDO+kYDmvpSHQa
 qP6/GxOfAujQhCOuKolcfY4=
X-Google-Smtp-Source: ABdhPJw+HdLhDBjBGmy7i6DcBrsAy7Iy8i7ee75n1bLUN05iiKzLdnYRKZb6xRPuo2TEnEGy1+Vgog==
X-Received: by 2002:a17:906:948d:: with SMTP id
 t13mr36552940ejx.402.1616019688294; 
 Wed, 17 Mar 2021 15:21:28 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:28 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 14/43] Staging: rtl8723bs: fix names in hal_com_h2c.h
Date: Wed, 17 Mar 2021 23:21:01 +0100
Message-Id: <20210317222130.29528-15-marcocesati@gmail.com>
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
in include/hal_com_h2c.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c    | 12 ++++++------
 drivers/staging/rtl8723bs/include/hal_com_h2c.h |  2 +-
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 61fd643c244f..6897fc49e649 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -434,7 +434,7 @@ void CheckFwRsvdPageContent(struct adapter *Adapter)
 {
 }
 
-static void rtl8723b_set_FwRsvdPage_cmd(struct adapter *padapter, struct RSVDPAGE_LOC *rsvdpageloc)
+static void rtl8723b_set_FwRsvdPage_cmd(struct adapter *padapter, struct rsvdpage_loc *rsvdpageloc)
 {
 	u8 u1H2CRsvdPageParm[H2C_RSVDPAGE_LOC_LEN] = {0};
 
@@ -453,7 +453,7 @@ static void rtl8723b_set_FwRsvdPage_cmd(struct adapter *padapter, struct RSVDPAG
 	FillH2CCmd8723B(padapter, H2C_8723B_RSVD_PAGE, H2C_RSVDPAGE_LOC_LEN, u1H2CRsvdPageParm);
 }
 
-static void rtl8723b_set_FwAoacRsvdPage_cmd(struct adapter *padapter, struct RSVDPAGE_LOC *rsvdpageloc)
+static void rtl8723b_set_FwAoacRsvdPage_cmd(struct adapter *padapter, struct rsvdpage_loc *rsvdpageloc)
 {
 }
 
@@ -789,7 +789,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	u16 BufIndex, PageSize = 128;
 	u32 TotalPacketLen, MaxRsvdPageBufSize = 0;
 
-	struct RSVDPAGE_LOC RsvdPageLoc;
+	struct rsvdpage_loc RsvdPageLoc;
 
 	/* DBG_871X("%s---->\n", __func__); */
 
@@ -808,7 +808,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	}
 
 	ReservedPagePacket = pcmdframe->buf_addr;
-	memset(&RsvdPageLoc, 0, sizeof(struct RSVDPAGE_LOC));
+	memset(&RsvdPageLoc, 0, sizeof(struct rsvdpage_loc));
 
 	/* 3 (1) beacon */
 	BufIndex = TxDescOffset;
@@ -1267,7 +1267,7 @@ static void SetFwRsvdPagePkt_BTCoex(struct adapter *padapter)
 	u8 TotalPageNum = 0, CurtPktPageNum = 0, RsvdPageNum = 0;
 	u16 BufIndex, PageSize;
 	u32 TotalPacketLen, MaxRsvdPageBufSize = 0;
-	struct RSVDPAGE_LOC RsvdPageLoc;
+	struct rsvdpage_loc RsvdPageLoc;
 
 
 /* 	DBG_8192C("+" FUNC_ADPT_FMT "\n", FUNC_ADPT_ARG(padapter)); */
@@ -1287,7 +1287,7 @@ static void SetFwRsvdPagePkt_BTCoex(struct adapter *padapter)
 	}
 
 	ReservedPagePacket = pcmdframe->buf_addr;
-	memset(&RsvdPageLoc, 0, sizeof(struct RSVDPAGE_LOC));
+	memset(&RsvdPageLoc, 0, sizeof(struct rsvdpage_loc));
 
 	/* 3 (1) beacon */
 	BufIndex = TxDescOffset;
diff --git a/drivers/staging/rtl8723bs/include/hal_com_h2c.h b/drivers/staging/rtl8723bs/include/hal_com_h2c.h
index 1e1982621e2c..f8b5a53e90bc 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_h2c.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_h2c.h
@@ -180,7 +180,7 @@ enum h2c_cmd {
 /*  */
 /*     Structure    -------------------------------------------------- */
 /*  */
-struct RSVDPAGE_LOC {
+struct rsvdpage_loc {
 	u8 LocProbeRsp;
 	u8 LocPsPoll;
 	u8 LocNullData;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
