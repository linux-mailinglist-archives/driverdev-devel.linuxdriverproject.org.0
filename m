Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3287ECD0
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:42:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3DDDD8793D;
	Fri,  2 Aug 2019 06:42:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tXxcLbOl4Qra; Fri,  2 Aug 2019 06:42:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A91B8794F;
	Fri,  2 Aug 2019 06:42:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 96C761BF27A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 94147878EA
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JSi-WCppSpUO for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:42:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2EE3A878E6
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:42:46 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id ay6so33301424plb.9
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 23:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nMqfVyipjR7e5oCB2deax4eB9IKIFD13I8Yj3mQcxmI=;
 b=X2hzw16HXpih2kzNWswZsyDGj1hSQTCl6YJ2E2JC5W9nv5pWcq3l6YjyfFmhXjQ5Sx
 AeYnOT40DHSS7xDvgg9O8LgcDwbYBKOEGH1nm0DIe29Nj5ev7yeXQy18qGXSU/qnS7AU
 FQX8RVNrtGtbYWJ7RN6XTZKUcfCSwEIF+HDR0fy9QgvjbpuskAw8Y+upVO0dpGLqV/dc
 NUEbjTOuZUf3jv0bmE0gAnZTlnmr3gle8nQ+wtAK2CDPI1b+LkWX8T4WwoJfGumBgwJB
 QI6sCGBKiut7F6PXTScFF8Y0dqSP9ytpDqxqm0N/JaIIaPX//2Fwky6XJ8k9xTFOwOz+
 RSiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nMqfVyipjR7e5oCB2deax4eB9IKIFD13I8Yj3mQcxmI=;
 b=lkn5JtdkGB/BVgXnRLtLrSLr/BW7XDVWLZ3kCDKgXzxix0/zp8Zzc7Bcmc7ZRWsC/+
 pRkHp85yHujfvU6nYMLO0OUUb9fDluYiekUoZwKAlXtunvt2vkmA9kHPHwGHT4oLmcDz
 4VesdnhVZNZw9fvF+qM3pr9UrAkukrZyDnNOiFd05k2VxoRT9IAmTeS/W+O7a/UKReiD
 LnXUhTQS8cPc96fsG59Nz7VBmTOMOr+rZNyRETplfHWdM9sT0CSN2wDWrukOyI76pRkH
 VU2jZlUyHX0XvmxFoc45IkdhsR2zOCE/D4AlVGgHrlbdzTeZ0K7N8hvUmOy6YapyYG8L
 w+WA==
X-Gm-Message-State: APjAAAXHd2dKO8oGHyWzTpKNnvZtDFpkn4CBiNEDD9uMVDVvmTKVqbmk
 cA6H/FW2mf90b7I2clVAmWNerH/LtFQ=
X-Google-Smtp-Source: APXvYqzFWNET5K0T8gbuDE/oTuw8Sn+fDXYMoe1MNjW1RsAJc/cm4TO2peykGgeX/qRJtrL4NoqYGA==
X-Received: by 2002:a17:902:4222:: with SMTP id
 g31mr55845113pld.41.1564728165878; 
 Thu, 01 Aug 2019 23:42:45 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id v138sm84934268pfc.15.2019.08.01.23.42.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 23:42:45 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 9/9] staging: rtl8712: r8712_aes_decrypt(): Change return type
Date: Fri,  2 Aug 2019 12:12:12 +0530
Message-Id: <20190802064212.30476-9-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190802064212.30476-1-nishkadg.linux@gmail.com>
References: <20190802064212.30476-1-nishkadg.linux@gmail.com>
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

Change return type of r8712_aes_decrypt from u8 to void as its return
value is never checked. Modify return statements accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_security.c | 7 ++-----
 drivers/staging/rtl8712/rtl871x_security.h | 2 +-
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
index bf55a697dd5f..73e3d5ef3af2 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -1341,7 +1341,7 @@ static void aes_decipher(u8 *key, uint hdrlen,
 	/* compare the mic */
 }
 
-u32 r8712_aes_decrypt(struct _adapter *padapter, u8 *precvframe)
+void r8712_aes_decrypt(struct _adapter *padapter, u8 *precvframe)
 {	/* exclude ICV */
 	/* Intermediate Buffers */
 	sint		length;
@@ -1364,7 +1364,7 @@ u32 r8712_aes_decrypt(struct _adapter *padapter, u8 *precvframe)
 				prwskey = &psecuritypriv->XGrpKey[
 					  ((idx >> 6) & 0x3) - 1].skey[0];
 				if (!psecuritypriv->binstallGrpkey)
-					return _FAIL;
+					return;
 
 			} else {
 				prwskey = &stainfo->x_UncstKey.skey[0];
@@ -1374,11 +1374,8 @@ u32 r8712_aes_decrypt(struct _adapter *padapter, u8 *precvframe)
 				 prxattrib->iv_len;
 			aes_decipher(prwskey, prxattrib->hdrlen, pframe,
 				     length);
-		} else {
-			return _FAIL;
 		}
 	}
-	return _SUCCESS;
 }
 
 void r8712_use_tkipkey_handler(struct timer_list *t)
diff --git a/drivers/staging/rtl8712/rtl871x_security.h b/drivers/staging/rtl8712/rtl871x_security.h
index 25220afa61e9..b2dda16cbd0a 100644
--- a/drivers/staging/rtl8712/rtl871x_security.h
+++ b/drivers/staging/rtl8712/rtl871x_security.h
@@ -209,7 +209,7 @@ void r8712_secgetmic(struct mic_data *pmicdata, u8 *dst);
 u32 r8712_aes_encrypt(struct _adapter *padapter, u8 *pxmitframe);
 u32 r8712_tkip_encrypt(struct _adapter *padapter, u8 *pxmitframe);
 void r8712_wep_encrypt(struct _adapter *padapter, u8  *pxmitframe);
-u32 r8712_aes_decrypt(struct _adapter *padapter, u8  *precvframe);
+void r8712_aes_decrypt(struct _adapter *padapter, u8  *precvframe);
 void r8712_tkip_decrypt(struct _adapter *padapter, u8  *precvframe);
 void r8712_wep_decrypt(struct _adapter *padapter, u8  *precvframe);
 void r8712_use_tkipkey_handler(struct timer_list *t);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
