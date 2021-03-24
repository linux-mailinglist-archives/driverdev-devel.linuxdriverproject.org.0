Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C273479FE
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Mar 2021 14:55:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DAEB60AE8;
	Wed, 24 Mar 2021 13:55:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NKO1dxW4ArOY; Wed, 24 Mar 2021 13:55:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6113A6074F;
	Wed, 24 Mar 2021 13:55:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DDDD81BF3F3
 for <devel@linuxdriverproject.org>; Wed, 24 Mar 2021 13:55:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CED5740EAD
 for <devel@linuxdriverproject.org>; Wed, 24 Mar 2021 13:55:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rych4RKFUR9f for <devel@linuxdriverproject.org>;
 Wed, 24 Mar 2021 13:55:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com
 [IPv6:2607:f8b0:4864:20::735])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F288840E97
 for <devel@driverdev.osuosl.org>; Wed, 24 Mar 2021 13:55:03 +0000 (UTC)
Received: by mail-qk1-x735.google.com with SMTP id x14so18035252qki.10
 for <devel@driverdev.osuosl.org>; Wed, 24 Mar 2021 06:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bl+twAxTABzyYq2Klqss4Te0Jt29mShp2MJ9BTS37Kk=;
 b=SP47RER0wtPvVgzy95KQ4pLZMs76Df4F1moWk7n1OHLD6ElO2H/wteAe0TLwhQ3DRY
 lpUTdLIl43m2zAvR2d5tOkv4gVE1GrtF2rfE75oL8r3BIrnqgzdBi09mtSYA4xZuHWIz
 0P0p3azDVo4n5pFS3uMGZBULXru74uE2rMlIf3NcUCIU7gZiOO2Nlk3yyLCp+62tWn5A
 Na76qcpAj5lY7cvR+eur0fUzR23pjtgHtP0Jq+0SVMURlucmalPXzr/yFn7pZl7Zs4GK
 5GKIkl0PhF+Hl3vCbqJYyPseOOZIqNPhDgrglbb+htnfhU2UDLgdeRoY5jMSV9TjtLRK
 0V+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bl+twAxTABzyYq2Klqss4Te0Jt29mShp2MJ9BTS37Kk=;
 b=Qux06ksYFmb9ZIL5AABL0GVX1JVjnQ4+EZnkB+WsPSH3SEez6+xzxgx5njS03kyVNZ
 s6DiJ2pIXAuYYcVkU+xZAvfg+7ufImCfK1Zcvnb1rVx4EGf7RsyipJpeqqIoHOYzZmBq
 ZnCCmmPhG13v3XEhHGof9W28Gz6Bmuqeq3r7eKbB5DaUq/4PWFWry43sT8ncwNFWraLO
 UISLwvp4kGcs05GsSBLqdCiblLK9HCy9bB7RhjZMk2wPhvhAwVXocbU+sNFzdSdp1i7d
 BEDjHHsdR2qCO5llfQ1GIsk05Eqpz4RJkP1C90CboTPG+n8iffvsY5NefUfJoa35nbfy
 jMvw==
X-Gm-Message-State: AOAM5310LPkeDPuJlduOacPlqEgjhn1Wa5/RqDvy9UnIW5WisqWGsohy
 YvmsxAyLhiJgb4IB5VcZF/Y=
X-Google-Smtp-Source: ABdhPJxPieUj7toob6UDD8yMp3VtqUFsKRFjK79RWJFyXQggM3E+g66VFMH1wvf3SvasVQJpWyhvWg==
X-Received: by 2002:a37:9dc1:: with SMTP id g184mr3317778qke.285.1616594102913; 
 Wed, 24 Mar 2021 06:55:02 -0700 (PDT)
Received: from Slackware.localdomain ([156.146.36.138])
 by smtp.gmail.com with ESMTPSA id x10sm1390816qtw.17.2021.03.24.06.54.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 06:55:02 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org, unixbhaskar@gmail.com,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] media: atomisp-ov2680: A trivial typo fix
Date: Wed, 24 Mar 2021 19:26:42 +0530
Message-Id: <20210324135642.30054-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.30.1
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


s/miror/mirror/

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 drivers/staging/media/atomisp/i2c/ov2680.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/i2c/ov2680.h b/drivers/staging/media/atomisp/i2c/ov2680.h
index 49920245e064..889395933099 100644
--- a/drivers/staging/media/atomisp/i2c/ov2680.h
+++ b/drivers/staging/media/atomisp/i2c/ov2680.h
@@ -627,7 +627,7 @@ static struct ov2680_reg const ov2680_1296x976_30fps[] = {
 	{0x5706, 0x0c},
 	{0x5707, 0x78},
 	{0x3820, 0xc0},
-	{0x3821, 0x00}, //miror/flip
+	{0x3821, 0x00}, //mirror/flip
 	// {0x5090, 0x0c},
 	{}
 };
--
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
