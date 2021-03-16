Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3272A33D77C
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 16:32:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD197431AD;
	Tue, 16 Mar 2021 15:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MAnffA4vhHMd; Tue, 16 Mar 2021 15:31:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AEFF42FC0;
	Tue, 16 Mar 2021 15:31:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A15B01BF301
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:31:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 909364EC5A
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:31:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ye7hcF-5gYkJ for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 15:31:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D131B4EBBD
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 15:31:46 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id j18so7655267wra.2
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 08:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SocEqlvAbRT6Sm4b5Grbre+Ttg/sIXmmWrhwzkaP3Lo=;
 b=a1BxUYnuuD++WR1EXS5rpHMg0T0HK0bqd5q5v35hVmZPDMgEKbPRlSea9BR0thc6KW
 uPmyNyrJ4QucwwoeVtJGCCR+RPBNmDjXzeOcPvbHI+wkM4q1hbYVefnFEDKEwmebTLpt
 9iV5oN5ofcV9z27DfxiakrgZLQvEZ17xVxhIkkb5ediIqE/HgFqYR7rCy6ffd6Vd1AZx
 V2bJjtilE47a6AcD0yBVaQNfUgJi8RvYUwJUUzPuPgOXhCeS7dSGPxevjrrbJBeO+/jp
 SeZ9oHzlJrVrA2aESBmsDsaaZJeYkXu3C5fHScUgx5bk2EaylyAsJfowoNJlQGCQdXTz
 8+Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SocEqlvAbRT6Sm4b5Grbre+Ttg/sIXmmWrhwzkaP3Lo=;
 b=Gq7622eSGkb0UrWPhhGcF60+CjYGNgvvOyWYggZcjcWlNBPIh14r5xCDH/9jL0hYsQ
 bcLagKafwcOPpZf1lZWS+9L4YRKpJE+YAFmzeII4rMNtkSQ5YMRnk27zKw29ch8Df6KA
 fQFYK7qVxZX66qzcuYbF6hIq/yuDRKzYNiDlPLArXQMdch9bY1NodXg5f6FCeE9t4Zmx
 c5LL/y2xju2wCOII2DCZgoznxn1o+8One7MsrtfV2IKV68QbMygxiXpmXyLKhEWyc2H3
 VM/S5BBFv4HHvKvxH+HKR/4X5MTEhTOwQA3TURtxwvYyBUVu3HgTqwxte5Nm+zwOWE+5
 utIw==
X-Gm-Message-State: AOAM531t2knBLpzM56JiLi6IC0SA1jPRMRMMHoCdvUxaxbbS3n7O0+3Q
 FenSp3PezffB0+vJ7n9JARc=
X-Google-Smtp-Source: ABdhPJziwiWFVahoTUxAqu+NNIDNn7QgtFMnwZB1suLQGExASHmxv6zIrlvpBqHMkalo0/xSJ09BWQ==
X-Received: by 2002:a5d:42cb:: with SMTP id t11mr5521719wrr.280.1615908705212; 
 Tue, 16 Mar 2021 08:31:45 -0700 (PDT)
Received: from agape.jhs ([5.171.72.71])
 by smtp.gmail.com with ESMTPSA id z1sm22259865wru.95.2021.03.16.08.31.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 08:31:44 -0700 (PDT)
Date: Tue, 16 Mar 2021 16:31:42 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 06/12] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_LAYER2_ROAMING_ACTIVE
Message-ID: <db002fc802d266f09a1e990a7717a2cacf0ed7a1.1615907632.git.fabioaiuto83@gmail.com>
References: <cover.1615907632.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615907632.git.fabioaiuto83@gmail.com>
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
CONFIG_LAYER2_ROAMING_ACTIVE

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index a9e5c27a42f7..149093c710ae 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -67,9 +67,6 @@ int	rtw_init_mlme_priv(struct adapter *padapter)
 	pmlmepriv->roam_flags = 0
 		| RTW_ROAM_ON_EXPIRED
 		| RTW_ROAM_ON_RESUME
-		#ifdef CONFIG_LAYER2_ROAMING_ACTIVE /* FIXME */
-		| RTW_ROAM_ACTIVE
-		#endif
 		;
 
 	pmlmepriv->roam_scanr_exp_ms = RTW_ROAM_SCAN_RESULT_EXP_MS;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
