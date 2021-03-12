Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCA333875D
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:30:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17C464ED63;
	Fri, 12 Mar 2021 08:30:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 82hyHP7Nk_4Y; Fri, 12 Mar 2021 08:30:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC1AD4EC5F;
	Fri, 12 Mar 2021 08:30:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6628A1BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 54F994ED4E
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XFponVF0CA05 for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE43A4ED4D
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:01 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 c76-20020a1c9a4f0000b029010c94499aedso15248076wme.0
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Xua4OAzaA2SR7rJGOrfOfyLcCZClJ1wFbqfQs9fYsZY=;
 b=qKkjyD5y1sxCteF4igGKMv3dy9DlEIQotWWUo/MfKnqhLZBDiDjR0zEgnoIgayEcIm
 /s/ukhrlxUO1SpbpEolcUP9eG5xSaVjmcbIix+VkF606KE4tW8r1mttl9We3gf/F6bXS
 wEUw8iK+ldooMt54fO0itM9PcX/OeHjXOvhPYTVyNvOinXvip5MkiEySeA0/aeQCyjFd
 6rWBiDXbQvjPC6OW2rNgM4/4QEg1aCXAGifaZM/kVzw3juu0jgfdNB5XD8DLU9joosQj
 /dYgxtiOvOqW2krz+R4oumARJewdFJftC/SVY/KztBCw7l8EcNUesIx3WQoJTBxdTHUw
 fSmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xua4OAzaA2SR7rJGOrfOfyLcCZClJ1wFbqfQs9fYsZY=;
 b=kHkJJTw8SZ2yoNFlRr2LrldmxwNKy1mfeqikEXB12qEMih2+JbDlmdm7F/RTk/Ahli
 PUUUt47V80viJLYP0YZg0Tq5B9CA63jInAQusEwrnOQD1VxMOct85TZ67AWFncNujYXL
 aPKoyCYimPulR94ZnmoKCIvVefRtgvSGiZh8b/XkxG6Tkjy5fVN6ps7GmUz75SZvO8vZ
 2YS2pHh83sX7PXBWFChlzBjNRvHqn3mnHnISKvR7D7Ji2eiS53yOT4K9dX0AYju90bVJ
 eKUXk6kX/gZ+AYOgRTuljAnuu15ySIlmAQuJprzW0KFHY09KZRM333KNJLOGCE96yeTM
 5rsw==
X-Gm-Message-State: AOAM533d9XrU7tVhjR/BzCW7u73sqwhDrcM7mj+Hmp/raEryCfpwqZMJ
 Rcd3jxph05FbNe6/kLWt0X4=
X-Google-Smtp-Source: ABdhPJzDwYK6nAKF7Udw+pkdBtZFP2ra8eB8xzemeLNFmNaGp6knvIbIg2GZAvbNRVocTA6Rblv9Xg==
X-Received: by 2002:a7b:c24e:: with SMTP id b14mr11841864wmj.73.1615537620187; 
 Fri, 12 Mar 2021 00:27:00 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:27:00 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 19/33] staging: rtl8723bs: remove typedefs in hal_com_h2c.h
