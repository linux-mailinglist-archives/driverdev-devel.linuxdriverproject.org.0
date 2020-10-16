Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1580F28FD8F
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 07:12:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BBEA188162;
	Fri, 16 Oct 2020 05:12:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Sa9OjRtAJLo; Fri, 16 Oct 2020 05:12:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2547C878E8;
	Fri, 16 Oct 2020 05:12:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 378FC1BF860
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 05:12:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2A4A520515
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 05:12:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0tvEpFztVmCe for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 05:12:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 8CC0820511
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 05:12:18 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id q25so2315687ioh.4
 for <devel@driverdev.osuosl.org>; Thu, 15 Oct 2020 22:12:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jmROMn/F8/L/kqynBwzUo/X567TM8+lyISej8UbZBgg=;
 b=h6z2vsKiN2JxUuhvrFuz3fE/9pv/Jw5HDw9y+bsieCgTC1Oo65IJ4a68GuHL7cCRK1
 t1c3RBmlO8FxIrLAiSSiFUq/Rn8N4D99KQrvyWg9T91vUJZcylLr1Cw7cGoEnYtJbwNR
 LbJkdBdOrWk6uJJdcJrz9AFuOXxZ133G94flz3kuY6BGKbN+z182B/ZhJZH+zBoHLrpY
 J6LrnSRHYApfxK4kMNbsID4/Y5suPOsY2IstbtarD/5dF1JVij2iRvpWgWjJVfe4X76b
 tLWe3BaEefGfMMtvvBJXRjWHzBeLhJmtZ3qGIit1a+UyMBV7/DwDMnDb9t8fwYnUJALt
 GceQ==
X-Gm-Message-State: AOAM531ekhCAlxjHMJ7eDas1osysGScDyZdIsNDBMsicC1PMz8RSS27p
 AJE5vwX32kw4H+Ii+ZUZwmk=
X-Google-Smtp-Source: ABdhPJzf59dAWSQgVRhnwAvboa31VuHsMvmf0Bg4cDLl8p/4Ba33zy4pc0uxxnqrW/43XfgKd5JSxg==
X-Received: by 2002:a05:6602:208c:: with SMTP id
 a12mr1202856ioa.55.1602825137879; 
 Thu, 15 Oct 2020 22:12:17 -0700 (PDT)
Received: from kazza-VirtualBox.phub.net.cable.rogers.com
 (cpe20f19e128a6a-cm20f19e128a68.cpe.net.cable.rogers.com. [99.232.100.225])
 by smtp.gmail.com with ESMTPSA id y16sm1141624iow.34.2020.10.15.22.12.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Oct 2020 22:12:17 -0700 (PDT)
From: kiransuren@osuosl.org, kirank.suren@gmail.com
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: android: ashmem: changed struct file_operations to
 const file_operations
Date: Fri, 16 Oct 2020 01:11:11 -0400
Message-Id: <20201016051111.1947-1-kirank.suren@gmail.com>
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
Cc: devel@driverdev.osuosl.org, kiransuren <kirank.suren@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: kiransuren <kirank.suren@gmail.com>

Fixed a coding style issue.

Signed-off-by: Kiran Surendran <kirank.suren@gmail.com>
---
 drivers/staging/android/ashmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 10b4be1f3e78..f2b67c4fe8d2 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -376,7 +376,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
 
 static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
 {
-	static struct file_operations vmfile_fops;
+	static const file_operations vmfile_fops;
 	struct ashmem_area *asma = file->private_data;
 	int ret = 0;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
