Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA843D38FA
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Jul 2021 12:58:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74A7383508;
	Fri, 23 Jul 2021 10:58:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wzhcHXX4HzH8; Fri, 23 Jul 2021 10:58:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB43E830AB;
	Fri, 23 Jul 2021 10:58:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E2B91BF34A
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 10:58:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B15B60664
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 10:58:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id psNP_lTHYPsh for <devel@linuxdriverproject.org>;
 Fri, 23 Jul 2021 10:58:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C7DB6062F
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 10:58:11 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 m2-20020a17090a71c2b0290175cf22899cso3209828pjs.2
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 03:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZPlR3zHdyylp7pQXKkqf9QbHuA2Zl8vCV+SNBYfuob4=;
 b=fq/YnaP5Yy6awVUv2kWRFpeqmIxUCHiddJqWzher4JhqGfsUZcr2i+wlpwFAkWF7PK
 fe+b3ghcwxP4CE/zXQYmuLySrhgmqvpPwXZkaM/DMrCt4zPIwZr6zkYZBN3B0Cy5E5Le
 3iJlMOzmUX6niEQjLIM1WaeAi45AMqwVyvEUM/iNW24uiMwVEV7lKVGKroAoljrQ/t2R
 X+h2E7mMFUwsffaVgjJf4l44zcE58EOAbu4N/XXiJ2/9w/D1FTye6s30/Vf2ZOWK9V6u
 O+RycZgUenvFW6/MkbFILraC13lown1KygPzgjjsd2d7beY5ybWdqfS0CqSRK6DzBak2
 eGpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZPlR3zHdyylp7pQXKkqf9QbHuA2Zl8vCV+SNBYfuob4=;
 b=WR/0ThTshP7lBJZFr7o/40cF+p58mPHvZphTcs8Rfzpd3EkR2x7UIQwZMhHfl/8488
 cEeCit8Tbj6LJ8QwuZ+JH8z9MQF01nCSl2yseOn/+/ZYLsKjCnE2NE44qd2eBMLilcOI
 q3rmPsMb/25Z0ZE17gAEuWbZ55yifUVN5ZCTk8iK5/0EFEq0ievQW+klyvJKW3dTaMYB
 CjR+u8cKyJ98B+zl8Zsm9arUU7ojyACcyRVyEaZS+3z0dNAvdcpfBk5HStK4HEHol0Tz
 DD38rwbf/hwFmmFppEsHvVQEb6z/6K4zFmG8KR0rKTZf1LXAihCID4OjVp10iqlHV0Qf
 FuLw==
X-Gm-Message-State: AOAM531hoiMaWo5kdF85ZqMWSXFAxPyNtWTpuyR7m31hfnUm8db/o4/2
 WztbYiCBZsU0J3T8VmRwPuU=
X-Google-Smtp-Source: ABdhPJxHZ8LL8SG2s2q6Mp75O6Yf1H/q+AZDBtsRi62JlC8IPGBJcHgJaqSMrc3totaPEm7yu9M7Xg==
X-Received: by 2002:a63:2b92:: with SMTP id r140mr4296035pgr.394.1627037891063; 
 Fri, 23 Jul 2021 03:58:11 -0700 (PDT)
Received: from localhost.localdomain ([2402:e280:2130:198:9b25:1cfb:9ff3:2a8f])
 by smtp.gmail.com with ESMTPSA id u21sm33115559pfh.163.2021.07.23.03.58.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 03:58:10 -0700 (PDT)
From: Benjamin Philip <benjamin.philip495@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH v2 3/3] staging: rtl8188eu: Remove blank line at
 core/rtw_ap.c:1143
Date: Fri, 23 Jul 2021 16:27:53 +0530
Message-Id: <7190ca69f8966eddff6b79ace2e00eedeb17a86d.1627029208.git.benjamin.philip495@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1627029208.git.benjamin.philip495@gmail.com>
References: <cover.1627029208.git.benjamin.philip495@gmail.com>
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
Cc: devel mailing list <devel@linuxdriverproject.org>,
 Benjamin Philip <benjamin.philip495@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl CHECK:

CHECK: Blank lines aren't necessary after an open brace '{'
1143: FILE: drivers/staging/rtl8188eu/core/rtw_ap.c:1143:
+{
+

Signed-off-by: Benjamin Philip <benjamin.philip495@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index ba3a6347976d..a2aeb78733d5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -1138,7 +1138,6 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 
 static void update_bcn_vendor_spec_ie(struct adapter *padapter, u8 *oui)
 {
-
 	if (!memcmp(WPS_OUI, oui, 4))
 		update_bcn_wps_ie(padapter);
 }
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