Date: Fri, 12 Mar 2021 09:26:24 +0100
Message-Id: <20210312082638.25512-20-marco.cesati@gmail.com>
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
    #251: FILE: include/hal_com_h2c.h:251:
    +typedef struct _RSVDPAGE_LOC {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  | 20 +++++++++----------
 .../staging/rtl8723bs/include/hal_com_h2c.h   |  4 ++--
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 86f31d98349a..515b56ae9df0 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -832,7 +832,7 @@ void CheckFwRsvdPageContent(struct adapter *Adapter)
 {
 }
 
-static void rtl8723b_set_FwRsvdPage_cmd(struct adapter *padapter, PRSVDPAGE_LOC rsvdpageloc)
+static void rtl8723b_set_FwRsvdPage_cmd(struct adapter *padapter, struct RSVDPAGE_LOC *rsvdpageloc)
 {
 	u8 u1H2CRsvdPageParm[H2C_RSVDPAGE_LOC_LEN] = {0};
 
@@ -851,7 +851,7 @@ static void rtl8723b_set_FwRsvdPage_cmd(struct adapter *padapter, PRSVDPAGE_LOC
 	FillH2CCmd8723B(padapter, H2C_8723B_RSVD_PAGE, H2C_RSVDPAGE_LOC_LEN, u1H2CRsvdPageParm);
 }
 
-static void rtl8723b_set_FwAoacRsvdPage_cmd(struct adapter *padapter, PRSVDPAGE_LOC rsvdpageloc)
+static void rtl8723b_set_FwAoacRsvdPage_cmd(struct adapter *padapter, struct RSVDPAGE_LOC *rsvdpageloc)
 {
 #ifdef CONFIG_WOWLAN
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -891,7 +891,7 @@ static void rtl8723b_set_FwAoacRsvdPage_cmd(struct adapter *padapter, PRSVDPAGE_
 
 #ifdef CONFIG_AP_WOWLAN
 static void rtl8723b_set_ap_wow_rsvdpage_cmd(
-	struct adapter *padapter, PRSVDPAGE_LOC rsvdpageloc
+	struct adapter *padapter, struct RSVDPAGE_LOC *rsvdpageloc
 )
 {
 	u8 header;
@@ -1284,7 +1284,7 @@ static void rtl8723b_set_FwAOACGlobalInfo_Cmd(struct adapter *padapter,  u8 grou
 }
 
 #ifdef CONFIG_PNO_SUPPORT
-static void rtl8723b_set_FwScanOffloadInfo_cmd(struct adapter *padapter, PRSVDPAGE_LOC rsvdpageloc, u8 enable)
+static void rtl8723b_set_FwScanOffloadInfo_cmd(struct adapter *padapter, struct RSVDPAGE_LOC *rsvdpageloc, u8 enable)
 {
 	u8 u1H2CScanOffloadInfoParm[H2C_SCAN_OFFLOAD_CTRL_LEN] = {0};
 
@@ -1444,7 +1444,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	u8 TotalPageNum = 0, CurtPktPageNum = 0, RsvdPageNum = 0;
 	u16 BufIndex, PageSize = 128;
 	u32 TotalPacketLen, MaxRsvdPageBufSize = 0;
-	RSVDPAGE_LOC RsvdPageLoc;
+	struct RSVDPAGE_LOC RsvdPageLoc;
 #ifdef CONFIG_WOWLAN
 	u32 ARPLegnth = 0, GTKLegnth = 0;
 	u8 currentip[4];
@@ -1474,7 +1474,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	}
 
 	ReservedPagePacket = pcmdframe->buf_addr;
-	memset(&RsvdPageLoc, 0, sizeof(RSVDPAGE_LOC));
+	memset(&RsvdPageLoc, 0, sizeof(struct RSVDPAGE_LOC));
 
 	/* 3 (1) beacon */
 	BufIndex = TxDescOffset;
@@ -1829,7 +1829,7 @@ static void rtl8723b_set_AP_FwRsvdPagePkt(
 	u8 currentip[4];
 	u16 BufIndex, PageSize = 128;
 	u32 TotalPacketLen = 0, MaxRsvdPageBufSize = 0;
-	RSVDPAGE_LOC RsvdPageLoc;
+	struct RSVDPAGE_LOC RsvdPageLoc;
 
 	/* DBG_871X("%s---->\n", __func__); */
 	DBG_8192C("+" FUNC_ADPT_FMT ": iface_type =%d\n",
@@ -1851,7 +1851,7 @@ static void rtl8723b_set_AP_FwRsvdPagePkt(
 	}
 
 	ReservedPagePacket = pcmdframe->buf_addr;
-	memset(&RsvdPageLoc, 0, sizeof(RSVDPAGE_LOC));
+	memset(&RsvdPageLoc, 0, sizeof(struct RSVDPAGE_LOC));
 
 	/* 3 (1) beacon */
 	BufIndex = TxDescOffset;
@@ -2136,7 +2136,7 @@ static void SetFwRsvdPagePkt_BTCoex(struct adapter *padapter)
 	u8 TotalPageNum = 0, CurtPktPageNum = 0, RsvdPageNum = 0;
 	u16 BufIndex, PageSize;
 	u32 TotalPacketLen, MaxRsvdPageBufSize = 0;
-	RSVDPAGE_LOC RsvdPageLoc;
+	struct RSVDPAGE_LOC RsvdPageLoc;
 
 
 /* 	DBG_8192C("+" FUNC_ADPT_FMT "\n", FUNC_ADPT_ARG(padapter)); */
@@ -2156,7 +2156,7 @@ static void SetFwRsvdPagePkt_BTCoex(struct adapter *padapter)
 	}
 
 	ReservedPagePacket = pcmdframe->buf_addr;
-	memset(&RsvdPageLoc, 0, sizeof(RSVDPAGE_LOC));
+	memset(&RsvdPageLoc, 0, sizeof(struct RSVDPAGE_LOC));
 
 	/* 3 (1) beacon */
 	BufIndex = TxDescOffset;
diff --git a/drivers/staging/rtl8723bs/include/hal_com_h2c.h b/drivers/staging/rtl8723bs/include/hal_com_h2c.h
index b951bc288b89..8970c59388bb 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_h2c.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_h2c.h
@@ -248,7 +248,7 @@ enum h2c_cmd {
 /*  */
 /*     Structure    -------------------------------------------------- */
 /*  */
-typedef struct _RSVDPAGE_LOC {
+struct RSVDPAGE_LOC {
 	u8 LocProbeRsp;
 	u8 LocPsPoll;
 	u8 LocNullData;
@@ -275,7 +275,7 @@ typedef struct _RSVDPAGE_LOC {
 #ifdef CONFIG_AP_WOWLAN
 	u8 LocApOffloadBCN;
 #endif /* CONFIG_AP_WOWLAN */
-} RSVDPAGE_LOC, *PRSVDPAGE_LOC;
+};
 
 #endif
 #if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
