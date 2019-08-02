Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85301801B4
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 22:23:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B8D4D86C20;
	Fri,  2 Aug 2019 20:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eXfaR9wev8r5; Fri,  2 Aug 2019 20:23:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9634986BA3;
	Fri,  2 Aug 2019 20:23:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B6E71BF3D4
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 20:23:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 08ACD204AF
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 20:23:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ASlvDHvvdymh for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 20:23:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 7F2EE2035B
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 20:23:36 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id d23so75277579qto.2
 for <devel@driverdev.osuosl.org>; Fri, 02 Aug 2019 13:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7b+QpyZJy6WVG+CsDdFzQqS3UP4BUviIhmtTS57SLxI=;
 b=Efl24pIIAWTWx/nSPf8qxs1ZdBAjZceq8NkYlGnae0RIl+ZKMw339lWIdlkxxn4PD8
 LLQuPj9yp5pqYUC5/1w7dIDh7FbAFJEqm1vWWNN1my3zWreokDhXB8eTJ6WWbz6sdT5a
 7EjatRff4kM50cooNbVjk13Ru0PTpDhOOmj5vN1s1TUR41Yv4NSwps4icALMfgXhx6ci
 dp7aczZfvp+7Rhiwjsiz7sfvjSHexhT5mfldf1gVYbIpwqzlWIHCFojSR3y+OoVjudW/
 uRgR8KlY0316lBONQG0moGnOy/hglJXHhhgYHwl5PvDId86NwAfEuJ4ZEwc1WEroiXQx
 CKWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7b+QpyZJy6WVG+CsDdFzQqS3UP4BUviIhmtTS57SLxI=;
 b=cpBl7SNzmGL0cZ/Al5Jb5NCQ5CkdTJUSISmPjlb3cxPLeRzsOneKpi8+94EOd/IAXk
 PCjv5R5mbPj20Qky1Srw9MoEGW9Yd0GIeMcsrJhPNdId2tywKW/IQB966ceRUR+95HcM
 7oZlMZ/GetVDAtXf0Lu1A1f7MTWPGVTSeXQZqBRsDnyMeXUGJluUb8gYB42TFTjC8lY8
 +cEak1eZGKEyXxZ4SCyKEuJ+SvBqiiUbhyN2ME6i9j1box4y/7tIHcbuj69HdAlTg+qB
 /2Mp516m6zFUl9lE5TW7eCB9MfquyvK8fbvpD+hY9gt9OQwnOBVMc/3VDGuHNPLa0fvi
 1wPA==
X-Gm-Message-State: APjAAAU1F2DZLQLxLVgS5v2OLMNF7xaguFo2cgFF6JgFFxcVizxePBPP
 cgApbZ1CNXqnd5o6SipaHxU=
X-Google-Smtp-Source: APXvYqxng4ujPdMSOl8LXJMqkhOtwXaWv/1GkHPTS6Mif0yJO/ekUiIXcAXJ4oiId/EKiwuZviAUGw==
X-Received: by 2002:aed:3f29:: with SMTP id p38mr95861962qtf.126.1564777415353; 
 Fri, 02 Aug 2019 13:23:35 -0700 (PDT)
Received: from 541fc7a84f4a.ime.usp.br ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id y9sm32294338qki.116.2019.08.02.13.23.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 13:23:34 -0700 (PDT)
From: Thiago Bonotto <thbonotto@gmail.com>
To: Karsten Keil <isdn@linux-pingi.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, netdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH] staging: isdn: remove unnecessary parentheses
Date: Fri,  2 Aug 2019 20:23:23 +0000
Message-Id: <20190802202323.27117-1-thbonotto@gmail.com>
X-Mailer: git-send-email 2.20.1
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

Fix the following checkpatch error:

ERROR: return is not a function, parentheses are not required
FILE: drivers/staging/isdn/hysdn/hysdn_net.c:289:
+        return (0);                /* and return success */

Signed-off-by: Thiago Bonotto <thbonotto@gmail.com>
---
Hello, this is my first contribution :)
Thanks for reviewing 

 drivers/staging/isdn/hysdn/hysdn_net.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/isdn/hysdn/hysdn_net.c b/drivers/staging/isdn/hysdn/hysdn_net.c
index bea37ae30..dcb9ef7a2 100644
--- a/drivers/staging/isdn/hysdn/hysdn_net.c
+++ b/drivers/staging/isdn/hysdn/hysdn_net.c
@@ -286,7 +286,7 @@ hysdn_net_create(hysdn_card *card)
 
 	if (card->debug_flags & LOG_NET_INIT)
 		hysdn_addlog(card, "network device created");
-	return (0);		/* and return success */
+	return 0;		/* and return success */
 }				/* hysdn_net_create */
 
 /***************************************************************************/
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
