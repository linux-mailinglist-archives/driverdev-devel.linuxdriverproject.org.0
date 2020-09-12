Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 885992678EF
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Sep 2020 10:49:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 34E4B87822;
	Sat, 12 Sep 2020 08:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XiXZ0dL5lwH2; Sat, 12 Sep 2020 08:49:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A0C0F87807;
	Sat, 12 Sep 2020 08:49:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E570F1BF393
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 08:49:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DBBE92046D
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 08:49:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RAtLmIfku98E for <devel@linuxdriverproject.org>;
 Sat, 12 Sep 2020 08:49:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by silver.osuosl.org (Postfix) with ESMTPS id F1AA6203F9
 for <devel@driverdev.osuosl.org>; Sat, 12 Sep 2020 08:49:26 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id e23so16597803eja.3
 for <devel@driverdev.osuosl.org>; Sat, 12 Sep 2020 01:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+ljUzMs8hxOXKcFecnEmF5YKOxx89w9DLQIqWCR+XFY=;
 b=DFTo6aEK2WUdfjkVbQRQ3/lSdn+hB1O61rbQcZ3aLxT8v5mTDx2aZh7aRicyojuTEP
 /sl5REGbHoZ1OdHH4RDOfIQ1Tz/ov1JqsA7Z7VpP60k0q6VjjyA+67pxDm/XmVj55JZh
 OxwPOSbq/zCRO9ZRnoa0+jiusn99TRy7NAy9W1/2fM1wQIXA4isyUsiikAhXqke0NB3k
 JY8LF4MLZNcnQHjf0HW36QYPkOo7LqZSC+P+u+t9bD2m2wz8kskLiHr/NjwvFG1glTAs
 JWmfh1l5PoUz/24u4g3Lr2dT3ur39CsDaKxj+7ha5hhiuV+wgWjtQm5Ss8ochZsHZX/E
 /AnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+ljUzMs8hxOXKcFecnEmF5YKOxx89w9DLQIqWCR+XFY=;
 b=HGKClrZCqMcRPSntmVRgPXMAR883tVWjnEn3PQKdl3sRAiwwxMOCiYzcFG3Ac3T2dT
 Kbv2jSu+TcJzDkscPvJ5aQVbwC3eT5jN0FoDYVj7+CZBCndoui56WZASvWJkXKFLkui0
 KCzl0bd9H/R80QUnOAYrq31IyVjPiWr5KkQmYjoRDAcda+BXeb/8MkYa5KLL1p2qa72K
 261ECUC+ji6oqD3gSdMXTVClFtaSze7VyBB6U+7U6AMFteBPzZH6RHWjmImFPqi7hGtM
 htMtD/2+9AeFCdrAKqB+NnOHURvI1dmd7RFDSppGHDYqlij7FO9alm5ksMrLYWGsbGzY
 woqQ==
X-Gm-Message-State: AOAM5330i1Q1gRet7l9/DEPj6QjAoWEr+M23fkDNKYRTya4WAN0GxQFC
 mbBwH4r+fBimacDOmWeMcO8=
X-Google-Smtp-Source: ABdhPJzFtLkIWlH9oU/3K1AGg0yB9buSI2pqabwNT9Fk+0mrF0ELl2FDuzFdJU2q+CLbiQQBNSBVbg==
X-Received: by 2002:a17:906:3bca:: with SMTP id
 v10mr5240607ejf.57.1599900565258; 
 Sat, 12 Sep 2020 01:49:25 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-039.092.219.pools.vodafone-ip.de. [92.219.207.39])
 by smtp.gmail.com with ESMTPSA id s23sm4009598edt.10.2020.09.12.01.49.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Sep 2020 01:49:24 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/5] staging: rtl8723bs: refactor cckrates{only}_included
Date: Sat, 12 Sep 2020 10:45:16 +0200
Message-Id: <20200912084520.8383-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Refactor cckrates_included() and cckratesonly_included() to simplify
the code and improve readability.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index a5790a648a5b..4e0d86b2e2e0 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -56,11 +56,12 @@ static u8 rtw_basic_rate_ofdm[3] = {
 
 int cckrates_included(unsigned char *rate, int ratelen)
 {
-	int	i;
+	int i;
 
 	for (i = 0; i < ratelen; i++) {
-		if  ((((rate[i]) & 0x7f) == 2)	|| (((rate[i]) & 0x7f) == 4) ||
-		     (((rate[i]) & 0x7f) == 11)  || (((rate[i]) & 0x7f) == 22))
+		u8 r = rate[i] & 0x7f;
+
+		if (r == 2 || r == 4 || r == 11 || r == 22)
 			return true;
 	}
 
@@ -69,11 +70,12 @@ int cckrates_included(unsigned char *rate, int ratelen)
 
 int cckratesonly_included(unsigned char *rate, int ratelen)
 {
-	int	i;
+	int i;
 
 	for (i = 0; i < ratelen; i++) {
-		if  ((((rate[i]) & 0x7f) != 2) && (((rate[i]) & 0x7f) != 4) &&
-		     (((rate[i]) & 0x7f) != 11)  && (((rate[i]) & 0x7f) != 22))
+		u8 r = rate[i] & 0x7f;
+
+		if (r != 2 && r != 4 && r != 11 && r != 22)
 			return false;
 	}
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
