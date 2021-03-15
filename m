Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5285A33C3B0
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:11:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F28286F504;
	Mon, 15 Mar 2021 17:11:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ey1wWT8BjWTK; Mon, 15 Mar 2021 17:11:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40EE86F478;
	Mon, 15 Mar 2021 17:11:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 444E91BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 415A283486
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O7mE9zoXQbWi for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 87FCD83478
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:34 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id ci14so67357868ejc.7
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=HDGi5w4gMSiFl+h4d+C48ZdtrVzVuyqFEaXkved6h+c=;
 b=hEOZ1ZHfu8SoT5rcjhSeQEoKW2sQ8X86eAYjJDZxfyUwbwqfvRD/uXv9wM/B8ouDNd
 YG/w/FB5NsWT96QbPg5PpW3Ln0qzqSkw0IoGC7VPLyEbcibewKaBIsuFox0AbklmC9Qv
 bfAsh0PfHFo0nwCS3O/eebVzOgh/iZ6Xra+ak7pnJSQvZs2KDkSX8+W+b6f9Mhg6NlO5
 T+d/BN67UNcuV5yCcgLYpzLHCFKPUIrDzIltpKup/47VEHln1AaYLgJXbfGi5//dLim0
 ZAlcx94WxZEBv85fPPaNy/oUjT3N7uBe4AxXZ1FJD2n3LAWcu8SMwzlqTcOYaaOvI0pw
 ry5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HDGi5w4gMSiFl+h4d+C48ZdtrVzVuyqFEaXkved6h+c=;
 b=lVkqhPOrNXU+LcCahNobXDEv+9VcKgf/RO6pIJY0WmAaZDKsFZLY3OkhlWN8Ta1bAs
 L2F4IgAcGktpYk/XrNo8oLxNUZlHKJBv9rp7S182NbR2+ob3bC1Fw6BeUZUacPbbtQVq
 r9UUfZHAveiGTTjS3kw1x22Y8y+ks+T4Lrat8PuP02828I8HjbcXEIc7B2qEWzCvs3hP
 XwPFbQUO745S6JEGgZPDEfYoCdARLNE9v/MvPk6egU9J0HQR8ALefIV5snw0JWOnlHnC
 qlu7n6BD5+tw6i9DBUdScYVPDYGXXsBFXJkFbGmvHsq/welSMUvYgC/B1R5KZyJo5K2/
 vJhw==
X-Gm-Message-State: AOAM532AAc7pW2xsizL+yavHEQr0ttD/zbEh04q+8sW0D9JC2kjseo6o
 GOWkT7xWeKSS2j0xHacDPQUFAqFohfw=
X-Google-Smtp-Source: ABdhPJygDrpbj7zEt+uHNraln5sBmpnWC02meYrPP1efsuSUHWM4cyJPz4L6ZrtFP07HYEOmodAhfg==
X-Received: by 2002:a17:906:144d:: with SMTP id
 q13mr23804887ejc.458.1615827992829; 
 Mon, 15 Mar 2021 10:06:32 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:32 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 30/57] Staging: rtl8723bs: fix spaces in odm_PathDiv.c
Date: Mon, 15 Mar 2021 18:05:51 +0100
Message-Id: <20210315170618.2566-31-marcocesati@gmail.com>
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
    #12: FILE: ./hal/odm_PathDiv.c:12:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #25: FILE: ./hal/odm_PathDiv.c:25:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_PathDiv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_PathDiv.c b/drivers/staging/rtl8723bs/hal/odm_PathDiv.c
index e04676533815..eeb8c87f2612 100644
--- a/drivers/staging/rtl8723bs/hal/odm_PathDiv.c
+++ b/drivers/staging/rtl8723bs/hal/odm_PathDiv.c
@@ -9,7 +9,7 @@
 
 void odm_PathDiversityInit(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	if (!(pDM_Odm->SupportAbility & ODM_BB_PATH_DIV))
 		ODM_RT_TRACE(
@@ -22,7 +22,7 @@ void odm_PathDiversityInit(void *pDM_VOID)
 
 void odm_PathDiversity(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	if (!(pDM_Odm->SupportAbility & ODM_BB_PATH_DIV))
 		ODM_RT_TRACE(
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
