Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E51033D780
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 16:32:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D56CF6F649;
	Tue, 16 Mar 2021 15:32:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DBBPcswROHrN; Tue, 16 Mar 2021 15:32:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E51186F635;
	Tue, 16 Mar 2021 15:32:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 80B861BF301
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:32:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6BB1A83DCB
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:32:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6GJBAjtS47uK for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 15:32:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C87E583E23
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 15:32:19 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id t9so7653068wrn.11
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 08:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3FACNdqVOiJ6TOhEvZsriYKv2P8d1qW7vmfrMLc43Lc=;
 b=aaCX+1owgHm8Fhb0JtsQaRDmrIVL//ePtFgWkBG/xYW469IKh1lKCAzB88/E+B0zJt
 KfPnFrjO1mHiLIWHvLp5L40sH/YV/OM1h9R6sbcGS5zwAQ06vo2hI7BgwRb5uvorAInR
 zltXBwfTovADEh9YfCdFU6cj/Vtlwt40CkmAelYZGdZRGKI9gxHE5FzSd4MyPiT7FjKo
 hG+d3LCDV5vqPMmGlo+nzVeRsJJVZYAn+WT1+55ANLo85CUvOhyKA3+ndYCrN0i4mYoF
 uWv5FRjWyIYA6wRg3NiTs2pL3iSJNMCT5yMszprx55Pv74Mesq00V1Rmp3ZkGtTO/lZ7
 mq/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3FACNdqVOiJ6TOhEvZsriYKv2P8d1qW7vmfrMLc43Lc=;
 b=g9NkFWDy8GCSroxxZpEa5rVgvgLydHQd9EgW/J1JrKmX4kla5E0VfT0pp7luYLMBiG
 Rwynajxhs/cd0DT2y2exSe4hAQrzHfuI/38FMNJ+4wmRYS9sY3atllhpqnVrI8G1Bs/e
 R4A2kcgNzjyplmAiwpqHu2K2NumiXe1JrgkNYehWBwP+ag8JoSSFENJcmitcBu1SiMn0
 2+3k4gllBc2hgaxiiRR6mUts4StZW0IFwloiiSMdzMDYoSo2xsMOxIQXzUMi2mr3plgy
 eLwJeNympjE+gy9IEBwv2QZXdGZQDBY3Pk0ap6czhAWvNzDBspQzH5xsAgxirdJOqQzb
 JM7w==
X-Gm-Message-State: AOAM532y2uPZXWS3+PnGppDay/3OWmNDL1hAvyTGbT3p2JJF4x7poSaz
 BaE90oBjvTj9E52GCK8Am/FUTkUjsus=
X-Google-Smtp-Source: ABdhPJwxIdccz4A4aKfP0SULCNB5vig47Ii1vHbRq2kvbE34Pz/TnNzY6I4BOKb25Y1NmFs7rSy1Xg==
X-Received: by 2002:a5d:424c:: with SMTP id s12mr5651203wrr.161.1615908738101; 
 Tue, 16 Mar 2021 08:32:18 -0700 (PDT)
Received: from agape.jhs ([5.171.72.71])
 by smtp.gmail.com with ESMTPSA id s83sm3438688wmf.26.2021.03.16.08.32.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 08:32:17 -0700 (PDT)
Date: Tue, 16 Mar 2021 16:32:15 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 08/12] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_SINGLE_RECV_BUF
Message-ID: <8e86b8adb1dcec67a7d437a362105bb96f370686.1615907632.git.fabioaiuto83@gmail.com>
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
CONFIG_SINGLE_RECV_BUF

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_recv.h | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index 0a56c3a66ee8..acd7a7714740 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -7,13 +7,9 @@
 #ifndef _RTW_RECV_H_
 #define _RTW_RECV_H_
 
-	#ifdef CONFIG_SINGLE_RECV_BUF
-		#define NR_RECVBUFF (1)
-	#else
-		#define NR_RECVBUFF (8)
-	#endif /* CONFIG_SINGLE_RECV_BUF */
+#define NR_RECVBUFF (8)
 
-	#define NR_PREALLOC_RECV_SKB (8)
+#define NR_PREALLOC_RECV_SKB (8)
 
 #define NR_RECVFRAME 256
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
