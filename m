Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 928413408E3
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 16:28:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3799F444E5;
	Thu, 18 Mar 2021 15:28:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S_t2Fx9oSPFH; Thu, 18 Mar 2021 15:28:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 767DD4EE19;
	Thu, 18 Mar 2021 15:28:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B05941BF341
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9EC548429E
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C8aFJCHhHlqS for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 15:27:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D70248429A
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 15:27:12 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id b9so5977412wrt.8
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MLrf/idKSuBG9Z4aKpcHo8trBmwta8+HIak4S9z56K8=;
 b=fDcwuv3P0lFTUn+bj8GgIp2qLgsGKDW/5flGP5oCIg7yXTZCT7LVpeosHLeERsr2GM
 jEXaQtr34wW4tX6XbiRiOL9ZrXYtegAwrk0X7hJmCBFL9+2+zcDeQcBOtCezyJ6J2Gac
 tZBCS0OG1QssV0Ogvcee+o+ukgfIgksogEY4+AZQlcouY3nkGxekphnOQPmrJJgblunC
 ePnWqZHXR/VoNv5dRPo+nScNqBLa5BjoA0WTJlIhPrdLCMyf1D95Fq4zBen6Gs/s+qE5
 /GQc94BW7hnru5K8DzrjzUZS5j0j9dIdVsbjkvFEM+isJTCrO98Ur0rEeHwVlaTR+r9r
 au/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MLrf/idKSuBG9Z4aKpcHo8trBmwta8+HIak4S9z56K8=;
 b=RZ1ncn6oEJVjI2mMXykwvxTmsepIfi+iRM0PUE8f+TY0CFP7/1d86fmjH/ZgENx6B4
 hoZW69qXzm8CjK7DPYdar0T3/jeDnRV3iKe8YUp+Bu9h6aFmZpk4iG9UMmWImok7C3h6
 WFnrf4ute2XLu66I55iCwPpMFezLCyEbmFLogl90LtB/6il58mPLtNUWB0lTXRSoBahv
 xTyzwhznV6gEtE/7wnhM7GzFWrgzHxWssVwgqAPp161xxn1t64909pK6yOQNc8kCCESS
 k7SRvv4dmaxm3sggZX/lSt5MrCPivGslk6AfqAiRxJfAUrMngjGqaSs95U1Xm+lbpI8x
 HPSw==
X-Gm-Message-State: AOAM531NWm07xqeKu8sGhiYzXG3Q9pAraTxUZDr7+m/RO5RqvcoVIIZk
 LxrcZYvvZIN2J+GWxOnhyMo=
X-Google-Smtp-Source: ABdhPJxSnNwdUos1T6LcbZlV69qRT2hYhSbx//fPL/GHuqsCwS4RhA2qxbuEZCPlWACnUKH9aCEuwA==
X-Received: by 2002:a5d:628c:: with SMTP id k12mr10018255wru.316.1616081231143; 
 Thu, 18 Mar 2021 08:27:11 -0700 (PDT)
Received: from agape ([151.46.162.59])
 by smtp.gmail.com with ESMTPSA id p17sm2389189wmd.42.2021.03.18.08.27.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 08:27:10 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 11/15] staging: rtl8723bs: remove unnecessary logging in
 hal/rtl8723b_hal_init.c
Date: Thu, 18 Mar 2021 16:26:06 +0100
Message-Id: <20210318152610.16758-12-fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210318152610.16758-1-fabioaiuto83@gmail.com>
References: <YFMb+7jjmj7Oty8B@kroah.com>
 <20210318152610.16758-1-fabioaiuto83@gmail.com>
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
 Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch.pl issues:

WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1685: FILE: drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:1685:
+/* 	DBG_8192C("%s\n", __func__); */
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1722: FILE: drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:1722:
+/* 	DBG_8192C("%s\n", __func__); */

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 9bcceb13ca2d..cc7f9af680b1 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -1681,8 +1681,6 @@ static u8 hal_EfusePgPacketWrite1ByteHeader(
 	u16 efuse_addr = *pAddr;
 	u8 repeatcnt = 0;
 
-
-/* 	DBG_8192C("%s\n", __func__); */
 	pg_header = ((pTargetPkt->offset << 4) & 0xf0) | pTargetPkt->word_en;
 
 	do {
@@ -1718,8 +1716,6 @@ static u8 hal_EfusePgPacketWrite2ByteHeader(
 	u8 pg_header = 0, tmp_header = 0;
 	u8 repeatcnt = 0;
 
-
-/* 	DBG_8192C("%s\n", __func__); */
 	EFUSE_GetEfuseDefinition(padapter, efuseType, TYPE_AVAILABLE_EFUSE_BYTES_BANK, &efuse_max_available_len, bPseudoTest);
 
 	efuse_addr = *pAddr;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
