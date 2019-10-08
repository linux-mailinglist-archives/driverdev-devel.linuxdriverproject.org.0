Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E781CF2D3
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 08:36:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 46CC187E7D;
	Tue,  8 Oct 2019 06:36:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GIEt+4FSgCNS; Tue,  8 Oct 2019 06:36:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 80B428577E;
	Tue,  8 Oct 2019 06:36:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF6201BF289
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:36:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ABBF38666F
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:36:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GAjS9M+sd4nD for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 06:36:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 57A9586418
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 06:36:53 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id x10so9718321pgi.5
 for <devel@driverdev.osuosl.org>; Mon, 07 Oct 2019 23:36:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Zji1Iv0ju0Oy7TpxEwnaFdka+BvKOQHeSRFjFWDYl1g=;
 b=bRWWze3Y4iJh2FRmmMgXJ78bIJ2DCrn3nPKDKnuOIdgGR+qtyqeeocu9Z81oUIRgFE
 jZe4/2Np4Z24pyF4wBdbCS+FQacUJzo8XoOSjSQmpyYv25Ix1bROa3+wySjVLWcPMfXK
 m1ezmp691+CzNJtCzofb0E+Pa9azwUDEOB3Gu0Kqytp3W19cLs+5Rq7v+bepZzHPfQVL
 MNjfdIAkkjdycZuxFe71rI3dxKeDKGzBW3VqPi50qK0kSeixaVN2n/8bRm7T1HgmYgLM
 VQGD3Pa1SOrkCf5mlJ3cDM29wL+zJxGiAbo+kBIHyOMJa+paIyCxQYQmJ/c2PF5edSdn
 KK0g==
X-Gm-Message-State: APjAAAVFjBJGNRIm7m3rwpVIc7ZhVSmQXJWBE9eh2ixl25FOohlU3yCz
 5gUHqdlY2Qa/WL8eKXLDPTY=
X-Google-Smtp-Source: APXvYqxjCcLQQo37rfHX32eJn89ylgi2ImBrGEPfBlKG2OdaAkW/IlzQOFHQRIiK8V2YudnAFXWkaQ==
X-Received: by 2002:a17:90a:cc08:: with SMTP id
 b8mr3848401pju.119.1570516612974; 
 Mon, 07 Oct 2019 23:36:52 -0700 (PDT)
Received: from localhost.localdomain ([183.83.78.173])
 by smtp.gmail.com with ESMTPSA id 2sm17501433pfa.43.2019.10.07.23.36.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Oct 2019 23:36:52 -0700 (PDT)
From: hariprasad@osuosl.org, Kelam@osuosl.org,
	hariprasad.kelam@gmail.com
To: 
Subject: [PATCH] staging: netlogic: make use of devm_platform_ioremap_resource
Date: Tue,  8 Oct 2019 12:06:01 +0530
Message-Id: <1570516565-27591-1-git-send-email-hariprasad.kelam@gmail.com>
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
 Bhagyashri Dighole <digholebhagyashri@gmail.com>,
 Ivan Safonov <insafonov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Wentao Cai <etsai042@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>

fix below issue reported by coccicheck
drivers/staging//netlogic/xlr_net.c:980:2-17: WARNING: Use
devm_platform_ioremap_resource for priv -> base_addr

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 05079f7..204fcdf 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -976,8 +976,7 @@ static int xlr_net_probe(struct platform_device *pdev)
 		priv->ndev = ndev;
 		priv->port_id = (pdev->id * 4) + port;
 		priv->nd = (struct xlr_net_data *)pdev->dev.platform_data;
-		res = platform_get_resource(pdev, IORESOURCE_MEM, port);
-		priv->base_addr = devm_ioremap_resource(&pdev->dev, res);
+		priv->base_addr = devm_platform_ioremap_resource(pdev, port);
 		if (IS_ERR(priv->base_addr)) {
 			err = PTR_ERR(priv->base_addr);
 			goto err_gmac;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
