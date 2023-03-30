Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 422766D0521
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Mar 2023 14:44:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BD3B42016;
	Thu, 30 Mar 2023 12:44:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BD3B42016
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id McowHC6BjDkY; Thu, 30 Mar 2023 12:44:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F57E41F97;
	Thu, 30 Mar 2023 12:44:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F57E41F97
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 530771BF4DA
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 12:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2BBE960BCE
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 12:44:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BBE960BCE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lwaMVJdTwq6O
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 12:44:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90E8560BCB
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 90E8560BCB
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 12:44:40 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id z19so17958251plo.2
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 05:44:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680180279;
 h=content-disposition:mime-version:message-id:subject:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bJN/Czq4gYPwe47Url11H0QkQkrvpH2S48xhzpmgh0M=;
 b=TXvcdGLE7180JkRPPb4/VYVj7J+OprmT+GNcnzlfFPxziP3moBzcJcKX2L7ywkrD3p
 /yTHJHYL+v0C6eZbUNDGTpKjmhNK5p8wEkU5INN8tLwGAkGrznzBUmsa0Kl6A9ZBeGht
 XGGCIEB/ZZ/qABH8Z+XlReMKBVWulf01u0deQTL8u7jdR4vQ3vuliwkLB+f5V/myT76E
 B3BzrLpJq4UCpdl+F/Waw+WaEPbWieEW1GaYeq8aFbaejQYbp3294LFecK8HA/v6A81x
 lJrqUEYYcHNTIui60CURz/J7eLbTG2qEss5dVh/B3vUiBlUmlaac6tPuiEWJDvnj2kyE
 enGg==
X-Gm-Message-State: AAQBX9cWn9sgo+yVDDZSx4PWczj1MU/vrR2CfO3aw2D80upKqMBL/upK
 qBdOOBeuB7VDely7a8/KGff7oX1OkUc95m+4
X-Google-Smtp-Source: AKy350bNVzDzsIHREfK/YfG42x10isYhyaN4ls1usD7rcr0b9VfFVeS9y/mCLbOmrUi/GbjY1WYWJA==
X-Received: by 2002:a17:90a:86c3:b0:231:248c:6ac4 with SMTP id
 y3-20020a17090a86c300b00231248c6ac4mr25441511pjv.7.1680180279387; 
 Thu, 30 Mar 2023 05:44:39 -0700 (PDT)
Received: from joel-ubuntu-desktop ([2407:4d00:2c02:823f:14a7:49e0:2d87:e0ad])
 by smtp.gmail.com with ESMTPSA id
 c3-20020a17090ad90300b002405499b729sm3158613pjv.38.2023.03.30.05.44.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Mar 2023 05:44:38 -0700 (PDT)
Received: by joel-ubuntu-desktop (sSMTP sendmail emulation);
 Thu, 30 Mar 2023 20:44:35 +0800
Date: Thu, 30 Mar 2023 20:44:35 +0800
From: Joel Camilo Chang Gonzalez <jcchangg3@gmail.com>
To: driverdev-devel@linuxdriverproject.org, linux-staging@lists.linux.dev,
 gregkh@linuxfoundation.org
Subject: [PATCH] staging: ks7010: remove unnecesary parentheses
Message-ID: <ZCWEM7DCDUEOzBe9@joel-ubuntu-desktop>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680180279;
 h=content-disposition:mime-version:message-id:subject:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=bJN/Czq4gYPwe47Url11H0QkQkrvpH2S48xhzpmgh0M=;
 b=oy5EPRj7onZ8lPl0E69pmc+/2Uz97BuS1LCeUF7gZ1LO/8fpZHrSwz16g8MGaTDpSj
 Dl56Ra9ROguJqNVmAjQDe6O9zjnbwmbX/A3QG8rDtarWRjxfS0qqaoNYOEoB4zdBsDN/
 FijyOjXyNP54KM80KU8bqYmLUiYrdUGCCopX0LQQwTJD0/lqHM0SlHqOkFk+1GfeUPyr
 ftywNTHAHXUwTFAeGFEzjYyUri0ztYctsl3QnUUA0M961JvK3DMK9WraBz1LDS+gWZ0d
 UiX3JHRkLCiLBjQO1yt9Z+16WAEkZn8L3C9CFKA/gcEmlTDdsWrYgI/wz2xmf+jgJ+Jl
 eRbg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=oy5EPRj7
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

Remove parentheses not needed in if statement

Signed-off-by: Joel Camilo Chang Gonzalez <jcchangg3@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index af3825578d85..8bded7e88ce7 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -129,7 +129,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info *ap_info)
 	size = (ap_info->rsn.size <= RSN_IE_BODY_MAX) ?
 		ap_info->rsn.size : RSN_IE_BODY_MAX;
 	if ((ap_info->rsn_mode & RSN_MODE_WPA2) &&
-	    (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2)) {
+	    priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) {
 		ap->rsn_ie.id = RSN_INFO_ELEM_ID;
 		ap->rsn_ie.size = size;
 		memcpy(ap->rsn_ie.body, ap_info->rsn.body, size);
-- 
2.37.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
