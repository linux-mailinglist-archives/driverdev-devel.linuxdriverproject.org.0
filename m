Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55631338748
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:27:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCE0584535;
	Fri, 12 Mar 2021 08:27:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J8aZLX_KMQuj; Fri, 12 Mar 2021 08:27:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F5A7844F8;
	Fri, 12 Mar 2021 08:27:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AEBB41C1135
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9CE934ED4F
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xpmMIWdpN4Dp for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:26:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8D1304ED4D
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:26:52 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id d191so3241555wmd.2
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=b832WafzSEcwwqXWKRxb+oX5tNIYRqZAPEYJB2dLJx8=;
 b=fc33BaxS1CGu74GDFCXDGxu5G8WHArdq17V7RXFCwGcWwAaNwdOjbhNaF+oNgHRIDp
 DUa06/lufStABDt4PxsfbIdHSjpcu4NmxRuZNC1Jmo+cLO+g021m6NceGPLAv9tNUWF5
 QweTij83kdb1dHiuhph8PGxbPc05Kx4oOMZKx8hKMwNpwsRFu4rzyd5TKxN7+tnuns4f
 Ualf8dDDlZ8WVQlg+NhfOhjKBlhh7TitMrBLNbI/2qL0OcNiQICuxRTURTWQdFKDiJgU
 RXFojm78Rg7kcCXJKHADseqbZ2fMMaLjeCBMfcth8R5h24uOUv5eplInJTkpP9NTCGOn
 qrIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b832WafzSEcwwqXWKRxb+oX5tNIYRqZAPEYJB2dLJx8=;
 b=Z0G0yWlawnMdmfHFbUd0CspiIg37Cd5a7Px1cxAuimxYFUZs9Zg/lnruioObLthoD+
 kvzHBoFIJIHqmDXnlWm0+aPAxMSzi5/zLJiaD2EO+X8z9Mcc8TM1y4+hbuJfxeQzfowZ
 /G/2DX3tVqCZ4H5iJhKn/2Djw4tZoP3Y5ByJkcsZeAzdsg+JBQNV0YhBNepvcEn1a3Id
 cBDB/+11+W8z8zXvFIgbZvNSyMtrATv/M3Y1KMskdxHNk497qj/zp0E5ebxMjmlvIiHr
 Sry2b/X0ob3998P3dct3leMkPbZrwTMN9i/1JewjELnBS2CW6sBJLnIUxUP4f7ElBYGC
 KShA==
X-Gm-Message-State: AOAM530QYVJnS+5/OcHqN74scRLv5lpcV6UiRga8yg0jGDthA5qFj9So
 +OkmP7lIpJ6j7W1XYIsWTeY=
X-Google-Smtp-Source: ABdhPJyaaAf6KSlwicePjn8YnhPJPHZUadKnWwgbXFwKHFiSJW8DKIw8nJCFXrwVlAD1WrQ8Z4h27w==
X-Received: by 2002:a05:600c:2254:: with SMTP id
 a20mr12379591wmm.115.1615537610598; 
 Fri, 12 Mar 2021 00:26:50 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:50 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 06/33] staging: rtl8723bs: remove typedefs in odm_interface.h
Date: Fri, 12 Mar 2021 09:26:11 +0100
Message-Id: <20210312082638.25512-7-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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

This commit fixes the following checkpatch.pl warning:

    WARNING: do not add new typedefs
    #42: FILE: hal/odm_interface.h:42:
    +typedef enum _ODM_H2C_CMD {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_interface.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_interface.h b/drivers/staging/rtl8723bs/hal/odm_interface.h
index 63f374f0bda7..b129eb81bca0 100644
--- a/drivers/staging/rtl8723bs/hal/odm_interface.h
+++ b/drivers/staging/rtl8723bs/hal/odm_interface.h
@@ -39,13 +39,13 @@ ODM_REG(DIG, _pDM_Odm)
 #define ODM_REG(_name, _pDM_Odm)	_cat(_name, _pDM_Odm->SupportICType, _reg)
 #define ODM_BIT(_name, _pDM_Odm)	_cat(_name, _pDM_Odm->SupportICType, _bit)
 
-typedef enum _ODM_H2C_CMD {
+enum ODM_H2C_CMD {
 	ODM_H2C_RSSI_REPORT = 0,
 	ODM_H2C_PSD_RESULT = 1,
 	ODM_H2C_PathDiv = 2,
 	ODM_H2C_WIFI_CALIBRATION = 3,
 	ODM_MAX_H2CCMD
-} ODM_H2C_CMD;
+};
 
 
 #endif	/*  __ODM_INTERFACE_H__ */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
