Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE6EE945C
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Oct 2019 02:04:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8C6E087AF4;
	Wed, 30 Oct 2019 01:04:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ru-BzraE84Z5; Wed, 30 Oct 2019 01:04:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D6125879F5;
	Wed, 30 Oct 2019 01:04:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1EFF21BF9BF
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 01:04:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0D4F12156C
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 01:04:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vhJTEnsXR5Ax for <devel@linuxdriverproject.org>;
 Wed, 30 Oct 2019 01:04:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 98F7B20519
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 01:04:28 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id v3so3150807wmh.1
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 18:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EZMZvZw5xIVfUz0rzmj9BJHoyhjJUnzATCK033QQWZA=;
 b=pCsfDwB6/b5ZeJiydhA6zZlaPuMPoMyiAJIAW4RGMSYnVpdEzcXBO6v0nqB0y4d2A/
 w9RWG2KD7WRCxBmqIfo7JNn23KrtOldirVEdEcb6W/Ke0thu0iD4D6aXpaNPFXTQ6PS3
 v2KTAeVOJy6huKIe+vUf2cCPg6JStVuZQezA8ecdH+iA+jRLknupVEiPnFyAFRL3clcZ
 hDRx/iVHhj8YNoj26CVSMuFo26NZxx8bBnHh9zOMhv/Ptbv1y7IOeftYF+7lLen/6XCV
 3DjGpK+AsJNtpb+DLPw/YryXUxThPt0Flnqd71GqmfTpENS7iaz28i5KrFYJzaj5lGxM
 c6Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EZMZvZw5xIVfUz0rzmj9BJHoyhjJUnzATCK033QQWZA=;
 b=USwe7WlDfpDRqmqAzesKKp2YUxD/1eMk9gPTmTb9BaWNvMmKfFInj7K/HhhL19Elf1
 fbbMo1xZgpCXAnWhFkl4R9zIku8lw+fHwpKW6VeNMlvckdDmj47E4oixrWPdWOJYlNOS
 Jv8vioe52c2p8JjUk02XeXmcAgveKLc0p9lB8V1cfGl2i+NPAH1Qd308z6SJaiTzfQa8
 gljsNp/Z2+GLZBlx8EnT1dpwbv4m4vQrZHqgXwsrFswvKEPh6GCDPrE/+tBBO0sgExyu
 wCULVDkXkOeTLhq0IFHFQrNuOCzUQVlA9hbkSV/3wF4GIw9sOw/y2ZMgx1dJ2uHsv3h2
 Cu2w==
X-Gm-Message-State: APjAAAUn221RlUT9t38cvDSP4fB/5GGprfVtS/efWBmSelVm3xKNGYi+
 g0ccEfMPeFX9Xu6pVE6qcPI=
X-Google-Smtp-Source: APXvYqyFD+shcmmnjNcgWEMzxaOKetRfDKBwI6qKLrLe15w2qWli/ypMkmV9cTwhgwnGHD/OytpGvw==
X-Received: by 2002:a1c:f714:: with SMTP id v20mr6816581wmh.55.1572397467012; 
 Tue, 29 Oct 2019 18:04:27 -0700 (PDT)
Received: from localhost ([92.177.95.83])
 by smtp.gmail.com with ESMTPSA id s17sm404542wmh.3.2019.10.29.18.04.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 18:04:26 -0700 (PDT)
From: Roi Martin <jroi.martin@gmail.com>
To: valdis.kletnieks@vt.edu
Subject: [PATCH 0/6] staging: exfat: fix multiple coding-style issues
Date: Wed, 30 Oct 2019 02:03:22 +0100
Message-Id: <20191030010328.10203-1-jroi.martin@gmail.com>
X-Mailer: git-send-email 2.24.0.rc1
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
 linux-kernel@vger.kernel.org, Roi Martin <jroi.martin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix multiple coding-style issues reported by the checkpatch.pl script in
the exfat module.

Roi Martin (6):
  staging: exfat: remove unnecessary parentheses
  staging: exfat: make alignment match open parenthesis
  staging: exfat: remove unnecessary new line in if condition
  staging: exfat: replace printk(KERN_INFO ...) with pr_info()
  staging: exfat: avoid multiple assignments
  staging: exfat: replace kmalloc with kmalloc_array

 drivers/staging/exfat/exfat_core.c  |  50 +++++-----
 drivers/staging/exfat/exfat_super.c | 136 +++++++++++++++++++---------
 2 files changed, 119 insertions(+), 67 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
