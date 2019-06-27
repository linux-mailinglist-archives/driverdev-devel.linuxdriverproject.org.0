Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F855896D
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 20:03:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D2D0D862EC;
	Thu, 27 Jun 2019 18:03:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KTfNsbg_ozbB; Thu, 27 Jun 2019 18:03:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A071E862C9;
	Thu, 27 Jun 2019 18:03:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 236B71BF3F9
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:03:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2098687FD2
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:03:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sx8XmjGZaaMq for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 18:03:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4CACF87EDB
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 18:03:08 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id 25so1370053pgy.4
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 11:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=1mhPYTvcTMkLr+r7i1/bipLacTCuZ27SECVhqtgV4Ww=;
 b=fajK3tVfVu0hc2KnwP+O/QcY4Esv2sFB6mxeSNSyrq1qttpTpId4y06ovuQhh1c8Ek
 vaoUQeJzAcss7zi7buBf6vBH87225tPeYsOTq66E1iGyM6LQLKfcsCEmWRuU3nYHMydO
 Y6ogyZtXa4D1dMoDU+WBwRkjXAmwD3jTIWDdtlkWiBllJxxWe4sLLXrHiKJJ8piel4oN
 0TZKzPdrr21D84oo1SGZNAxz4TWDRK36DBKi4XfRE5Jwob+0y9vRIew6xpNQunVjnr/A
 RNki7tINVGnT3su0GXUs+gmUF9FvKiK1qXEedpGoY0ieaEPZdm7I6yoXJP2d4HWtJahz
 z+JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=1mhPYTvcTMkLr+r7i1/bipLacTCuZ27SECVhqtgV4Ww=;
 b=s3acpR1CEwqrm7aVfKYpBr0zCphnLPgP0cz8MwueTo6PGvPNRjqPqnzkeWrTOhIZTC
 UjHCYZQ43fWiTFiMxmGtDmoxbqXtH89iPTE8jlrgVeqG8sSaDY2xwgU2AdvPE4g/5Xzc
 +yYK49SQJ8/61t4PwC7BLrAEwEfReMwHhnH25LrerhyITZdR5sWVQwR+SQNCpek6ik1u
 OsSESoM5mZtZnS9xfv2ourv1x92Brq9jDgMGV6JBTqEAicfs7Eh64Q3mR3gjMU5C9Y1q
 wZBP3VXYlrvkj6mF6k7SD4uyArcDXv6nnsLEE2N6Ks4N3YvssHg8ZyrJFD1XhuSbPmka
 CX2g==
X-Gm-Message-State: APjAAAVRqCHPgGZ3s0kZqVnx0YJh/sF3cWx5lreE9YzRekFz4L7YZk6F
 giWGeiRzo1pzMA+A2JpxsPw=
X-Google-Smtp-Source: APXvYqwkmG4Fnb/yeONev9B1/STo5fOP7Mn3YGfEssUkBeNvLaiz9N1RzrSaJixFX2ShvAT0E5/Jpw==
X-Received: by 2002:a63:4e58:: with SMTP id o24mr4861689pgl.366.1561658587793; 
 Thu, 27 Jun 2019 11:03:07 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id l1sm2548655pgi.91.2019.06.27.11.03.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 11:03:06 -0700 (PDT)
Date: Thu, 27 Jun 2019 23:33:02 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [Patch v2] staging: rtl8723bs: hal: sdio_halinit: Remove set but
 unused varilable pHalData
Message-ID: <20190627180302.GA3186@hari-Inspiron-1545>
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
