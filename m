Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B79345EBC
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 13:59:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4347B60820;
	Tue, 23 Mar 2021 12:59:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xj496c40OHlE; Tue, 23 Mar 2021 12:59:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88C3B60667;
	Tue, 23 Mar 2021 12:59:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 78B3C1BF371
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 67CC46080C
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0q66aCEoDaBO for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 12:58:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AEEA960828
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 12:58:22 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id b7so26944109ejv.1
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 05:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4BEr+U22XVWAeunLqffU23P7ZmiKVWme3aB7fB0BhsU=;
 b=Bu0wUoUuz1wp4qC0myYiSysjpCzJGg7qtL/shN6UeWhuNGcl1RRclKt8GE2kD3I41I
 WQGunxeKEuXfrqNdkhMh9p+Ktge6N6vhrrzPzQG4QoFlMiP8sHSMqjgRmS/mpVeCJMKM
 qPRHKL/2L3wG6MA6YlWeVSkZZjMjtdiP6kF3AAMvpPcMzpP6O9n5i5Te6S/sxz1lWTfN
 8tA0vTAo9pLX1hO+qrBAZElwTWhdsgXk83mfneJVbH8OtibvAYkRB/5qWOwajD+1Owbp
 tAZspJv2hM5JD5TZDCxOorzPGZmbXTMAPHio7RYvK0TlpEEMYWjRHztxg9ayEqS8t8DV
 z6Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4BEr+U22XVWAeunLqffU23P7ZmiKVWme3aB7fB0BhsU=;
 b=izCtNtrIstseVjeFy/PE2s3qaIRIcaVtzhtyhi5/Ge+iTxTKQv/hWHTHDJm1WClxar
 ag9oL/mfepsWm/e5nwLgDLjzn2vfpy4AR64rxMrZ28E+7zRbgevS6gX4dtPqDoufn9Ze
 Kh3V4uVMJjRp9ZK6mlcQf3SCGCvsz/baZHJhj0tsIvVloCcyGiCpnKss016Px9xoO2+q
 1EK6oH1MxcCo5Oqq3g2kjs0qAcovTnqRNV7fFvUJf4eUxCZh+CS7yGgnRQRRImMMIC68
 7FEVsPkpjJXVaxNZAJm0YPuL/h6bLXFo2bjQr4tGMwwj9c07pBVseZzGgAW5E9eZWkk+
 vePg==
X-Gm-Message-State: AOAM532l4YRQWwWqn+boxRJTYHfcYlbh7d8rlqr0hsUQ0BQpDUNtwQps
 HFxyy7mCJ3TcO1G53tjoOnU=
X-Google-Smtp-Source: ABdhPJyE9D3WHGsEbIx8bY0TH3jF70SgioS9FdTIYwv5jEhQ5ME02F/tb+Q77SbNgFs/xg2gH4cf4w==
X-Received: by 2002:a17:906:a049:: with SMTP id
 bg9mr4835328ejb.186.1616504300959; 
 Tue, 23 Mar 2021 05:58:20 -0700 (PDT)
Received: from agape ([151.57.211.10])
 by smtp.gmail.com with ESMTPSA id g26sm11005758ejz.70.2021.03.23.05.58.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 05:58:20 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 4/9] staging: rtl8723bs: delete extern declarations in
 core/rtw_wlan_util.c
Date: Tue, 23 Mar 2021 13:56:31 +0100
Message-Id: <0fa08b70af86b2ee88564179a22d908a643bed1f.1616503354.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1616503354.git.fabioaiuto83@gmail.com>
References: <cover.1616503354.git.fabioaiuto83@gmail.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch issues:

WARNING: externs should be avoided in .c files
28: FILE: drivers/staging/rtl8723bs/core/rtw_wlan_util.c:28:
+extern unsigned char RTW_WPA_OUI[];
--
WARNING: externs should be avoided in .c files
29: FILE: drivers/staging/rtl8723bs/core/rtw_wlan_util.c:29:
+extern unsigned char WPA_TKIP_CIPHER[4];

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index bfd55a0356f5..760b0ea4e9bd 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -25,9 +25,6 @@ static unsigned char AIRGOCAP_OUI[] = {0x00, 0x0a, 0xf5};
 static unsigned char RSN_TKIP_CIPHER[4] = {0x00, 0x0f, 0xac, 0x02};
 static unsigned char WPA_TKIP_CIPHER[4] = {0x00, 0x50, 0xf2, 0x02};
 
-extern unsigned char RTW_WPA_OUI[];
-extern unsigned char WPA_TKIP_CIPHER[4];
-
 #define R2T_PHY_DELAY	(0)
 
 /* define WAIT_FOR_BCN_TO_MIN	(3000) */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
