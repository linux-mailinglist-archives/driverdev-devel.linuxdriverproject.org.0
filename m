Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1FDCF311
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 08:56:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6E0FD2262E;
	Tue,  8 Oct 2019 06:56:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XAenib31ZasI; Tue,  8 Oct 2019 06:56:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F161322201;
	Tue,  8 Oct 2019 06:56:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C5DC1BF289
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:56:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 093398740E
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:56:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vaAOeZz9jQS2 for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 06:56:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B7596813F6
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 06:56:39 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id q15so8035797pll.11
 for <devel@driverdev.osuosl.org>; Mon, 07 Oct 2019 23:56:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6T/4Lvluvbm88296a8nKj4LmCOKBMJXLbkw8XRqDiPY=;
 b=iP/I4YmpUxW9U+3xP28cqyP0JyoqnULLmZHCIsHnsj0sOHjowbynKVBdiH2Cn1H6t6
 galdGqXX9B5a4+hzgDtVfnk1nIZuVBWmH5LvN2K1LgAbR81MgKUMn8ZoJEo4E+4vCDxd
 QgA7xEIiGmmCrZJbacvT+GpEUHm/3PLBiZEPVaVkjgOcPbplJw40zrJuFd0gLOzzM5n3
 bJsX0YcM0vVKFQ7UpbxBUfDYHV5YhrnB3wPLDfZqjt6CGEvs5aieLp6sCREg6pYSIRI2
 /9IHI+yfEB8vazards9+aFd9MqqBaDQR57TA2g+HPURUlYyFL6i5ZccZ+aXTs/ADRsZN
 PpQQ==
X-Gm-Message-State: APjAAAUIgWnKDaSbQss1un1UDYgOckqXL3ygXmMyiF2+WOhKFj5q6wUl
 W898fvqAVSxueztpvvBboIE=
X-Google-Smtp-Source: APXvYqzUCoVYz9h0KgjngrRLRyxxVw9DiEQi2AGG3jL7Pw2wqdh4kgBz2uu5ekl2m5gg2aB4YpHIUQ==
X-Received: by 2002:a17:902:7846:: with SMTP id
 e6mr33550437pln.136.1570517799391; 
 Mon, 07 Oct 2019 23:56:39 -0700 (PDT)
Received: from localhost.localdomain ([183.83.78.173])
 by smtp.gmail.com with ESMTPSA id 195sm21573695pfz.103.2019.10.07.23.56.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Oct 2019 23:56:38 -0700 (PDT)
From: hariprasad@osuosl.org, Kelam@osuosl.org,
	hariprasad.kelam@gmail.com
To: 
Subject: [PATCH] staging: media: make use of devm_platform_ioremap_resource
Date: Tue,  8 Oct 2019 12:25:51 +0530
Message-Id: <1570517752-30991-1-git-send-email-hariprasad.kelam@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>

fix below issue reported by coccicheck
drivers/staging//media/omap4iss/iss.c:915:1-15: WARNING: Use
devm_platform_ioremap_resource for iss -> regs [ res ]

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index 1a966cb..6fb60b5 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -908,11 +908,7 @@ static int iss_map_mem_resource(struct platform_device *pdev,
 				struct iss_device *iss,
 				enum iss_mem_resources res)
 {
-	struct resource *mem;
-
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, res);
-
-	iss->regs[res] = devm_ioremap_resource(iss->dev, mem);
+	iss->regs[res] = devm_platform_ioremap_resource(pdev, res);
 
 	return PTR_ERR_OR_ZERO(iss->regs[res]);
 }
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
