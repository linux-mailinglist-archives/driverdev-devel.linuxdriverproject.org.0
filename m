Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5921D6633
	for <lists+driverdev-devel@lfdr.de>; Sun, 17 May 2020 07:47:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BA77F86C1B;
	Sun, 17 May 2020 05:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TkBRvR4tTvhq; Sun, 17 May 2020 05:47:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CBB2286AE3;
	Sun, 17 May 2020 05:47:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A16601BF48C
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 05:47:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9DEA886AE3
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 05:47:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gxoxLDCT4nJZ for <devel@linuxdriverproject.org>;
 Sun, 17 May 2020 05:47:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4BF3B86ADD
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 05:47:23 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id t40so3139088pjb.3
 for <devel@driverdev.osuosl.org>; Sat, 16 May 2020 22:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=drmII/PwGs2+j+RC/yUKrWEgxCX9gLQZgVT9e2wht+c=;
 b=WzUYx0wYfkC13YkdNT/husM8BOe7dmAbzZac3CVLTwuF/tG87AgQBU2iZsVagBcAFK
 NrGpTa4TXzk3oqL3VHxHFn3yuwq+SHOmlaY5JM5ZoeUW+I6O6YNvd6d8kOFQVp1WT1YY
 zWfUcNpZIPCP/DlNDgqTa7/pMbr2rPH02TQqkQf26OWuU/ZVfIdFKoctbRVsDy76Ok3k
 Ht7O+zm50YbFrylSy5v5J5GS5g/Pncn+rFgilkxUw4yBAOoRprBMQtSf5MOUrc8C3tMR
 kFvRLdr7cPhYjA2y3/qlQupLk26IwvqcENTK0XnoxZPhdDma0awdiYKjRj7XARUoyCyC
 3Cyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=drmII/PwGs2+j+RC/yUKrWEgxCX9gLQZgVT9e2wht+c=;
 b=A0yA09/DzzEy5+wvrbCvtaxY73yvcgAQPC2eXf0fs7nadYYjNMg70JDl6r/xd2kXNm
 ZFiHu5086LPIdrOBKb12BB156Oa83qDe+JThj/gHILKCMTJzDTCLZAa6P+qrgvZfA0m4
 CUhi/xTeqBtTJ98z2/7ZOtdpEwo2FKgaE9shWJe6PMaUDGA/b95EnHYEgNLPHKdZ2CSS
 PmsO6+VIOgViQ/KiNl5/oDW8LUSZhrI29D3FGY5mHpYURZkD5dd6SV1S3QUNBBqEz9Ac
 i9dh2oqwqbKogf2zVp3nexm9mxz81MEOFAVwp89Z4d3ei6nmp/eROVCUZmRkhgs5e5TE
 /ZDg==
X-Gm-Message-State: AOAM531kfPh46LFgZddKssY9OXyNWY/w+YIcKSPfT+MA5ixEbRTC1E0l
 kbo3IoJ1DUFlLmzBtY3Hf9k=
X-Google-Smtp-Source: ABdhPJye4WrT8yxOZNSKYH+VbCBliyGbSYG3H3GtqNgBv6eSe+mFst0mHVKXrqp9MpENO6SjSLpu+A==
X-Received: by 2002:a17:90a:e30e:: with SMTP id
 x14mr10799845pjy.141.1589694442867; 
 Sat, 16 May 2020 22:47:22 -0700 (PDT)
Received: from localhost ([203.205.141.39])
 by smtp.gmail.com with ESMTPSA id v5sm875450pjy.4.2020.05.16.22.47.21
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 16 May 2020 22:47:22 -0700 (PDT)
From: Xiangyang Zhang <xyz.sun.ok@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com
Subject: [PATCH] staging: qlge: unmap dma when lock failed
Date: Sun, 17 May 2020 13:46:38 +0800
Message-Id: <20200517054638.10764-1-xyz.sun.ok@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Xiangyang Zhang <xyz.sun.ok@gmail.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

DMA not unmapped when lock failed, this patch fixed it.

Signed-off-by: Xiangyang Zhang <xyz.sun.ok@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index a9163fb659d9..402edaeffe12 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -227,7 +227,7 @@ int ql_write_cfg(struct ql_adapter *qdev, void *ptr, int size, u32 bit,
 
 	status = ql_sem_spinlock(qdev, SEM_ICB_MASK);
 	if (status)
-		return status;
+		goto lock_failed;
 
 	status = ql_wait_cfg(qdev, bit);
 	if (status) {
@@ -249,6 +249,7 @@ int ql_write_cfg(struct ql_adapter *qdev, void *ptr, int size, u32 bit,
 	status = ql_wait_cfg(qdev, bit);
 exit:
 	ql_sem_unlock(qdev, SEM_ICB_MASK);	/* does flush too */
+lock_failed:
 	dma_unmap_single(&qdev->pdev->dev, map, size, direction);
 	return status;
 }
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
