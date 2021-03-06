Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A203F32F8A4
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Mar 2021 07:38:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79C0C4332F;
	Sat,  6 Mar 2021 06:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SFQ43GpYbLBp; Sat,  6 Mar 2021 06:38:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F380414F6;
	Sat,  6 Mar 2021 06:38:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4722C1BF44A
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 06:38:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 360F94ED66
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 06:38:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uw8_2hvRiZ-F for <devel@linuxdriverproject.org>;
 Sat,  6 Mar 2021 06:38:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 866734ED64
 for <devel@driverdev.osuosl.org>; Sat,  6 Mar 2021 06:38:30 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id e6so2844986pgk.5
 for <devel@driverdev.osuosl.org>; Fri, 05 Mar 2021 22:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xqgUCBwByEzSr+WOUvqSnS8dCYqi7wfQ+sbjDLlUbrw=;
 b=BkJBOncWgRw7WMDw606mX3urzitu3rDyLc9xJfzuuJ30Yza9dUivY+lWDNQw81uIar
 jzuSxr/9b5aw4jIObJGe9vWClJpjWG12DG3/41jJRA6H1mYMcuU+RrrQaYsGs/yRujnf
 eQTabO+nT46t9ysHOX7IVAXHgP05yA5bQQRu5Hzz6lanq/XX1nzhReTq5mq/5ZEkFApp
 HZxH1Cp7c5weyI+ZAIH0BKLT4yb+MlJxhhXFBHLF/6rhUy7kQkmJNaEhzNwDBpg0XG1l
 wLfYm3ZBl3Ej88E1q2YfDUyrOrCnhFX+wZ5SQhMk1dVqHcn4f1qC2BgxpabfbvF8Wo6d
 fWpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xqgUCBwByEzSr+WOUvqSnS8dCYqi7wfQ+sbjDLlUbrw=;
 b=PmQszi5GpAIVYOobn7Wwwue9q30FNcyC6RY2RM0nXLgn4z4ebeu3CVsFViCcYSChWD
 hPru/r3iaztoFrYRS/ayjXgqPM0FnL26rUyISfcBRn2xQ/A+QaZohSTa1X6tK5K7OOzO
 wWA143MnyTAHaEOoIp1m6bIWd3U7fjdz7opuaXVZ/2AjnNeLcyymQjcFF9HKrZrxKSeW
 ihkp/Cv29SDUVdBe9N2esPKUAkHa4KEghe/Uay7Yd90WTN5D+eq75ub71K+uLEe65BmF
 FahDf18lAV2kvTo/7b5DASYIRS/jKM7wRPpegosSnj2SOi/z5u8ZKFwA8nzc/sbgfvR+
 mY+w==
X-Gm-Message-State: AOAM531fBmMVhVrrLVNvX4CXWc2wme4xRm37jF5BdAL8328h58KfF+4E
 MlzKAOBcAHB4FEvzUQu8v9Y=
X-Google-Smtp-Source: ABdhPJwaB6kZYuPuX7/Z0OsdSb90MMdYmGjEpmncAGt50rXcMC1F+ildMEqy5VoyMrambRPlwNliKA==
X-Received: by 2002:a05:6a00:854:b029:1b7:6233:c5f with SMTP id
 q20-20020a056a000854b02901b762330c5fmr12409801pfk.73.1615012710036; 
 Fri, 05 Mar 2021 22:38:30 -0800 (PST)
Received: from localhost.localdomain ([103.157.202.86])
 by smtp.gmail.com with ESMTPSA id h7sm4287175pfo.45.2021.03.05.22.38.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 22:38:29 -0800 (PST)
From: nabil5352 <nabil.ibn.mahmud@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: android: ashmem: fixed a struct without const
Date: Sat,  6 Mar 2021 12:38:17 +0600
Message-Id: <20210306063817.674041-1-nabil.ibn.mahmud@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, nabil5352 <nabil.ibn.mahmud@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a struct without const

Signed-off-by: nabil5352 <nabil.ibn.mahmud@gmail.com>
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
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
