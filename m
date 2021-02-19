Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 715BF31F8B5
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 12:58:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 938A986BED;
	Fri, 19 Feb 2021 11:58:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 82gXPmhBMHwL; Fri, 19 Feb 2021 11:58:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B25886BA4;
	Fri, 19 Feb 2021 11:58:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E59611BF2C2
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 11:58:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E201886BA4
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 11:58:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JILXPzaUDwRY for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 11:58:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
 [209.85.215.171])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0836C86B63
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 11:58:16 +0000 (UTC)
Received: by mail-pg1-f171.google.com with SMTP id n10so3948358pgl.10
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 03:58:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HM61s4xJEITX1260Yi2S3Cw2Oex7u+VUt8mimJABho8=;
 b=pnRaU3E2PHxoiMxlyffsa+ZxUXZtUX8m/QNpQTkkPLvgFy7mQvF9b5zAbCDm+gMSwb
 s0UB4+g+qSWmYOwQ3PJ4R+Tt/LM3k1SYqOdkvGWNF0YUfIlhBX7ovhxzttA6AFzC1suY
 dv7FLPesy3DRq0u2XE+Ah7tdKyx6R0FmBIQettaEPUh52bb0VCho5F68qmnQ/bZTqCJM
 pZg4K6o1H3e3hWbjU9j9QEK0RgTnRMFBNlt6OOoZQkN4R43TvlE804vyNLpma5rBWC75
 qTM222c0KENjjpNxS6+ySaNM006tCtQr80pJqCnMudkfp3DJpAy/FY2fHv3xGmbjXhfi
 PC9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HM61s4xJEITX1260Yi2S3Cw2Oex7u+VUt8mimJABho8=;
 b=Q0iRRRi0crxXfa07lpuBXQR/ErIfpHAqu3avMgVqK9LmM1ADy/7ZlKDQ4+WEpSk6eK
 1vF5W7byvwVuNXOJJl0j/04FeRyE/XqZJVNdzW2qo6aU6huFSCfmByjuqJfvJA8o/Pzh
 vLdS2YyWq4FOhTbeKHjYV9JuOXn0ElrsTWc4a3SyylU55fZOTH7Kk9872ulxpo3KZhc8
 YRZPoGm9wNSkBZIm7x/wOEPH03GOnnvR99y73Hw4/XBDfWbZRWRVEkfLU362sW2Hpa2I
 0As3Tn0jCX8GUuaC1Q0FngoUmfr/UA8NYcBVjbrgGuFAPe1oXn5brd5Dq1/D/HS4rlVD
 X5ew==
X-Gm-Message-State: AOAM530Wmzl4VY2eCZH3areEOqA/kPGAxF7gmqRRZijSPwILLG4fArpp
 U06Ezppkv8wwHL1TM4dcZgw=
X-Google-Smtp-Source: ABdhPJxDLwDvdQaxXrrR3rxOQ+oLiF9QVUwHtlkTAYZENKwKwpkTbYB4E0R7wDFhC5o3p8jakeBHVg==
X-Received: by 2002:a62:5344:0:b029:1df:c7d:3c3e with SMTP id
 h65-20020a6253440000b02901df0c7d3c3emr9056482pfb.11.1613735895529; 
 Fri, 19 Feb 2021 03:58:15 -0800 (PST)
Received: from amrit.domain.name ([122.181.96.92])
 by smtp.gmail.com with ESMTPSA id 14sm9652648pfo.141.2021.02.19.03.58.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 03:58:15 -0800 (PST)
From: Amrit Khera <amritkhera98@gmail.com>
To: gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, christian@brauner.io,
 hridya@google.com, surenb@google.com
Subject: [PATCH v2] staging: android: Fix const keyword style issue in ashmem.c
Date: Fri, 19 Feb 2021 17:12:38 +0530
Message-Id: <20210219114237.5720-1-amritkhera98@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Amrit Khera <amritkhera98@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This change fixes a checkpatch warning for "struct file_operations
should normally be const".

Signed-off-by: Amrit Khera <amritkhera98@gmail.com>
---
Changes in v2:
 - Wrapped the commit description
 - Build tested
---
 drivers/staging/android/ashmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index d66a64e42273..7854fd410efa 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -376,7 +376,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
 
 static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
 {
-	static struct file_operations vmfile_fops;
+	static const struct file_operations vmfile_fops;
 	struct ashmem_area *asma = file->private_data;
 	int ret = 0;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
