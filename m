Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CB672EC0
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 14:22:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8E30B87E46;
	Wed, 24 Jul 2019 12:22:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UiXU4AhUPJqw; Wed, 24 Jul 2019 12:22:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F382987E13;
	Wed, 24 Jul 2019 12:22:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0A2B61BF2BC
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 12:22:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0179E20509
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 12:22:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HI7XkSuvmT4l for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 12:22:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 9103F2010C
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 12:22:25 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id k8so21965065plt.3
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 05:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5jrwtXhDn76+HM9IkbwGS/CKq0jMFrFQjkEarlm8bFk=;
 b=Sh65L6GRouY4RWQZxm0373RhPmBoosFsf/ky4GwW4NkoEFrBWvuZj6fywmjfFP1+Ue
 Vza84142tLDFo0Px+zbERZ/IEwCMY62n2NfSBHTIu8dC2t2QYCqAVsV7CX/xCv9FgzoY
 /3Z/FwcjS5jIpbbcUFMi9cNBd5j9WNIzqlWmEmDsm7lxVfOaMFOXzPL6qj5fBlkzHSWS
 WmSNyOuT/hLfT2kkxB7tylJj5QAjYdNaDk13zYiOm4tAk5b9r+l2bJlZoE8uHipOMdbu
 gF20voD3H14QMu1WiNJqzulpdAbNdnAUhHc+sJzne59SrQL2REyUPpf5sHmHJtCvjwNj
 yyuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5jrwtXhDn76+HM9IkbwGS/CKq0jMFrFQjkEarlm8bFk=;
 b=nR8roh9jJpCLBqnTQoi2kPBZkHFi786bgTxFCJFz2/cWUZEgLr/Nq8pXJ5ku7RHsaz
 zHwa37CdpBOqlGW8kXSqB85iwq5bI9tFDBEF4op7ZPKXjO5vxvIVzRH4qbxyvyNOOm+h
 9zQ4PBXMwT/Cok/oysuiURxwO7EtOA7TU0GuKM/uCArp4zvzqe8eDHl27wbYnTzJwg+7
 k2E16L1oTY4vFBlooE+3B0fs2Zui00SNSp9rExuxBrsN69FQmGTDUvTm8pUHm8zAgjK6
 QRYqR3MPv/9BHcfqseNLpWUEQOP3UcFuopyXj9o4YNghnyyttV2RZKJ8/h01bRJG7t5x
 kLiA==
X-Gm-Message-State: APjAAAWBLs/ttoT8Fek0U7rIxwukgewuqjrl65nXhGoITpQcnjlksn9+
 Ux8GeYnmM6aU5yCIm163/co=
X-Google-Smtp-Source: APXvYqw7EGwaVn+2Xe3yHbqacvsrEv4uLnD/7vtYonYkfFEGm46/7ycU87HN/MTxth/Jxf81WDDe9w==
X-Received: by 2002:a17:902:6a88:: with SMTP id
 n8mr85844173plk.70.1563970945265; 
 Wed, 24 Jul 2019 05:22:25 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id b16sm74205678pfo.54.2019.07.24.05.22.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 05:22:24 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] media: staging/intel-ipu3: Use dev_get_drvdata where possible
Date: Wed, 24 Jul 2019 20:22:19 +0800
Message-Id: <20190724122219.21585-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Instead of using to_pci_dev + pci_get_drvdata,
use dev_get_drvdata to make code simpler.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/staging/media/ipu3/ipu3.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3.c b/drivers/staging/media/ipu3/ipu3.c
index a7372395a101..06a61f31ca50 100644
--- a/drivers/staging/media/ipu3/ipu3.c
+++ b/drivers/staging/media/ipu3/ipu3.c
@@ -778,8 +778,7 @@ static int __maybe_unused imgu_suspend(struct device *dev)
 
 static int __maybe_unused imgu_resume(struct device *dev)
 {
-	struct pci_dev *pci_dev = to_pci_dev(dev);
-	struct imgu_device *imgu = pci_get_drvdata(pci_dev);
+	struct imgu_device *imgu = dev_get_drvdata(dev);
 	int r = 0;
 	unsigned int pipe;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
