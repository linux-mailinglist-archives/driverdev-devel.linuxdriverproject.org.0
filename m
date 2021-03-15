Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 273DB33AFD5
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:17:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C485A834FE;
	Mon, 15 Mar 2021 10:17:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6bAcpqFdO9S2; Mon, 15 Mar 2021 10:17:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A13683486;
	Mon, 15 Mar 2021 10:17:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82E681BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:17:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7F8D060707
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:17:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r0_Mjlafo3FY for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:17:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D5105606CB
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:17:41 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id o14so4567989wrm.11
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YZDFfmirJi4MEZwUppp8ZkBaLUaPEyc7IvttyXwT2Aw=;
 b=CiHycCWBZHtOE33MB73qzfyP/Zo/faqnvfe4IiUYAMAsdOHGzF3XCmvs9dlbGQOBHH
 bOSxjyMtFR0N2RzCr5c9u8y+pLleeRdHr9ddK3iy9Kv0lrT+K4K0zWX3NJOBdTF1YeUv
 HT8DAFIkaA3/5KPI/VJbKsrMr05Gd5KQzF8wuw5h0VpZ5ARRVIz1hXDfG8e2woBx4Hce
 ZeBNeY1xbuDJLVBaOChu1Sx1m34F+GDL0lEi7EZghE3rM7RNqG3ZHGc1rb5EM6XhBbVe
 YEzf/jhEI/nCN7RjQKAlyznsufzRCdk9fpPN4x4LCyHGy2hCwtKb4eYkee7KwdHCyDTg
 uvTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YZDFfmirJi4MEZwUppp8ZkBaLUaPEyc7IvttyXwT2Aw=;
 b=gv9SQEbuuGwnCPiIdkSOSo+AGndsE2Bai7nbWjgQ/1UqfoRjDxsiMSbJyQSUkZ1Zjq
 rQPLRZVHIQU279z0WzKhBKuS8p7YLaKnQou/WULX+bwLIWQ5I8wEz4CPk0lmdH2KvHX3
 WiIlsOhVQyz5wWkeMGU61IaYmD2ToPirDHA6pNQ2Oz22vghOAXqo7oJHa3IH39WZ/4c9
 plihD5rnB8lD2RvssYDPqnGR4vNYfiUIECPN2D9Gs3dfzL8cR4VYb29FfZxaCTCv2Yav
 mmAcpc6IjFVSFpJaRCt4i4LtxR+X/mOUuQtzIbrLXpml5phLVz1jkAL83UtCQWujjqeS
 wuIg==
X-Gm-Message-State: AOAM533fK2p1/4xewC5hLd6Y0Y2bVOpXaeO0BhXeXBgcGPvhT0dBLk4w
 qfHQgwjpBiD8eS/aDdgVuSw=
X-Google-Smtp-Source: ABdhPJziwhxJzwQFjMpYjGDYwMk8IMtolHP/mXgGwyPVQGG6r6JhfLHiAm0K1mk84wH+HeuDsww4Fg==
X-Received: by 2002:adf:f9d0:: with SMTP id w16mr27330762wrr.336.1615803460171; 
 Mon, 15 Mar 2021 03:17:40 -0700 (PDT)
Received: from agape.jhs ([5.171.72.229])
 by smtp.gmail.com with ESMTPSA id u23sm11883680wmn.26.2021.03.15.03.17.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 03:17:39 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:17:37 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 15/15] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_ODM_ADAPTIVITY
Message-ID: <0b2d79045feb7da232a8ffe73b068c9bd59d0284.1615801722.git.fabioaiuto83@gmail.com>
References: <cover.1615801721.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615801721.git.fabioaiuto83@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove conditional code blocks checked by unused
CONFIG_ODM_ADAPTIVITY

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index dce70fff0fae..4eb487cf70f0 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -91,9 +91,6 @@ static void Update_ODM_ComInfo_8723b(struct adapter *Adapter)
 		| ODM_MAC_EDCA_TURBO
 		| ODM_RF_TX_PWR_TRACK
 		| ODM_RF_CALIBRATION
-#ifdef CONFIG_ODM_ADAPTIVITY
-		| ODM_BB_ADAPTIVITY
-#endif
 		;
 
 	/*  */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
