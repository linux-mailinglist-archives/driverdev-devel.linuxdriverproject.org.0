Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C6056FC6
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 19:45:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A4DD827BD;
	Wed, 26 Jun 2019 17:45:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j6jldh76sAnH; Wed, 26 Jun 2019 17:45:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 570F084AE3;
	Wed, 26 Jun 2019 17:45:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D12031BF326
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 17:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BE6F887CDE
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 17:45:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FgIiFXnvSsa5 for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 17:45:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C87B987C89
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 17:45:03 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id s27so1554975pgl.2
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 10:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=2Op3n5iEsvujbWLuRbwUwnaBtFtleYDkesVFXREb9Vo=;
 b=VHHv5soNPZ1wTs+oB5lvnI+GJuZqal0ynwkBCxaFyga1OO+eyxT9pbASC8Nv1TpLtN
 atuN/ZHup1I27DxYX6GqfFjD6LD9/uLHY2rDJ1dMqZmlI/hGCwfB9x/g+A1p2EQjTLQ5
 zewrkWn7u8Vq7fWl8HQQ/CDBAwfC4MlSMrwXfN8n95bffLMoFWIKYhdKXRvJ9REbf5Fi
 36nxophXkAtsWnSHtxkGOG5vKGtiZNZl/IA9P9nBMp5qKQv6BOnKFYoI3EQsP2nZliWT
 Ojk5GSSRod3hpiiLC6tHPReDBdwtpRpXiU/ONFuc07I6v6Aq5s9IfFRiyZzYALeC5j/0
 vWOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=2Op3n5iEsvujbWLuRbwUwnaBtFtleYDkesVFXREb9Vo=;
 b=qvUqkrcdVsyEQWeaOY/FH9KE9CcYJeRM1sqYCWa/d+PdqKnJrnr9HoEvERdfF6jW3t
 aKSnbVpJg1ev2W3bQYSbZs1Ri1eVYUPvR392Rj5/kb0pxDnLEDziU5/f0MWQECF2Ix4v
 jqH0VzQKJw3ZTm5ro1fjwLCtkw6RJVESeyQthIcKmzY5gnJXd2S4jtBtr/JojOn62n3r
 Eqd2+l9udLlJpA655ORDkMkKN4n75leZ2UnV6Z+BaPKjvjCh/r8d6iqu3pDCzAl5E++4
 E01r/SJPVmhTHy48XwU3PSYqa/baAaxVTLEzNpxaSuisA6yBWYnKj09AwoAXLm9ieXyS
 bU+w==
X-Gm-Message-State: APjAAAXW2U/XC7FATezLdQ4WDd/CMrZFkRi4nM6FgIv2e00PNIeyKW45
 L9BEIAWWAHiAj7hMqdeoSmQT2RG3
X-Google-Smtp-Source: APXvYqyZy1CyONKS9fNZyPke/BiVRAq19Tnbv8CiP7+babcRcF4BXPN+ELCU3q2aDNXVzS4h5fsTww==
X-Received: by 2002:a17:90a:25c8:: with SMTP id
 k66mr263362pje.129.1561571103465; 
 Wed, 26 Jun 2019 10:45:03 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id w22sm19712088pfi.175.2019.06.26.10.45.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 10:45:03 -0700 (PDT)
Date: Wed, 26 Jun 2019 23:14:59 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: sdio_halinit: Remove set but unused
 varilable pHalData
Message-ID: <20190626174459.GA8539@hari-Inspiron-1545>
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

_InitOperationMode
SetHwReg8723BS

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 4d06ab7..9e8bbee 100644
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
@@ -1433,7 +1430,6 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 #endif
 #endif
 
-	pHalData = GET_HAL_DATA(padapter);
 
 	switch (variable) {
 	case HW_VAR_SET_RPWM:
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
