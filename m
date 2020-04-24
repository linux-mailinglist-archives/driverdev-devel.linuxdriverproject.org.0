Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E151B7F76
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 21:58:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1041286D78;
	Fri, 24 Apr 2020 19:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U-LjQGVNpFB7; Fri, 24 Apr 2020 19:58:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0AC2285E43;
	Fri, 24 Apr 2020 19:58:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2BCBE1BF2C2
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 19:58:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 28AF386174
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 19:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SlrGR2teuKAD for <devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 19:58:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 895C987F39
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 19:58:15 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id i68so8994943qtb.5
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 12:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=A3XPQz7R7FZXT20UmmKFaaeS4yksZtiocodJLBHbiYc=;
 b=F2Ka3sr1kfzPB2y5reGyinI53PYXqPYk95Z5eu7UmYUBWb8iHjv+reSNCaKBjlPU2K
 4Cbp0Lsmt4SH8TWsuOo0bd/2Ai/ymfU5VtoABZylrKZVcO9Rx8+Q90TPHThTGRx2RF7f
 PpK+mRO/yeyH6WdKA992quQoHvIo+uFk/wMqD11sSvD0Nts9BVO5rvVSI9+Mh7Ruw4UH
 UsZOtzjQeogiiPIarGe3Cbg95iW2zWL1CPdGoi8yTVflKUCJm3KFsi+JdTqWSmI46T15
 xwX2A1XCg2DEVXqbPjm1TVTKGXMyoSP/PI3TsUErzEg1j0oqFPROOuo3AEAGHzxYSpJf
 kaog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=A3XPQz7R7FZXT20UmmKFaaeS4yksZtiocodJLBHbiYc=;
 b=dtVbOH7pqO3yKKmWqGAY+zmMfwP5YeyQ90F7dOUZzMLCShG6bnLn6iCHBmpyRhADbR
 RVsdRWbcMz2MXVwih2tJ3QtQPonPYTiUIC7AHHcjqtloQPX7iAl6znfE8eR8CcqhPdRq
 lIau4YvTBe8Zg+lNuZHcbq961T5JMaK+x6nnhSTD6K65+pX42tmMwSHEm4I1Q52owOPR
 K9nJ9qWd+OY8k1gMOSfs9kYmiHGDq/C68TyunF/9tjA1eQHRatjxkPpm70Jgb6mKMOof
 YWeXttNXSjDa4UtX6LpxB0QDYsniez4K4+4dWfQ4HqR66nE396H49sPKDSBMfx8OJbng
 fJNA==
X-Gm-Message-State: AGi0PubHrsMIAcrCJcrKSIVi5GOhaMaQ1XzgdYRGpZIuX1tkJoNv2CJl
 EY9ZR6sL7WNI5kqVBwqJiIA=
X-Google-Smtp-Source: APiQypJDJDu0Olrg+n6dE1MT/s5ZUshYnDdfbpU/SmL/bsxZZU5ZDP8HXI03DPTeHw+bLdLee2tyRQ==
X-Received: by 2002:ac8:73d3:: with SMTP id v19mr11397487qtp.263.1587758294587; 
 Fri, 24 Apr 2020 12:58:14 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4e4:9fd:c16a:b4f7:4f95:6154])
 by smtp.gmail.com with ESMTPSA id
 f188sm4141892qkd.101.2020.04.24.12.58.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 12:58:14 -0700 (PDT)
From: Guilherme Ricioli <guilherme.riciolic@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] staging: media: soc_camera: Enclose macro with parentheses
Date: Fri, 24 Apr 2020 16:56:24 -0300
Message-Id: <1587758184-17867-1-git-send-email-guilherme.riciolic@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch error "ERROR: Macros with complex values should be
enclosed in parentheses" in soc_camera.c:241.

Signed-off-by: Guilherme Ricioli <guilherme.riciolic@gmail.com>
---
 drivers/staging/media/soc_camera/soc_camera.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/soc_camera/soc_camera.c b/drivers/staging/media/soc_camera/soc_camera.c
index 39f513f..c2f96ea 100644
--- a/drivers/staging/media/soc_camera/soc_camera.c
+++ b/drivers/staging/media/soc_camera/soc_camera.c
@@ -238,8 +238,8 @@ unsigned long soc_camera_apply_board_flags(struct soc_camera_subdev_desc *ssdd,
 }
 EXPORT_SYMBOL(soc_camera_apply_board_flags);
 
-#define pixfmtstr(x) (x) & 0xff, ((x) >> 8) & 0xff, ((x) >> 16) & 0xff, \
-	((x) >> 24) & 0xff
+#define pixfmtstr(x) ((x) & 0xff, ((x) >> 8) & 0xff, ((x) >> 16) & 0xff, \
+	((x) >> 24) & 0xff)
 
 static int soc_camera_try_fmt(struct soc_camera_device *icd,
 			      struct v4l2_format *f)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
