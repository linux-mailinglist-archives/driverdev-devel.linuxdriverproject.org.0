Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F9933C3A9
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:11:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E46983486;
	Mon, 15 Mar 2021 17:11:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AC0VegtoyTI3; Mon, 15 Mar 2021 17:11:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 953D382C99;
	Mon, 15 Mar 2021 17:11:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3D30D1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 26DB36F580
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2B01uhgDLGLF for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C65F6F52F
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:31 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id p7so56191165eju.6
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=6JkVrbiXo3z2y1c7YECfEtd0+4UpFnk7sQpNCHO8y7A=;
 b=pSl8Xaa9vgR4iIPRoMWdhzwUDOYx19yGaYEZ1eOaKmJr/sLacleXJiEgpKNEJcC3tR
 g5oPqTYr65mIlbQfnOQ6jrvOuFgDAGAz2Rv0P3ZtSF72ZLygaxCPT7wDkdDVodQnuEyk
 DXntTXNbNz8doiUap1KUPenFK2eKnfMY5N3h4u06Ro8y4FWydf6oBM7vr4uS1+v+zDsX
 ShDwkhsJNrRH0mdo7xZuyMDZITWPcwPNPE0IxM4GMgfUeT7vYiV6y1DhDqJYxpU+Ji3i
 yunXeOMHUt74y09zFsXEllIPUlfb+H/9/oJtnDcJpOZO04VXWTw2EoeaZCvZJbc1PVuo
 H7IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6JkVrbiXo3z2y1c7YECfEtd0+4UpFnk7sQpNCHO8y7A=;
 b=DHPr+I2AefTp+FyC02WU0pZPXlN4qplVuD8BhzH8WvCKYuPXLlOv2+cxsdjfua0loI
 NM+urYtEhNfK0N72L+ugQs1a6zUnkSu2gnts6tzrVxpL73lzYY9/L0JnFZz+vHVKfw+t
 G3N83A3Y7UJ2wSSnFdByJHs9Jmqrr+U3/gc8kZCJ+8ROkrw+/TDqZMXGc4Fh3dXse80w
 fPw98X2mPDh/TW72weXa3gWPN3dSVTxnAkeIhjkpX2yXqaZ6ZC69+eTMsZdFXPBkxch5
 BaQ/q/6mMNcUYeXXy+yNqys032+llPF0qhcczZl274bCCNoCqP0nO9JnqaVNkeLgPqVn
 ogkw==
X-Gm-Message-State: AOAM5306/JLnLPQlhOjJxxzTrmrDSYnmBWChZcmw+LEmvcJI0sJLy0+r
 2zc/axnmVZPWTjfqqLngLWE=
X-Google-Smtp-Source: ABdhPJzt3NCG2UVvAayyJ1po+XjntNGNH5TYmjBObwFQZLhzpHcudS4xeNhaLFdoWetuvUBqjKw+/Q==
X-Received: by 2002:a17:906:d0c3:: with SMTP id
 bq3mr24295556ejb.424.1615827989539; 
 Mon, 15 Mar 2021 10:06:29 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:29 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 26/57] Staging: rtl8723bs: fix spaces in odm_EdcaTurboCheck.c
Date: Mon, 15 Mar 2021 18:05:47 +0100
Message-Id: <20210315170618.2566-27-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #34: FILE: ./hal/odm_EdcaTurboCheck.c:34:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo *		bar" should be "foo *bar"
    #61: FILE: ./hal/odm_EdcaTurboCheck.c:61:
    +	struct DM_ODM_T *		pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #76: FILE: ./hal/odm_EdcaTurboCheck.c:76:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c b/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c
index 61c447b00ff7..95fbb91aeb7d 100644
--- a/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c
+++ b/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c
@@ -31,7 +31,7 @@ static u32 edca_setting_DL[HT_IOT_PEER_MAX] = {
 
 void ODM_EdcaTurboInit(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	struct adapter *Adapter = pDM_Odm->Adapter;
 
 	pDM_Odm->DM_EDCA_Table.bCurrentTurboEDCA = false;
@@ -58,7 +58,7 @@ void odm_EdcaTurboCheck(void *pDM_VOID)
 	 *  operate at the same time. In stage2/3, we need to prove universal
 	 *  interface and merge all HW dynamic mechanism.
 	 */
-	struct DM_ODM_T *		pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD,
 		     ("odm_EdcaTurboCheck ========================>\n"));
@@ -73,7 +73,7 @@ void odm_EdcaTurboCheck(void *pDM_VOID)
 
 void odm_EdcaTurboCheckCE(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	struct dvobj_priv *pdvobjpriv = adapter_to_dvobj(Adapter);
 	struct recv_priv *precvpriv = &(Adapter->recvpriv);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
