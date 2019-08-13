Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D78808AE05
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2019 06:47:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7978486C11;
	Tue, 13 Aug 2019 04:46:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 26H12JKUXGnI; Tue, 13 Aug 2019 04:46:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 26E9186C4D;
	Tue, 13 Aug 2019 04:46:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F16761BF369
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 04:46:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EEAA087880
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 04:46:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GsZm1KI0Toqu for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 04:46:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7934187522
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 04:46:54 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id t14so48730670plr.11
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 21:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bnujz0g3GDWZ2GThAeJ2BM9VllXCdQqZt+VNl22+obU=;
 b=uyrS8Y4gweBcVDQxCOno3trR+vYYIq/redVmrwiADIj9GzperYbMdIY79WAKiUuTJ+
 TBiX1jd6TuTRN0zp70phjDqRD8iKUcuu/MOTTHjH/AvhBkUbLh6wcA4Dkc7hFgSoAga1
 oHoKGz81RCv+057l5oW/JltyWdH4k0N+s4Q9aDkKcdPQ91ArGl3L03FCGxkLM7ZjDiEx
 0aJlh2TAXadqo9kK9l6iFroAMiXiXWdm9tKmcf/D35xHNm2LrQjWk/9Q3DE5Xxpemgto
 kNDkI00faWoTjwyd9Akfpd8sQYoAIVYWPOhBTXlH2Ossp6sq3N8PrZTSG1X24/eerrir
 T/uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bnujz0g3GDWZ2GThAeJ2BM9VllXCdQqZt+VNl22+obU=;
 b=h+IwUfUYCxyw4VKu23AzCqh4aYciS67pdjHU5o7fZu1SDUL9+pY/JZ0o2Ry9iE+Vf5
 yy7jd+Y0SVCv9rtperulFXY25lT4gwJn3ZsziQIRZO+ajX0VyVufpeWaJCTWzRSFRDfO
 VegQnOmdxwmD4M+LX4KvAl7Z7PMlMmwPc4ZwVLdXN90pbLdWvJZE3fU8Ng8F/zoiPz4U
 UM1mVtytSsx7+Uwnz6lmL1Wi/pRfIqOhwHsxYlsZ/QPLBBsfbhUE3RMI/hQkW4+o9ESZ
 bZPsBxxEfQlN+bz2/JVh/tHDZF9BZSGrrYkXJ9Gq1wmNvl9emU5/Nu79APP2aJsQGjt7
 RI+w==
X-Gm-Message-State: APjAAAUCWHiKMhzRD4SCGe9nfBFr8aME5thkCVkezNY72kEDGFFiCNLz
 qVhKa+E6eAp3FrqMuRFDLQZkspcN
X-Google-Smtp-Source: APXvYqyvTI0leNpR/SAByya0x3d21I5PGUIQKc/qsyMTeLEdxkoikOEq0yyGOuODJ/tWtxMAh9s4aw==
X-Received: by 2002:a17:902:bf07:: with SMTP id
 bi7mr36794587plb.167.1565671614222; 
 Mon, 12 Aug 2019 21:46:54 -0700 (PDT)
Received: from localhost.localdomain ([122.163.110.75])
 by smtp.gmail.com with ESMTPSA id t7sm246135pgp.68.2019.08.12.21.46.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 21:46:53 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH RESEND 1/4] staging: rtl8712: xmitframe_addmic(): Change
 return values and type
Date: Tue, 13 Aug 2019 10:16:35 +0530
Message-Id: <20190813044638.16348-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Change return values of xmitframe_addmic from _SUCCESS and _FAIL to 0
and -ENOMEM respectively. Modify call sites to check for non-zero values
instead of _FAIL.
Also change return type from sint to int.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_xmit.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 178f8b96943b..cc5809e49e35 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -342,8 +342,8 @@ int r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 	return 0;
 }
 
-static sint xmitframe_addmic(struct _adapter *padapter,
-			     struct xmit_frame *pxmitframe)
+static int xmitframe_addmic(struct _adapter *padapter,
+			    struct xmit_frame *pxmitframe)
 {
 	u32	curfragnum, length;
 	u8	*pframe, *payload, mic[8];
@@ -372,7 +372,7 @@ static sint xmitframe_addmic(struct _adapter *padapter,
 				if (!memcmp(psecuritypriv->XGrptxmickey
 				   [psecuritypriv->XGrpKeyid].skey,
 				   null_key, 16))
-					return _FAIL;
+					return -ENOMEM;
 				/*start to calculate the mic code*/
 				r8712_secmicsetkey(&micdata,
 					 psecuritypriv->
@@ -381,7 +381,7 @@ static sint xmitframe_addmic(struct _adapter *padapter,
 			} else {
 				if (!memcmp(&stainfo->tkiptxmickey.skey[0],
 					    null_key, 16))
-					return _FAIL;
+					return -ENOMEM;
 				/* start to calculate the mic code */
 				r8712_secmicsetkey(&micdata,
 					     &stainfo->tkiptxmickey.skey[0]);
@@ -442,7 +442,7 @@ static sint xmitframe_addmic(struct _adapter *padapter,
 			payload = payload - pattrib->last_txcmdsz + 8;
 		}
 	}
-	return _SUCCESS;
+	return 0;
 }
 
 static sint xmitframe_swencrypt(struct _adapter *padapter,
@@ -696,7 +696,7 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 		memcpy(mem_start, pbuf_start + TXDESC_OFFSET, pattrib->hdrlen);
 	}
 
-	if (xmitframe_addmic(padapter, pxmitframe) == _FAIL)
+	if (xmitframe_addmic(padapter, pxmitframe))
 		return _FAIL;
 	xmitframe_swencrypt(padapter, pxmitframe);
 	return _SUCCESS;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
