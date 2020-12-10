Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0942D4F80
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Dec 2020 01:36:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0686486B60;
	Thu, 10 Dec 2020 00:36:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qZzHcbwEHlC6; Thu, 10 Dec 2020 00:36:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C14DC86B14;
	Thu, 10 Dec 2020 00:36:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C8011BF9C1
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 00:36:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 48EDA87538
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 00:36:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P2ZwV9aDUblh for <devel@linuxdriverproject.org>;
 Thu, 10 Dec 2020 00:36:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1EF1E87507
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 00:36:01 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id g185so3572853wmf.3
 for <devel@driverdev.osuosl.org>; Wed, 09 Dec 2020 16:36:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aoowjq1jthAtfWpi0MYhq4h26LiuoFyZ12DSOAJnPT0=;
 b=XRwPhSfwmOQju2zJrnSz+KuAxip+WEUPZgp8pnS304dhgr/IltVUDJcuJcFtFubr9e
 U8oPTBg5D3D9i10cWZYuznKyvT6zMWw6dkyqkWWXXFd0fHSPkbtpD5CAeu9Tsjn+BnZ7
 ervJZN/wBVFDIr5j0vNeESNHlgVOvCVgtKdzZvvibjkDs83FikVqI6kMA6tFpcIbzTWa
 Rva9nXP5VXnADWcZHk5wW3PE4ZvPns05425G7c8lQZF6yBWKMuyzVQR9nlo6YtwOCU+g
 kdHjWlddY2TrQipIBR2vho3PzrjsB55YmwegBzN0+zTCDSdcWd2JpZTSDHK4VrS3vsNA
 Y2UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aoowjq1jthAtfWpi0MYhq4h26LiuoFyZ12DSOAJnPT0=;
 b=g7wPMAYXQRA6arTHthNJuC/z6vT9rFaM35PNrVFTBY/zRcVyT3Cg3MA8sXfDzlV+eR
 PduA/vHYca386otgq7cSzpj70QiT5uUbR0f6ZMfYYrlhLO835chX5sSIdaFmGfQRXgZf
 LeZr1X+LNe2W9VqYnoUOK7uAoFX3Ch1bSkfN0z12X0X5vgI854l/kxBVwlok9Rn0lIUj
 KDokHuiOT/3CKa1guaC1rHUnV6Kmpk/wq0xd7CsQfVqhoQafFQiTwLbRLoeImVh9kisa
 p0gkoR9GolK76oT98iLC7B5kEkcUcYQi+qUvBh3SFDGfTIOhLKIwzQJt8BwMdAAMKP0J
 ZsiA==
X-Gm-Message-State: AOAM532SAq7cEJxj7VvotJrNmt7P0A0/yD7NEHm5K6zm6d2GtZtgfOAe
 CAo05rCFzsXa6V1A/JbRar4=
X-Google-Smtp-Source: ABdhPJyqaybobGjryFrt72zrRNiOqfMUX2Q7ykw3QMdYXrT98LLGGh7o6mNI5xuIgMzh4Kj2Tb+UKA==
X-Received: by 2002:a1c:c2d4:: with SMTP id s203mr5348933wmf.58.1607560559422; 
 Wed, 09 Dec 2020 16:35:59 -0800 (PST)
Received: from localhost.localdomain (82-132-222-12.dab.02.net.
 [82.132.222.12])
 by smtp.googlemail.com with ESMTPSA id r2sm6350019wrn.83.2020.12.09.16.35.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Dec 2020 16:35:58 -0800 (PST)
From: Triplehx3 <ginge264@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: ralink-gdma: ralink-gdma: Fix a blank line coding
 style issue
Date: Thu, 10 Dec 2020 01:32:28 +0000
Message-Id: <20201210013228.9371-1-ginge264@gmail.com>
X-Mailer: git-send-email 2.28.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Triplehx3 <ginge264@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix a coding style issue as identified by checkpatch.pl

Signed-off-by: Triplehx3 <ginge264@gmail.com>
---
 drivers/staging/ralink-gdma/ralink-gdma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index 655df317d0ee..a6181a167814 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -122,6 +122,7 @@ struct gdma_dma_dev {
 	struct gdma_data *data;
 	void __iomem *base;
 	struct tasklet_struct task;
+
 	volatile unsigned long chan_issued;
 	atomic_t cnt;
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
