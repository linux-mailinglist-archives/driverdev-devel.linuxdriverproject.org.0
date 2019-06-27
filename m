Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C42D85898A
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 20:11:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB4E18748E;
	Thu, 27 Jun 2019 18:11:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ODhq3kqChKUM; Thu, 27 Jun 2019 18:11:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE5B487465;
	Thu, 27 Jun 2019 18:11:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E7FD1BF2F8
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:11:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9A3898723D
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r1eUwWtPS7EQ for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 18:11:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0AAEB86EAC
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 18:11:44 +0000 (UTC)
Received: by mail-pf1-f175.google.com with SMTP id y15so1630533pfn.5
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 11:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=sLO/22DEBzZ9YzTHvB2P+aBIyX6ZIdYPZ+AVLvQyXi4=;
 b=HNSET3Kig7XJjnUZ5Ide0hWJLXMNYu4LDZNoOkqz4fD8Nvu7FQ34UkprOrWYo6owJ4
 vTuGd6jnk5DnxXAzUEAjOZFsaTBpnGtMp0x+6ygF+Rdlgxda05fHM00tsY+nCq4+jtzu
 9mJChOYEI8b/UWtbKtKCPmmDYhiryvT8QViNBdB0LQePzpf+yTMiDeimcgpszUDWk82A
 rBq7gNZC8D4FZPeZVAMEiYmSMZH0MummDiSmFg9ThGDsoWt2qNnHjfg5nnIKWlAAINTs
 o6Od8P+zUREbwBetxIzOtRDLIcudV3caDibd2Ou9lFEAjS6fG7wA2hzsFuLz/JWoEHRJ
 ASMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=sLO/22DEBzZ9YzTHvB2P+aBIyX6ZIdYPZ+AVLvQyXi4=;
 b=o/0s8mMnzyPklXQl2bqDrwhofPxfLFzmtpJ/XIbfBMU9strQE2HoPHozN5rH0cl4Yh
 QVKFXNYCN7wPcznxdospiWrWnL1O04iNQuhwOR/D5gecI9//I8AzIhRtedOuQxRkf8r3
 lDqk8RlIVP/uLoePARwUN3l+U4dXqSlQXrQbJopYvGPDb3fPXkT84/ZF2gBNqBST+FuI
 3gJ4PQl0J1eQgR4DBAs1XsN4y+JpwRgaaqoAdQP9cqVofRvXIan4ily9MeIgF+1BD1Hf
 NPmrV7OM5N6BqHNGZJ170cqX3JEAsUzbFwAA7gIe1DeIQRMSqImCHOLh/a9hLJxCDkWL
 7Qbw==
X-Gm-Message-State: APjAAAUNeLR+S/d0RWHDc2b66ZpMmgquVND79WYtOkuo2nIkHDNZO8hB
 eLcDNzpmNvV/9miz/vhXZqs=
X-Google-Smtp-Source: APXvYqxSatuFQ8yuiFVOeRSZca4Eqd35/lgTnQRyBP+9mFROutEq01OWVr/WY20fT5YHYuHBK60dLg==
X-Received: by 2002:a17:90a:346c:: with SMTP id
 o99mr7475164pjb.20.1561659103600; 
 Thu, 27 Jun 2019 11:11:43 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id j5sm3690249pfi.104.2019.06.27.11.11.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 11:11:42 -0700 (PDT)
Date: Thu, 27 Jun 2019 23:41:39 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [Patch v3] staging: rtl8723bs: hal: sdio_halinit: Remove set but
 unused varilable pHalData
Message-ID: <20190627181139.GA3503@hari-Inspiron-1545>
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

Remove set but unsed variable pHalData in below functions
_InitOperationMode, SetHwReg8723BS.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
v2 add clean change log
v3 remove unneeded blank lines
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 4d06ab7..5b72d61 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -606,11 +606,9 @@ static void _initSdioAggregationSetting(struct adapter *padapter)
 
 static void _InitOperationMode(struct adapter *padapter)
 {
-	struct hal_com_data *pHalData;
 	struct mlme_ext_priv *pmlmeext;
 	u8 regBwOpMode = 0;
 
-	pHalData = GET_HAL_DATA(padapter);
 	pmlmeext = &padapter->mlmeextpriv;
 
 	/* 1 This part need to modified according to the rate set we filtered!! */
@@ -1413,7 +1411,6 @@ static void ReadAdapterInfo8723BS(struct adapter *padapter)
  */
 static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 {
-	struct hal_com_data *pHalData;
 	u8 val8;
 
 #if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
@@ -1433,8 +1430,6 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 #endif
 #endif
 
-	pHalData = GET_HAL_DATA(padapter);
-
 	switch (variable) {
 	case HW_VAR_SET_RPWM:
 		/*  rpwm value only use BIT0(clock bit) , BIT6(Ack bit), and BIT7(Toggle bit) */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
