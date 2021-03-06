Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3ED532FAD4
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Mar 2021 14:23:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFF258455F;
	Sat,  6 Mar 2021 13:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tik7IZldTRJv; Sat,  6 Mar 2021 13:23:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBD8684541;
	Sat,  6 Mar 2021 13:23:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C83451BF306
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 13:23:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B7EAB6066D
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 13:23:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f0eympxyiBzU for <devel@linuxdriverproject.org>;
 Sat,  6 Mar 2021 13:23:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 28D1D60657
 for <devel@driverdev.osuosl.org>; Sat,  6 Mar 2021 13:23:37 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id n9so2316876pgi.7
 for <devel@driverdev.osuosl.org>; Sat, 06 Mar 2021 05:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=QNie7fvacg0VcMhJUcIkQPujOIJJT3GPp44PryGFraY=;
 b=ZsSwrn2q6uVcmRI4L15LCpuu4OkwZCBLAt3XsMRWKPvxSEYMnpHxcC7SqeIMi7E+Nk
 Ll2WgneSd9qFq/aARfpAFiyMqFRb5Mi6F5y8wUQLNAr2/EnW1MWBCWNf+jie8pDiJ10y
 S6IXVOFUOweMyB1aq2WdB0P3zgvoehcKyhxYbKJTKrmi1qtKTF4laUYHLbLJV7fB/frq
 v57hn/dMwo/LChiM5RNqfGww5xRZ33Xdz9nv4TakWeErcJjrekiS/U6DYbXDeElzPtN5
 CYiVseQpB3ukpnD3khsvwtCCMCqupNKpvRRbqCtdw1tbZgN1yQMf93YBzNk/U0+OXybq
 8hhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QNie7fvacg0VcMhJUcIkQPujOIJJT3GPp44PryGFraY=;
 b=GPMM7iQC96ym3AgHCQ02y8Beayd8UVj13wbvYMBA4kKKCzee+Cu+uSnzX79/uJQIE9
 vYXPvgxCVOVTcx09xdzdNjNl+9GUBmbPWkCFq6yacflb1yFB1CuOqTr4FqQGMVg7/iIu
 I1ejxd5Vw1pvNjHzLQ/eoWe4nHZFIV3daA1ZuD3458Rcd5ZVUR0lfBtkb0f2GKWc9xeF
 irqWUSWYwQUrdvWpQLbWAiMCEFuY1jIomPKklgHvYFw3Df365GwkaNJrAcgghp3zgMiO
 qyBYPvmG26V6jh0llkYsTNn2ipZcRgNWhRTtiFHN0rJQRgnSNfhG2sOQcC7xQWe0blCg
 +ZrQ==
X-Gm-Message-State: AOAM532OIBZyz1TkEwHKHd2SCllriZGdPOy3ruCHoYljm+PGywxo41If
 hXi0ZAJ8YZwJer1SHB7eCWE=
X-Google-Smtp-Source: ABdhPJxzeo+9H4+p0uAsSY2mO7pJES8TJr7rANuMY+Kq3XAv2Qz8x68JaHIM9oiVv9/CGktzV7yyuw==
X-Received: by 2002:a65:4243:: with SMTP id d3mr13351432pgq.180.1615037016632; 
 Sat, 06 Mar 2021 05:23:36 -0800 (PST)
Received: from localhost.localdomain ([45.135.186.66])
 by smtp.gmail.com with ESMTPSA id d24sm5672441pfn.54.2021.03.06.05.23.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Mar 2021 05:23:36 -0800 (PST)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org, arnd@arndb.de,
 dan.carpenter@oracle.com, phil@raspberrypi.com, amarjargal16@gmail.com
Subject: [PATCH] staging: vc04_services: vchiq_arm: fix error return code of
 vchiq_release_internal() and vchiq_use_internal()
Date: Sat,  6 Mar 2021 05:22:45 -0800
Message-Id: <20210306132245.16811-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Jia-Ju Bai <baijiaju1990@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When arm_state is NULL, no error return code of vchiq_release_internal()
and vchiq_use_internal() is assigned.
To fix this bug, ret is assigned with VCHIQ_ERROR.

Reported-by: TOTE Robot <oslab@tsinghua.edu.cn>
Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 59e45dc03a97..8b2b4771f420 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2332,8 +2332,10 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 	int *entity_uc;
 	int local_uc;
 
-	if (!arm_state)
+	if (!arm_state) {
+		ret = VCHIQ_ERROR;
 		goto out;
+	}
 
 	vchiq_log_trace(vchiq_susp_log_level, "%s", __func__);
 
@@ -2389,8 +2391,10 @@ vchiq_release_internal(struct vchiq_state *state, struct vchiq_service *service)
 	char entity[16];
 	int *entity_uc;
 
-	if (!arm_state)
+	if (!arm_state) {
+		ret = VCHIQ_ERROR;
 		goto out;
+	}
 
 	vchiq_log_trace(vchiq_susp_log_level, "%s", __func__);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
