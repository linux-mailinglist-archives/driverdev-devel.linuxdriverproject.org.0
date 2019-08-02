Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B34137ECD1
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:42:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F1BE723235;
	Fri,  2 Aug 2019 06:42:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YhQm8U+Saxrv; Fri,  2 Aug 2019 06:42:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B716523119;
	Fri,  2 Aug 2019 06:42:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A97A21BF27A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A680088446
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S+OnGNi6LPae for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:42:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 52AD388442
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:42:38 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id t132so35553495pgb.9
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 23:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JRa6p/FiSUcq39Il9VOjeI7ZcwtscGt2EG4ukZQZjOE=;
 b=qYrCqycbSmsJ1V+K5c2G+wEsE3gtklEcB0YyHjCmnQn5/TJzlG48UD5SL9R41MTsxA
 ssUikXMffPfjmv5HQwNah42kZFk6lqo6f9wbdPa/dsWK2lSkpl3jwFncEzGNnDM0ns8T
 TUm2TleU7CZjW/coe0Sf1Wp59kXLlce161yqFVuE362gkceh3yGn477R9ZKee0cDg7Bi
 rZ/702GWv4m6CKMsptiTLX7ynQwqdMe+PvyehYH+mbmk/zu3dFV4V+cwHtf6Z1l8V2Bg
 +lP0hzOQYWFoi18O5yrWzDhtQ2ZXQc1GkpJa/tVrJ7fI8NA5eClDJMl9W1rXvMdgHaof
 SMAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JRa6p/FiSUcq39Il9VOjeI7ZcwtscGt2EG4ukZQZjOE=;
 b=UvLawk6lzbSiWTD5kGeWdW/x1Hj2Zd6n5MauX36xx2m6HVTa55Y6Li1QRSojuYhg01
 4odugj4ivmuP25DwupPl4j9QLww7HJPUq5A021OmF3Q2Y3jv5kSbh5eWsDmvrehWZUSn
 ztyk+cB7W56KWAlntREl0oxakblQ+VsQfiMAxvvBrYwGzx9pHCfv7ZLCqSUwpf2khZNK
 pu2mlro3q0i2QnJBlDS9lONNsfPoimS8uw44vsWzdD3MDNkLuzgxtpxXGLb9e4AIrL3I
 /ZuswT/+/IKHrB/TPMzuyZaslYNQuuk0Ev4xc1AVZXa4PPBEUlQbljq23FgXvmsMX1h6
 zA8Q==
X-Gm-Message-State: APjAAAVECGqTBmbU/fcIzEdkS4BK1kEk9HRdRYEjLyhe92LTBjMGPoO1
 VoefjLn5UJilrVFP+JPBMCw=
X-Google-Smtp-Source: APXvYqwQfwcsG5N0mxnRxRfhncbuoWYuPMuqj3o2FDLw/zeob7z4De6z+8ibCqFw7Gn0G3CNUWVm3Q==
X-Received: by 2002:a62:cf07:: with SMTP id b7mr58237390pfg.217.1564728158046; 
 Thu, 01 Aug 2019 23:42:38 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id v138sm84934268pfc.15.2019.08.01.23.42.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 23:42:37 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 6/9] staging: rtl8712: r8712_tkip_decrypt(): Change return type
Date: Fri,  2 Aug 2019 12:12:09 +0530
Message-Id: <20190802064212.30476-6-nishkadg.linux@gmail.com>
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

Change return type of r8712_tkip_decrypt from u8 to void as the
return value is never used. Modify or remove return statements
accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_security.c | 12 ++----------
 drivers/staging/rtl8712/rtl871x_security.h |  2 +-
 2 files changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
index 693008bba83e..66586a9d9f73 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -636,7 +636,7 @@ u32 r8712_tkip_encrypt(struct _adapter *padapter, u8 *pxmitframe)
 }
 
 /* The hlen doesn't include the IV */
-u32 r8712_tkip_decrypt(struct _adapter *padapter, u8 *precvframe)
+void r8712_tkip_decrypt(struct _adapter *padapter, u8 *precvframe)
 {	/* exclude ICV */
 	u16 pnl;
 	u32 pnh;
@@ -670,7 +670,7 @@ u32 r8712_tkip_decrypt(struct _adapter *padapter, u8 *precvframe)
 				prwskey = &psecuritypriv->XGrpKey[
 					 ((idx >> 6) & 0x3) - 1].skey[0];
 				if (!psecuritypriv->binstallGrpkey)
-					return _FAIL;
+					return;
 			} else {
 				prwskey = &stainfo->x_UncstKey.skey[0];
 			}
@@ -686,16 +686,8 @@ u32 r8712_tkip_decrypt(struct _adapter *padapter, u8 *precvframe)
 			arcfour_encrypt(&mycontext, payload, payload, length);
 			*((__le32 *)crc) = cpu_to_le32(getcrc32(payload,
 					length - 4));
-			if (crc[3] != payload[length - 1] ||
-			    crc[2] != payload[length - 2] ||
-			    crc[1] != payload[length - 3] ||
-			    crc[0] != payload[length - 4])
-				return _FAIL;
-		} else {
-			return _FAIL;
 		}
 	}
-	return _SUCCESS;
 }
 
 /* 3 =====AES related===== */
diff --git a/drivers/staging/rtl8712/rtl871x_security.h b/drivers/staging/rtl8712/rtl871x_security.h
index 25b4d379766d..25220afa61e9 100644
--- a/drivers/staging/rtl8712/rtl871x_security.h
+++ b/drivers/staging/rtl8712/rtl871x_security.h
@@ -210,7 +210,7 @@ u32 r8712_aes_encrypt(struct _adapter *padapter, u8 *pxmitframe);
 u32 r8712_tkip_encrypt(struct _adapter *padapter, u8 *pxmitframe);
 void r8712_wep_encrypt(struct _adapter *padapter, u8  *pxmitframe);
 u32 r8712_aes_decrypt(struct _adapter *padapter, u8  *precvframe);
-u32 r8712_tkip_decrypt(struct _adapter *padapter, u8  *precvframe);
+void r8712_tkip_decrypt(struct _adapter *padapter, u8  *precvframe);
 void r8712_wep_decrypt(struct _adapter *padapter, u8  *precvframe);
 void r8712_use_tkipkey_handler(struct timer_list *t);
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
