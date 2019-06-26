Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D06E257109
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 20:52:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A0DE860D2;
	Wed, 26 Jun 2019 18:52:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4EP9RiieOLau; Wed, 26 Jun 2019 18:52:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DFE898459A;
	Wed, 26 Jun 2019 18:52:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3876A1BF41C
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 18:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 359ED8459A
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 18:52:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ry0XYDaMBf9k for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 18:52:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A9E5584589
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 18:52:33 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id cl9so1909550plb.10
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 11:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=jFUQd1a4KGSPHNAxPDeMNjxKEsd1P+Yd6RvsJx/5uQc=;
 b=HOxVhJOTySx9Jybho1j8q1uMX5VGq6y0o6AXMcSjfoJ4/KBSXdAUO16s5x0IuDodcO
 grpU9pElitmixZ3CWDWnBW34hExdqbMGOIBmLULt8SxkdS7SHtwoeMrvIIsirzIJQL+M
 MVjzeShwpTCRnidbpUMiW37SwtuG3qMzyJTVzVBvdyLnMAzoox8jwmGyhUYkU0iLci5f
 f9bOC2N6QrgG+yce5wqxaj9+uFqgB5PgfkKSkWlgHFNuunEPchYWVrNOdNoiK+43MdJQ
 McYZFt03ftsZVRUmw9XVX2hQrWE+GZdrkeKSVoXr693OkHZAo/VQdoau2YyfuPBgtseg
 2fpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jFUQd1a4KGSPHNAxPDeMNjxKEsd1P+Yd6RvsJx/5uQc=;
 b=t16SxRNiXJSFVg9jFXRUcFXgpSNyUuIMYOoeB/RS5CO4vaiHgq3yff062uc/5P2rqc
 sj5Qf/7Wl7EyWnnQlX14cSB4bRRqqTAX4fqLPMDZGb2cTwP+csbrhd1Rn9pmBc5RlUxP
 hwCfgfZzLfIRq+7gICr32Gna8zJkDDwmrDftAQPWFGHA2P9P3OOswqIQA0Lsa+CDIGQB
 2gOO0v2iutae5uAMI2QAvXiyCHff1/5GgVCmvqeBU6CTt2tXAC2m7Cr19gzHpGzI6tlp
 BaOVmy/u3tbdMIx3MDKWXNhs/JOVMICPJfnCJNsxxzWOx+6UJq/xI4dbKZ6wDIGT1r0i
 Mukg==
X-Gm-Message-State: APjAAAXI4WaisfSQVr40nCK9CDyGd7WG/itXBEMHXLcKE0E2CFQ338rC
 ZpRppzHYlJYgj+hh7UjxBkM=
X-Google-Smtp-Source: APXvYqx8xcuzPF+3Q1H4Ucd6o7WTHj8KA2X/LjdtxpnaqkwN20/DS8zjhdwPiDFcZDkNITcE2JX/jg==
X-Received: by 2002:a17:902:934a:: with SMTP id
 g10mr7349836plp.18.1561575153144; 
 Wed, 26 Jun 2019 11:52:33 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id y16sm24891832pff.89.2019.06.26.11.52.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 11:52:32 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] media: staging/imx: Fix NULL deref in find_pipeline_entity()
Date: Wed, 26 Jun 2019 11:52:25 -0700
Message-Id: <20190626185225.11992-1-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix a cut&paste error in find_pipeline_entity(). The start entity must be
passed to media_entity_to_video_device() in find_pipeline_entity(), not
pad->entity. The pad is only put to use later, after determining the start
entity is not the entity being searched for.

Fixes: 3ef46bc97ca2 ("media: staging/imx: Improve pipeline searching")

Reported-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-utils.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
index b5b8a3b7730a..6fb88c22ee27 100644
--- a/drivers/staging/media/imx/imx-media-utils.c
+++ b/drivers/staging/media/imx/imx-media-utils.c
@@ -842,7 +842,7 @@ find_pipeline_entity(struct media_entity *start, u32 grp_id,
 		if (sd->grp_id & grp_id)
 			return &sd->entity;
 	} else if (buftype && is_media_entity_v4l2_video_device(start)) {
-		vfd = media_entity_to_video_device(pad->entity);
+		vfd = media_entity_to_video_device(start);
 		if (buftype == vfd->queue->type)
 			return &vfd->entity;
 	}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
