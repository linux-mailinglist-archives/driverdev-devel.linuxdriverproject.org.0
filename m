Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 599C0295F61
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 15:08:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97ACF87795;
	Thu, 22 Oct 2020 13:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OKuMhOz88xPK; Thu, 22 Oct 2020 13:08:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16D1A87277;
	Thu, 22 Oct 2020 13:08:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 34B501BF288
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 13:08:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F15B42077C
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 13:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xyPUrHKMgEIs for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 13:08:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by silver.osuosl.org (Postfix) with ESMTPS id D24A920656
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 13:08:12 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id z5so2194988ejw.7
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 06:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=YnVSHPtkEDV80qgIOohyTUBh5oj/YizZewvliA8voeQ=;
 b=ElU6qfg6v/wFR7SXZ6Er6eboZ3A5bx8GD5X9SAdsxJiJCfWp23+eyZMYpIedG3cN8r
 x5sktzejMQgBoVHggchF2yC1AWyxMCSOwP1paYXrqVRyfuaHcH2V3ZBMODUFHdbuXawD
 aQxNQQjlOeQtDUzS37KrK9YOA739hNydhJFmso8JoNXCkA+6Pm3ywynD0dO8VKEUjnnt
 R7CfzStF0bnPCD9SMpXZT7ON0pnhxNz6er8DHAopQPh8/9ZBTfeEP7QAYyOPHUDFHO9Z
 XqVfIdqYr0212gA5TOFUWjVPVyC59W7y0civxWmB00tGD/+HoiwzmRhBM08mQ7Mu+Dmj
 eeJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YnVSHPtkEDV80qgIOohyTUBh5oj/YizZewvliA8voeQ=;
 b=mDRWRQVKY2qkhj2dZOyejvXm0ZSTfnLFrNVGdoXcMr1j+WiRlnWF2Al4Rh2MLG/sbx
 7Uh97rScuaYc6iWHFBVNee3SU3qw1Ak7sB6BqrLB47Dgv5Q5eoRc4Xt91uw+TpWC5tVc
 Nzsfcwdh2TZDbj6VND+164y08XSdGwhpUIGXsdBGMRwAxa5zBl214IWCAJFeB9/NS2Sf
 tR5j3+KakLGjaJpaoX7mtG4nvWnLrCNGAYhvvQGsTiqTsP3ySWI2TwH/s9/APmlB5/9J
 TsX+vkj0DzIpFY46FkZ2FM2Lg9iOzVl1NHC4v1Vga7ay7VenKZTXMnDotf0CDDD8Nx4g
 AWkA==
X-Gm-Message-State: AOAM532mi4IxxA1C95JUb7ytd0da5g4Jt+sWMXQb/DlQMaWo++JtK7GV
 vjIxoPTgB+ZXA/7DNKm8FH0=
X-Google-Smtp-Source: ABdhPJx4ECTfVg2+U5QqUepNwCaPX5HLFTV3Vg2vij5qajpYovM5nIpA4+ayTbkTSKXjPU1mSbE4Xw==
X-Received: by 2002:a17:906:388d:: with SMTP id
 q13mr2101698ejd.92.1603372091196; 
 Thu, 22 Oct 2020 06:08:11 -0700 (PDT)
Received: from localhost.localdomain ([185.200.214.168])
 by smtp.gmail.com with ESMTPSA id e4sm732723eds.50.2020.10.22.06.08.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Oct 2020 06:08:10 -0700 (PDT)
From: izabela.bakollari@gmail.com
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging/wlan-ng: Fix line that exceeds 100 columns
Date: Thu, 22 Oct 2020 15:08:07 +0200
Message-Id: <20201022130807.212454-1-izabela.bakollari@gmail.com>
X-Mailer: git-send-email 2.18.4
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Izabela Bakollari <izabela.bakollari@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Izabela Bakollari <izabela.bakollari@gmail.com>

Rearrange comment that exceeds 100 columns length. Issue reported
by checkpatch.pl

Signed-off-by: Izabela Bakollari <izabela.bakollari@gmail.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 759e475e303c..5fad37a49aa5 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -366,7 +366,8 @@ static int prism2_scan(struct wiphy *wiphy,
 					  msg2.beaconperiod.data,
 					  ie_buf,
 					  ie_len,
-					  (msg2.signal.data - 65536) * 100, /* Conversion to signed type */
+					  (msg2.signal.data - 65536) * 100,
+					  /* Conversion to signed type */
 					  GFP_KERNEL);
 
 		if (!bss) {
-- 
2.18.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
