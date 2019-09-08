Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 994F4ACBD4
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 11:41:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E7B138575B;
	Sun,  8 Sep 2019 09:41:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0zlBFtBd1fzd; Sun,  8 Sep 2019 09:41:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93E77856BF;
	Sun,  8 Sep 2019 09:41:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B8C251BF584
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 09:41:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B570985751
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 09:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uhcIZYzslCwV for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 09:41:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 44747856BF
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 09:41:50 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id q5so7285669pfg.13
 for <devel@driverdev.osuosl.org>; Sun, 08 Sep 2019 02:41:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iGwHkFeTq4Ch3nS6z0dZfBM0FVSc30KetQY+AO7LYNU=;
 b=MqPqEvxpVKq8u/WW41EowBBioXj6GIeiovmjlrLZ3DPlPCh92LtZ/uJjg4EctuTQXa
 BltMzMkc3KdNwEPxv7DgkqO2wE30XztQo+grUaGGPmTgT3aG9pIUqus3ZOm8Orx+N/lj
 yIZes0SpzfDFUsTnZtsWv2PgVb/QHR6BD3tMMmz0W1hy0XEIQkNpd00zptdPR3wsLXvq
 FiVVsu2GonHZG91vITxFBqKjq49PgBEm3veTaHw9DH3JOrvtrQQcf3T2Jc2wJ8MjMcHt
 vBCT9LHYjpzlIcibiVP7RioCZac6d/rX5HtwPnQ6o+dZiJBpIwCcrtunU/qSGQ8TYbD3
 sbhA==
X-Gm-Message-State: APjAAAUJeLsQNR7vRZP1wk318XyoFQktrGE547DDMe4zWTcLh4Qmirxp
 Wqz+ONkY3N+ZwUuO4QyzNdc=
X-Google-Smtp-Source: APXvYqyfr58AEzikbsjUX8n+UyaPsgsWxSvLRqVJE4/irYISC22VPVIEu54qNxxarmv7vS0aQqirxA==
X-Received: by 2002:a62:1e81:: with SMTP id e123mr21235617pfe.52.1567935709931; 
 Sun, 08 Sep 2019 02:41:49 -0700 (PDT)
Received: from localhost.localdomain ([183.83.88.189])
 by smtp.gmail.com with ESMTPSA id p66sm16297284pfg.127.2019.09.08.02.41.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 08 Sep 2019 02:41:49 -0700 (PDT)
From: hariprasad@osuosl.org, Kelam@osuosl.org,
	hariprasad.kelam@gmail.com
To: 
Subject: [PATCH] staging: nvec: make use of devm_platform_ioremap_resource
Date: Sun,  8 Sep 2019 15:11:01 +0530
Message-Id: <1567935662-8006-1-git-send-email-hariprasad.kelam@gmail.com>
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
 linux-tegra@vger.kernel.org, ac100@lists.launchpad.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>

fix below issue reported by coccicheck
drivers/staging//nvec/nvec.c:794:1-5: WARNING: Use
devm_platform_ioremap_resource for base

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/nvec/nvec.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 1cbd7b7..360ec04 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -767,7 +767,6 @@ static int tegra_nvec_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct nvec_chip *nvec;
 	struct nvec_msg *msg;
-	struct resource *res;
 	void __iomem *base;
 	char	get_firmware_version[] = { NVEC_CNTL, GET_FIRMWARE_VERSION },
 		unmute_speakers[] = { NVEC_OEM0, 0x10, 0x59, 0x95 },
@@ -790,8 +789,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
