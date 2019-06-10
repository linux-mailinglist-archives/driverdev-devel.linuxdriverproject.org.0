Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 673B43AFE9
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 09:47:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CEA83203FE;
	Mon, 10 Jun 2019 07:47:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wgBumvgeCDaF; Mon, 10 Jun 2019 07:47:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9345120446;
	Mon, 10 Jun 2019 07:47:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E43031BF410
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E17AF85533
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r9wpj1YSP1KB for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 07:47:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 751B38502B
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 07:47:36 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id a93so3309475pla.7
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 00:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hjzkIqxohRFoK7l6Ov+DuZndMTzo0FMtAB+pvJUJ4/8=;
 b=SzhUXueY8UBm5D2qMugei4C/Ifkz1LCfsxwIjX6IJBLrqDI/t/vidI38Vtc+bX/g68
 tLmvdzCQoE3/yniYZf/cWcgXda8yG+OXNdJprq4YaWoEAphHrXAZq6rYGkctOlcwCD7k
 tIeokIHUee6RitvI7PdHeq4on+28dzZxrGrc3sDrXmR5FmB6iNCWGsixZtm1/r6xCp3G
 /yrO1chxtMQr/M3mhqd40A7k8g/CLm9oVpgi/bK2KCRKKYJTzLpNOJqixnmDJgs+8v4v
 a2sxPxTOVENBISVt7Hg5HI7WbnF2ygCBKqLktqrhwbYuqq6yrf+fSBVzTtnItSpFrLU4
 FtMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hjzkIqxohRFoK7l6Ov+DuZndMTzo0FMtAB+pvJUJ4/8=;
 b=pqTM33i1BkJ4NW+RGK1TSwcb/0C4Gs6rnEwR+cPKqRt3+slFKAGnyl0EB1cb3X62L8
 lqnUn9CWR8bW9s8vjTYZK0+vt77fLYjiCOafdyJNtuen/jFZsu+sw3bWa2NeCT7LV9hP
 3uFX9kZNAmCV9J+p0zrPXR/BNwMVzYOuXYz3pbx28vF5jJylipMFFbULocjXUHF+HgaM
 C8x7kyeSJQRqw+cg1lcPeAnZY4PkdRow8aAgl5I1YKFx4z+BXIfWs9GRXyYw1SEZJG5b
 Ggj8mg3/Er2j4hp8x4VNpxOfo+xEG0as/8w4r+u6KTk4vPFNGwrbVIxLLlbI/hAwb52D
 unBA==
X-Gm-Message-State: APjAAAXIFnHvgzaMujOzscRP/E1j+XNuNU5QkDJstpGf+A9GKJTv0ptz
 cnqMd8vr9rCm28M4ybLiVD0=
X-Google-Smtp-Source: APXvYqzGBKK8CoY5N1rY7JaEAbqkyf75J1DnLdsYTPDBmyYGTrv27R/CAJN2zcmB7ro444pqceFOGQ==
X-Received: by 2002:a17:902:6b07:: with SMTP id
 o7mr47803305plk.180.1560152856174; 
 Mon, 10 Jun 2019 00:47:36 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id f2sm8120965pgs.83.2019.06.10.00.47.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 00:47:35 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH v2 08/10] staging: rtl8723bs: core: rtw_mlme_ext.c: Remove
 unused variables
Date: Mon, 10 Jun 2019 13:17:08 +0530
Message-Id: <20190610074710.15677-8-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190610074710.15677-1-nishkadg.linux@gmail.com>
References: <20190610074710.15677-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove variables that are declared and assigned values but not otherwise
used.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Send as part of patch series.

 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 65e8cba7feba..5f0b20038a28 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -6771,10 +6771,6 @@ int rtw_get_ch_setting_union(struct adapter *adapter, u8 *ch, u8 *bw, u8 *offset
 {
 	struct dvobj_priv *dvobj = adapter_to_dvobj(adapter);
 	struct adapter *iface;
-	struct mlme_ext_priv *mlmeext;
-	u8 ch_ret = 0;
-	u8 bw_ret = CHANNEL_WIDTH_20;
-	u8 offset_ret = HAL_PRIME_CHNL_OFFSET_DONT_CARE;
 
 	if (ch)
 		*ch = 0;
@@ -6784,15 +6780,10 @@ int rtw_get_ch_setting_union(struct adapter *adapter, u8 *ch, u8 *bw, u8 *offset
 		*offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;
 
 	iface = dvobj->padapters;
-	mlmeext = &iface->mlmeextpriv;
 
 	if (!check_fwstate(&iface->mlmepriv, _FW_LINKED|_FW_UNDER_LINKING))
 		return 0;
 
-	ch_ret = mlmeext->cur_channel;
-	bw_ret = mlmeext->cur_bwmode;
-	offset_ret = mlmeext->cur_ch_offset;
-
 	return 1;
 }
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
