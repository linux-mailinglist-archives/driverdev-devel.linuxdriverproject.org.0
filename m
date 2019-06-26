Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E65E9562AE
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:54:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0ECAD87B82;
	Wed, 26 Jun 2019 06:54:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UQnvIAi6ecAA; Wed, 26 Jun 2019 06:54:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 84710865D5;
	Wed, 26 Jun 2019 06:54:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 863E71BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:54:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 83277865D5
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:54:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4BBNnf4DLFVE for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:54:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9A4E2824BF
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:54:16 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id v9so713411pgr.13
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+XyQGs+fcH7t2rySD/mXQN8KxbxTwLmPOxv5TeIznIw=;
 b=KN6TzgG0LlGsH8d61jl/VtCW+gKVnVREo37+DdWqCT3pS0qhMSKXnaoHOoDaCgG0e7
 Rn90en+3ucxrrRzFIsGAxQS4EUI5Z4AYhQ4vnazNKKORoYRBisgsq1qQWBE8S3y5cKnx
 BLh2/r0hHyUpijc3IDer9t8zkt6TmR+4O2N9LlmQ/ygf2ECZEJFSkgXfZ+sgZalpLqnO
 QOKBU//tMo11Dm+Ht04+Ok99Wp9dMcY7Aup9tG7L0lWEfi+3C6nKaQPyPmu9xN8BdxRS
 CZnEJpG6+4ImbqXx6G3LI5FAeMJRrGQ0ASTLXAbg3vJ+HcyVcv0gCxE+SzO8MkQ0qWFV
 APWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+XyQGs+fcH7t2rySD/mXQN8KxbxTwLmPOxv5TeIznIw=;
 b=FbAXcGnD6mvQ1wsORVLj0ErlzFcpYNE/k2PCvcfyWWvr+7eu6gcoOUeuCmrzA9AIhS
 VdWu0aVkA7FBR/T0mHptQe2hg5DJOdqoc1w80K9lj94l394ANbiqNYasCqxpUqKdGhmI
 DPHqIw/yr42RfPg1lAwYI6T6ot8saIzT/L6+3sYHG9gPcousT8+zlYpOHDJaoJdERenW
 T7pu8K2fQUULco+WgvNTLhIDxmHW8dLC+1Gy5O6FIGt4CPiPUwpphYisskEec6LCBWFy
 RpxHSEZs0LyY/3Hg0yJ9fjzeFs2t7DMqcgD9gaMl7N8cZTmIR2+HwVGs3ezwz67SlybY
 +izw==
X-Gm-Message-State: APjAAAVAl7/7E+bP3Ed0N7gqadqSXyC+KSkpV7JXxv4QNyt91A8ctzb9
 6XhZwscJ0+KsUHGkzoZsyC0=
X-Google-Smtp-Source: APXvYqxb6YoofzgHlBgRh7bq3NPfAIvMMyGASJdEoxw/2GdI3EZgzrA5NGQ76lmIiIhS0z65Zt4g2Q==
X-Received: by 2002:a63:3d8d:: with SMTP id k135mr1422292pga.23.1561532056300; 
 Tue, 25 Jun 2019 23:54:16 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id z11sm970605pjn.2.2019.06.25.23.54.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:54:15 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, abboti@mev.co.uk,
 hsweeten@visionengravers.com
Subject: [PATCH 1/3] staging: comedi: Remove function clk_sce()
Date: Wed, 26 Jun 2019 12:24:02 +0530
Message-Id: <20190626065404.3330-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove function clk_sce as all it does is call clk_gat_sce.
Modify call site of clk_sce to call clk_gat_sce instead.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/comedi/drivers/amplc_dio200_common.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_dio200_common.c b/drivers/staging/comedi/drivers/amplc_dio200_common.c
index 8697dc02ffb4..efd7428c3cee 100644
--- a/drivers/staging/comedi/drivers/amplc_dio200_common.c
+++ b/drivers/staging/comedi/drivers/amplc_dio200_common.c
@@ -46,12 +46,6 @@ static unsigned char clk_gat_sce(unsigned int which, unsigned int chan,
 	       ((source & 030) << 3) | (source & 007);
 }
 
-static unsigned char clk_sce(unsigned int which, unsigned int chan,
-			     unsigned int source)
-{
-	return clk_gat_sce(which, chan, source);
-}
-
 static unsigned char gat_sce(unsigned int which, unsigned int chan,
 			     unsigned int source)
 {
@@ -500,7 +494,7 @@ static void dio200_subdev_8254_set_clock_src(struct comedi_device *dev,
 	unsigned int offset = dio200_subdev_8254_offset(dev, s);
 
 	dio200_write8(dev, DIO200_CLK_SCE(offset >> 3),
-		      clk_sce((offset >> 2) & 1, chan, src));
+		      clk_gat_sce((offset >> 2) & 1, chan, src));
 }
 
 static int dio200_subdev_8254_config(struct comedi_device *dev,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
