Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB663454AC
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 02:09:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B2BA82605;
	Tue, 23 Mar 2021 01:09:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zL_9XVNF_eRr; Tue, 23 Mar 2021 01:09:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CFD4882479;
	Tue, 23 Mar 2021 01:09:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 34EAB1BF349
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 01:08:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2A6F54034C
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 01:08:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XCjiMgsfmjnH for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 01:08:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com
 [IPv6:2607:f8b0:4864:20::72e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 81D7940348
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 01:08:52 +0000 (UTC)
Received: by mail-qk1-x72e.google.com with SMTP id g20so12768662qkk.1
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 18:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uVmhqGnsjGsJrmduRvggndhRWp4nQB/gucWOwGEWlgY=;
 b=RaJzkIiK+kyv2JKxuECtZ7H+a1zFXXmKcTbamFIDba3UKrjAUmD7zsQiQYbTAKTyK1
 EDSTiT2hyT1Mepa++PgoyD7kotVFmhy823Nh2eJuvudBxwvlsZi2yZ/XnuITcTFONUMw
 6CDH0+d5rJoLiRZLPSjZlvu+awRmSsL/mjH9ST9MT13bN3eFeB3g3wNInVsuYgbWXLlV
 HLdidqq8LDr6rWM7bymmtm4v5OVlGReA0ALkdVzxxl7bq6pVbhdlHDrKSWp5y/X/jSs4
 FCtwRuPHYQe//VPQlDldWlONua6eseP2mi4bl2tRU93uEolBJKrAiZRQQwrm7NbuCare
 UH2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uVmhqGnsjGsJrmduRvggndhRWp4nQB/gucWOwGEWlgY=;
 b=ZM7yQNRZENy+714gaJWCoVDjb5CAp3DeDYJT+6u1hnPMPvAGGIIoXMpOyypnPaLCag
 j6eWFJk5LDvV3kmCHcTyTmkwNxYfWhs/kRk/XAEN7ndvnbklt3Vqcn0BPEZecQD+IAqX
 zJ4FCSjJOI+CkHGsC1Y08yt1G4LG/sbwVQCg1Oa7/Mhiw2L0/MVdWrQ5F5BdFUt/wdHP
 IcMQ1NcnqLU49NtOjfssGE4xRKcK3bGgoTdpQNS9S9S2SDhvcd7D4T0RzcqeKU3MCGmE
 AXck6x4XSD8EE/7YBBAu7gKGoNemGPx40rTfCzIN/OpZNTkRFX2VISz/yrpj+qxL2IDO
 bDcw==
X-Gm-Message-State: AOAM531xIishkRKewUhEODuANoPaVNdxwf51hMFjokiveoqAOicoTcgr
 XFXhJJwk2ocZNx9HN2wQttc=
X-Google-Smtp-Source: ABdhPJyDbo8xmxYwhGFChaGdt7aO1URHQUC3yWhshdHzxrH8NJQaB1QFTZyXxmeDaQUa3wZI4SfCEg==
X-Received: by 2002:a37:a10a:: with SMTP id k10mr2978573qke.171.1616461731424; 
 Mon, 22 Mar 2021 18:08:51 -0700 (PDT)
Received: from localhost.localdomain ([37.19.198.117])
 by smtp.gmail.com with ESMTPSA id j13sm3943745qth.57.2021.03.22.18.08.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 18:08:50 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: gregkh@linuxfoundation.org, ross.schm.dev@gmail.com, yanaijie@huawei.com,
 matthew.v.deangelis@gmail.com, amarjargal16@gmail.com,
 izabela.bakollari@gmail.com, unixbhaskar@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: Trivial typo fix
Date: Tue, 23 Mar 2021 06:38:35 +0530
Message-Id: <20210323010835.4061779-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.31.0
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


s/netowrk/network/

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 2c9425e2a1e9..3888d3984ec0 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -599,7 +599,7 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
 		}

 		if (rtw_roam_flags(adapter)) {
-			/* TODO: don't  select netowrk in the same ess as oldest if it's new enough*/
+			/* TODO: don't  select network in the same ess as oldest if it's new enough*/
 		}

 		if (oldest == NULL || time_after(oldest->last_scanned, pnetwork->last_scanned))
--
2.31.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
