Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6CE33FAF4
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:22:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 860D484167;
	Wed, 17 Mar 2021 22:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eZIbaZPwJCwr; Wed, 17 Mar 2021 22:22:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C031084150;
	Wed, 17 Mar 2021 22:22:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 78E061BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 66D1D43096
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9pdLROl4Kjsn for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CBA8043061
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:23 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id t18so815190ejc.13
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Bt8T88pEAVUZxQk85dKeiqXVslcgrOFC2H/olWG1kBE=;
 b=PvIt3ej48ure8i0Y74DgGWjCoH4bXP7JQ5Z8B631yFmW7Cw1OC5UN7d36Thw4T5cBQ
 7SAHlKp7CvUtQthT0l127uNnEpgRo+ou1Zd3O7OW7T8rVHD/CNdbqnPQRKBeUHG/bZmR
 Z+PJVh5GhxmpZGPMUzA7WkGl+HC9GNAgJWRJum+wXEAjxnL9ZUB59RmWWNZ4x/rIefOG
 v0JaB7z9h4sXWftYroV/H4CeiOTMzpo/EveUYM019yQbSf9B4BxTP451kzB1DOhM6Cv1
 zIq7UdozBkYnhQA4CFQgWE7KKEOuln1ysZ5HE4O+KMhsQbBAQU5ab4U0pflJq4OJ5Iso
 e+Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bt8T88pEAVUZxQk85dKeiqXVslcgrOFC2H/olWG1kBE=;
 b=mdY1j7PuVcTHnKQjyTj7FDZCC5RzQXAbea8EpAEPjb11//f2awWCyOF13fSaGRoajD
 rT9ldL1JVl9qBFDqiQyEjccEOC+A+Ax0gRHotNVn0G2Br/ysulMwQFc95h3bVfDCFqyP
 +94cUcAWZeDPt/SHUBz+fD4xrjBHDOacIwUArRVZl4UeFBR7pdYYV4LJDOiDQ19elsT/
 BTUG9DShS8ptorBGY8CbIZ4L6DY+kIqKCglKzn4U3QB6RUsjq0bTtqvGvjGLsP7Yc8oM
 4KfZJs9L8r6aIJH3j3cDGycM0N38bXldXRAuqEZsvZ2JiqXIz19BGWYlDFVeF70fFykr
 X3TQ==
X-Gm-Message-State: AOAM533CF+5JfBpytjTAYWOAdKmueYNCaF6cwDI89LkMYw1KR5olosK0
 tExNhWxdzdBaCeYCP81sAgU=
X-Google-Smtp-Source: ABdhPJyMYCXc/7fj6JwcP5kqibFNefxl1fegh7z4HiwFzWG2HGNlXTpE5T2C4/iuoCrCXbuLQw+J/Q==
X-Received: by 2002:a17:906:b747:: with SMTP id
 fx7mr38631174ejb.474.1616019682141; 
 Wed, 17 Mar 2021 15:21:22 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:21 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 05/43] Staging: rtl8723bs: fix names in rtw_eeprom.h
Date: Wed, 17 Mar 2021 23:20:52 +0100
Message-Id: <20210317222130.29528-6-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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

This commit converts names of structs / enums
in include/rtw_eeprom.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_eeprom.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_eeprom.h b/drivers/staging/rtl8723bs/include/rtw_eeprom.h
index fb619e83217a..da7f14aadaa0 100644
--- a/drivers/staging/rtl8723bs/include/rtw_eeprom.h
+++ b/drivers/staging/rtl8723bs/include/rtw_eeprom.h
@@ -42,7 +42,7 @@
 /*  Besides, CustomerID of registry has precedence of that of EEPROM. */
 /*  defined below. 060703, by rcnjko. */
 /*  */
-enum RT_CUSTOMER_ID {
+enum rt_customer_id {
 	RT_CID_DEFAULT = 0,
 	RT_CID_8187_ALPHA0 = 1,
 	RT_CID_8187_SERCOMM_PS = 2,
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
