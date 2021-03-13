Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2245F339FDB
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 19:30:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53305400C7;
	Sat, 13 Mar 2021 18:30:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fSomSpUxjBR7; Sat, 13 Mar 2021 18:30:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BE15400C8;
	Sat, 13 Mar 2021 18:30:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 267CE1BF44A
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 18:30:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22FC1400C5
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 18:30:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m58hatzbN31k for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 18:30:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com
 [IPv6:2607:f8b0:4864:20::233])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1982E400C4
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 18:30:40 +0000 (UTC)
Received: by mail-oi1-x233.google.com with SMTP id w65so30367215oie.7
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 10:30:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=esEtWy9nM436CPDJLtFWuCh5LHQvPlgdcQs641np8Pk=;
 b=XP8on/ZWNaaJyW18QgpGYeaCi+36r7oVSc/pUeP4SS16c3fQ9g4CLgz7m6kT/1scxF
 7FFlmVz7Hd6658q3YgnTkkt1zoILizGjH5dncQGeN69nSv8D1+f70NnEKwVRWsF5afpf
 uyITP3x00bJJ8+DRhuNi/e2MRDtmIJ0H+Reozl4mNoPWqMTTm5Les1HzMuKcmmmIYBIf
 NXmQiUxbRykx8iDt0fdrUIgUbluhNAwq+pKmM+oaghcECM6VtgHXrGSSzs1lFl+qEGCQ
 0XsJNljIEBeE4ncJGmZUEiClHMkpwBPhfHqqX5JcV/MrlpaS05dRLImiuwUZECHAR4/B
 xZQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=esEtWy9nM436CPDJLtFWuCh5LHQvPlgdcQs641np8Pk=;
 b=ArIvKJ7qiDsrx9vlEO7vRWyymmUbJewd8IKJP++FubuqO25sYCqilHsumlqR29Xfey
 lXGR5yGKaUeN+mtl6mJ5rXCnyCscXrFdVZybBHPVeSc2xnllCjFV/sacaUMMvIz42q++
 f4VqML1AEhB1D8pWpCPLI1K42CjkjV0i7a5LgZp5dJcFBtJjbMOkCw12WQ6cm7fsjqvY
 JlORBkvAXz0nJyM4eH+8uImaOswBz8xAQ3mLN7j+8tbWxfxkhsAUzzFHI64XLO1H1H/9
 UrCrFfeItzL/nbklOFYzFA5Nb+Ba2Nc+rWZ2q+pHaJIB3RhQO60om0YyQrlgFK85J3Uz
 6Gug==
X-Gm-Message-State: AOAM530tCalm68lWJsPf04ho9C4tCN8mCnv296iro6pxaovcOPRv40BQ
 /rQAvdOmFsJqrWoJwUqZ0dY=
X-Google-Smtp-Source: ABdhPJxwZP7d9ngg67hP3VC+8ZmowUd6n5lBgFHup6+OYmKwdCDxbfk+DGSDChlwWie9gQbOycRUpw==
X-Received: by 2002:aca:47c4:: with SMTP id
 u187mr13814265oia.136.1615660239144; 
 Sat, 13 Mar 2021 10:30:39 -0800 (PST)
Received: from madhuleo.lan (cpe-24-27-52-237.austin.res.rr.com.
 [24.27.52.237])
 by smtp.googlemail.com with ESMTPSA id f192sm2438948oig.48.2021.03.13.10.30.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Mar 2021 10:30:38 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net, gregkh@linuxfoundation.org, sbrivio@redhat.com,
 briana.oursler@gmail.com, rapiz@foxmail.com
Subject: [PATCH] staging: vt6655: Fix camelcase
Date: Sat, 13 Mar 2021 12:30:19 -0600
Message-Id: <20210313183019.368317-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: madhumithabiw@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch.pl - Avoid CamelCase: <byVT3253InitTab_RFMD>

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/baseband.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index 1aa675241599..d89163299172 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -52,7 +52,7 @@
 /*---------------------  Static Variables  --------------------------*/
 
 #define CB_VT3253_INIT_FOR_RFMD 446
-static const unsigned char byVT3253InitTab_RFMD[CB_VT3253_INIT_FOR_RFMD][2] = {
+static const unsigned char by_vt3253_init_tab_rfmd[CB_VT3253_INIT_FOR_RFMD][2] = {
 	{0x00, 0x30},
 	{0x01, 0x00},
 	{0x02, 0x00},
@@ -2002,8 +2002,8 @@ bool bb_vt3253_init(struct vnt_private *priv)
 		if (by_local_id <= REV_ID_VT3253_A1) {
 			for (ii = 0; ii < CB_VT3253_INIT_FOR_RFMD; ii++)
 				result &= bb_write_embedded(priv,
-					byVT3253InitTab_RFMD[ii][0],
-					byVT3253InitTab_RFMD[ii][1]);
+					by_vt3253_init_tab_rfmd[ii][0],
+					by_vt3253_init_tab_rfmd[ii][1]);
 
 		} else {
 			for (ii = 0; ii < CB_VT3253B0_INIT_FOR_RFMD; ii++)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
