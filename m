Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836AE4C56B
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 04:27:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D2DC787C9F;
	Thu, 20 Jun 2019 02:27:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DbhkFSEcahnG; Thu, 20 Jun 2019 02:27:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C88987C91;
	Thu, 20 Jun 2019 02:27:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CEAA21BF57F
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 02:27:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CB92F85EC0
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 02:27:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X-ntTtrh7xCs for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 02:27:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 59E9E85EA5
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 02:27:33 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id k8so721939plt.3
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 19:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=rZe0jF1fnIyGnpK652ETkNOA+XkaYNF8CGCQ/FTB5oc=;
 b=O7xnBGcEjc+6HH9FPNRtdKx7U6xpjrgMFnsvTc1id4kCZt6Tdakw3afMiCRoGQ8T76
 HwaIAqNap8G42JmxPCjEWZMkl5dI9TLfvF7oq/gMZpYbEUZ70h0OvOREWZ2skn3uEivp
 BgqGQUhlmKRqeP6dUMPwJXsIonQYHXK/HW+GkGTqL2ZookJlYmxeWxrjzMBdWUVoLdxa
 WtwQBnSWqIWqPa0eIx12RLE2ANaxvFiAy0Gc7We5ixKqnbppoaagD0GUjmh8OB/37Gb+
 m3bm8B6epxzr+EGyPuVn3FUjNI/1MU6usEcP8PzVOQQSAw2+4Od+kP2AwgV3dIN4QvQa
 FS8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=rZe0jF1fnIyGnpK652ETkNOA+XkaYNF8CGCQ/FTB5oc=;
 b=ok4kto8bUV5w4ai73t23vbLVv3uIm/ljD6TrUYxqeAdF6MmHR2ZSn7/hS4v4/+WyXd
 Ytb6OXyaFGNjPfL5g530XxQLIIgVTsPKe5oTk1qSw2seT0kWKyRub8Dh4r0GBwTJYWUk
 yhIP9Eud43emkkf1ZB1X3wyPZXnvTp7sFFmnoOma9nX3DjWylpZ5agotRzqp35wBA3fZ
 vT0vy85q3C+hPhCCTntUOJt21VWL/shaMD0hyDvLa0LS6HhYNtFlibNoKb45wOup9kml
 l2MKTXRyXdOGcnPr1SKsiIO5HCTM6v4Q7uZMn5UddzOoVW6yiZ+6dwVxmp/M/+BHxrgz
 HIyw==
X-Gm-Message-State: APjAAAX5JKeW69zWvuPURCqJGEY5XlDmzsDuEY6heji2SzxV5961BIph
 pySrujMIfvBeik4rBaa7dNY=
X-Google-Smtp-Source: APXvYqwdAtGhD5XNJZSHPBwAYoQpJBoDZXZhetbZbQvr4LcPPT8qyQDrJZfAyLiJLcX0ILcYbSi3pw==
X-Received: by 2002:a17:902:e58b:: with SMTP id
 cl11mr100882004plb.24.1560997653013; 
 Wed, 19 Jun 2019 19:27:33 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id j23sm19200394pff.90.2019.06.19.19.27.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 19:27:31 -0700 (PDT)
Date: Thu, 20 Jun 2019 07:57:26 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: hal_btcoex: Remove variables
 pHalData and pU1Tmp
Message-ID: <20190620022726.GA19556@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

Remove pHalData variable as it is set but unused in function.
Remove pU1Tmp and replace this with pu8

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index fd0be52..e673319 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -560,18 +560,14 @@ static u8 halbtcoutsrc_Set(void *pBtcContext, u8 setType, void *pInBuf)
 {
 	PBTC_COEXIST pBtCoexist;
 	struct adapter *padapter;
-	struct hal_com_data *pHalData;
 	u8 *pu8;
-	u8 *pU1Tmp;
 	u32 *pU4Tmp;
 	u8 ret;
 
 
 	pBtCoexist = (PBTC_COEXIST)pBtcContext;
 	padapter = pBtCoexist->Adapter;
-	pHalData = GET_HAL_DATA(padapter);
 	pu8 = pInBuf;
-	pU1Tmp = pInBuf;
 	pU4Tmp = pInBuf;
 	ret = true;
 
@@ -614,11 +610,11 @@ static u8 halbtcoutsrc_Set(void *pBtcContext, u8 setType, void *pInBuf)
 
 	/*  set some u8 type variables. */
 	case BTC_SET_U1_RSSI_ADJ_VAL_FOR_AGC_TABLE_ON:
-		pBtCoexist->btInfo.rssiAdjustForAgcTableOn = *pU1Tmp;
+		pBtCoexist->btInfo.rssiAdjustForAgcTableOn = *pu8;
 		break;
 
 	case BTC_SET_U1_AGG_BUF_SIZE:
-		pBtCoexist->btInfo.aggBufSize = *pU1Tmp;
+		pBtCoexist->btInfo.aggBufSize = *pu8;
 		break;
 
 	/*  the following are some action which will be triggered */
@@ -633,15 +629,15 @@ static u8 halbtcoutsrc_Set(void *pBtcContext, u8 setType, void *pInBuf)
 	/* 1Ant =========== */
 	/*  set some u8 type variables. */
 	case BTC_SET_U1_RSSI_ADJ_VAL_FOR_1ANT_COEX_TYPE:
-		pBtCoexist->btInfo.rssiAdjustFor1AntCoexType = *pU1Tmp;
+		pBtCoexist->btInfo.rssiAdjustFor1AntCoexType = *pu8;
 		break;
 
 	case BTC_SET_U1_LPS_VAL:
-		pBtCoexist->btInfo.lpsVal = *pU1Tmp;
+		pBtCoexist->btInfo.lpsVal = *pu8;
 		break;
 
 	case BTC_SET_U1_RPWM_VAL:
-		pBtCoexist->btInfo.rpwmVal = *pU1Tmp;
+		pBtCoexist->btInfo.rpwmVal = *pu8;
 		break;
 
 	/*  the following are some action which will be triggered */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
