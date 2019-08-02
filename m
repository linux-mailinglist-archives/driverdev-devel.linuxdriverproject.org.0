Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D88A87EC92
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:25:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DEE2E20501;
	Fri,  2 Aug 2019 06:25:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZQw1NenImLwB; Fri,  2 Aug 2019 06:25:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4BEBE20397;
	Fri,  2 Aug 2019 06:25:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 768E41BF27A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:25:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 52FBC88415
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:25:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s4Bjr2ImJPhV for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:24:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B3E7F8844C
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:24:59 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id u14so35494679pfn.2
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 23:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Nc4VCQbxJzaCBkqPxArE9MLIV2MSfmfFev47Tsxxmqk=;
 b=rPVCYfsLCyW9LVKH6suwBIrH/aBdNM/+crnmQ3uilA3/+Ra1fjQD+1aRBeEhMQ7XDV
 P51OWEWcqq/IMxwLg+dvXek0EW/1A3sg0tusThdZnrCKgjTsRSTHpVGqZ6bXTuqYEfIs
 Nwu57G3N+8l3NtLaDjC4GqDf+l2i8rusQFsFi7EQP6t7xsP9CaO8wnAjd7gtbf1IkrfT
 Qgekf9cgpNSkgZMuv2YTlO6NSLrmhIDo7VRtH+PUMAgeBvD7m21VlneVv6tq7ZXR9Fi7
 76xgNa5daZUH3PQmwfvrbfjEdE7elpInDJJL8eSbkFxcyHijxDJvEq4gbnD5nhBcQgyn
 v04g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Nc4VCQbxJzaCBkqPxArE9MLIV2MSfmfFev47Tsxxmqk=;
 b=Mv26s5O1SdotKviTaNVGG9vT9kzjaILpAwdL4vXmNnUmvFOUvRFn0g3vBlKv2EMnMR
 MrBsn+CSUVpOmVGGMhvlclHZd9VrK9Oed4iBRT6IaM0pHqXARnGdq8cyAAUDLW8RE+Ta
 00x033MpQBWMvMwhC174kIzKVwcExzXdxeQMTGP1Wl6R7Du5Ix/7A3Z3kzdyS3pvt1UA
 jlClOc8o9it9CNsVaAI8zFYS0fNz1D4ehu4ALOoswW/+hK47J67QWTYnb/B4JccILLRJ
 Hch4WwhgLDe92rHSA2T7eoDMTxo4TU4To9I5ywbmCDDarKwYkhGN/lKwfg+ugFYyN07t
 Cn/w==
X-Gm-Message-State: APjAAAXHWf6HckXXvQ2dCRK9vf40jzI9FS/kj97lpyJTjJzZ94us5CqE
 u+vxTP2f9Q2gdRm2fQygppE=
X-Google-Smtp-Source: APXvYqyGpo/Wf2D6CFlgNlG1o733gpSNI12s1UXI/Yi6NwPp+6gVYUEdc3OHzK4n3hK6CSMbjGsVAw==
X-Received: by 2002:a62:3c3:: with SMTP id 186mr57846229pfd.21.1564727099399; 
 Thu, 01 Aug 2019 23:24:59 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id r15sm80249986pfh.121.2019.08.01.23.24.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 23:24:59 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 2/4] staging: rtl8723bs: Change return type of
 hal_btcoex_IsBtControlLps()
Date: Fri,  2 Aug 2019 11:54:42 +0530
Message-Id: <20190802062444.30384-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190802062444.30384-1-nishkadg.linux@gmail.com>
References: <20190802062444.30384-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change return type of hal_btcoex_IsBtControlLps from u8 to bool as it
only returns boolean values.
Change comparison to false within this function; check the boolean
variable directly instead.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c     | 4 ++--
 drivers/staging/rtl8723bs/include/hal_btcoex.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 73f3d93d2d1a..85f5371d349b 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -1475,9 +1475,9 @@ void hal_btcoex_SetManualControl(struct adapter *padapter, u8 bmanual)
 	GLBtCoexist.bManualControl = bmanual;
 }
 
-u8 hal_btcoex_IsBtControlLps(struct adapter *padapter)
+bool hal_btcoex_IsBtControlLps(struct adapter *padapter)
 {
-	if (hal_btcoex_IsBtExist(padapter) == false)
+	if (!hal_btcoex_IsBtExist(padapter))
 		return false;
 
 	if (GLBtCoexist.btInfo.bBtDisabled)
diff --git a/drivers/staging/rtl8723bs/include/hal_btcoex.h b/drivers/staging/rtl8723bs/include/hal_btcoex.h
index a91116e5c549..da25f8e98ec7 100644
--- a/drivers/staging/rtl8723bs/include/hal_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/hal_btcoex.h
@@ -47,7 +47,7 @@ void hal_btcoex_Handler(struct adapter *padapter);
 
 s32 hal_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *padapter);
 void hal_btcoex_SetManualControl(struct adapter *padapter, u8 bmanual);
-u8 hal_btcoex_IsBtControlLps(struct adapter *);
+bool hal_btcoex_IsBtControlLps(struct adapter *padapter);
 u8 hal_btcoex_IsLpsOn(struct adapter *);
 u8 hal_btcoex_RpwmVal(struct adapter *);
 u8 hal_btcoex_LpsVal(struct adapter *);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
