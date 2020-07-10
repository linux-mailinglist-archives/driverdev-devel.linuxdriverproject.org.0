Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1470521AFAA
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jul 2020 08:45:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EFBEC89B50;
	Fri, 10 Jul 2020 06:45:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 82aei+MCeluO; Fri, 10 Jul 2020 06:45:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F4B78933D;
	Fri, 10 Jul 2020 06:45:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BCE6D1BF333
 for <devel@linuxdriverproject.org>; Fri, 10 Jul 2020 06:45:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B82F78933D
 for <devel@linuxdriverproject.org>; Fri, 10 Jul 2020 06:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Amy4APPIwTDl for <devel@linuxdriverproject.org>;
 Fri, 10 Jul 2020 06:45:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1D1A288DF2
 for <devel@driverdev.osuosl.org>; Fri, 10 Jul 2020 06:45:37 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id 207so2123817pfu.3
 for <devel@driverdev.osuosl.org>; Thu, 09 Jul 2020 23:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HJUQ2Pd7TJkImq79MbbmeRR4vOSl3IUThdPOJ2RuPkM=;
 b=UYFps1qc9r4yUJciGWoc6eYA8p17nl0cKxmW5fNy55sBoKDNEy6mttr1/iezNHu2Ys
 dSGM2vNXaEB60P3PSceO79MgqvVFSqlobE0EDna6S4jfOtTYszpaGxN02R2NLo08RF94
 PCoq8LXIptWbC/T89YXodZjGubAkTp1PapvIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HJUQ2Pd7TJkImq79MbbmeRR4vOSl3IUThdPOJ2RuPkM=;
 b=Br3sKSreeRFIUdCo4WduRUQxyMfPEeD2ruYN4SUUgk2iLbN+imK9seJlv2Fd+eaZZc
 lMD3nlqcE1AHh0vhu0hMOhoPoZBCF7360NFYt01UMvV4Tz1aXwVNmxGGdl2Cv2W3G2Pl
 jjIdh5Sv2wjrnBJWgX9eIF6sIphtM3jYawgHBViKp9RRHGqH1436LMUgWQHPbku7bvlT
 S+vOl9xFkmdc7qKVGE+lS3aJdDfFOZXmdWUgJooOkLil2athzC0zYv+YOa80lnp1T9W1
 QO68d4BvfQgLUUNbqLvfO2oCc/0XbtvJo3LL7WA3wrCaWLm07M1SduEqEiaf7A00r9Cw
 iJGw==
X-Gm-Message-State: AOAM533w76AjVscqLmlh1La+SsxkYnQ8o6/6N6TO66Iji3A668qZLAoU
 MuHuY+p6Aga+WlrqSGmyidKPoA==
X-Google-Smtp-Source: ABdhPJzM+mh9VDZS1ApjNT2oXZNIWcf2wPn7lRZ1OaFiAESlm/XJ5L+agLdQ2nCEk/plUCh78OX1oA==
X-Received: by 2002:a62:5bc5:: with SMTP id p188mr64279447pfb.56.1594363536634; 
 Thu, 09 Jul 2020 23:45:36 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:7220:84ff:fe09:41dc])
 by smtp.gmail.com with ESMTPSA id e8sm4955029pfl.125.2020.07.09.23.45.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jul 2020 23:45:36 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [RESEND PATCH] media: atomisp: Replace trace_printk by pr_info
Date: Fri, 10 Jul 2020 14:45:29 +0800
Message-Id: <20200710144520.RESEND.1.Id0f52f486e277b5af30babac8ba6b09589962a68@changeid>
X-Mailer: git-send-email 2.27.0.383.g050319c2ae-goog
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
Cc: devel@driverdev.osuosl.org, Nicolas Boichat <drinkcat@chromium.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

trace_printk should not be used in production code, replace it
call with pr_info.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---
Sent this before as part of a series (whose 4th patch was a
change that allows to detect such trace_printk), but maybe it's
easier to get individual maintainer attention by splitting it.

 drivers/staging/media/atomisp/pci/hmm/hmm.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm.c b/drivers/staging/media/atomisp/pci/hmm/hmm.c
index 42fef17798622f1..2bd39b4939f16d2 100644
--- a/drivers/staging/media/atomisp/pci/hmm/hmm.c
+++ b/drivers/staging/media/atomisp/pci/hmm/hmm.c
@@ -735,11 +735,11 @@ ia_css_ptr hmm_host_vaddr_to_hrt_vaddr(const void *ptr)
 
 void hmm_show_mem_stat(const char *func, const int line)
 {
-	trace_printk("tol_cnt=%d usr_size=%d res_size=%d res_cnt=%d sys_size=%d  dyc_thr=%d dyc_size=%d.\n",
-		     hmm_mem_stat.tol_cnt,
-		     hmm_mem_stat.usr_size, hmm_mem_stat.res_size,
-		     hmm_mem_stat.res_cnt, hmm_mem_stat.sys_size,
-		     hmm_mem_stat.dyc_thr, hmm_mem_stat.dyc_size);
+	pr_info("tol_cnt=%d usr_size=%d res_size=%d res_cnt=%d sys_size=%d  dyc_thr=%d dyc_size=%d.\n",
+		hmm_mem_stat.tol_cnt,
+		hmm_mem_stat.usr_size, hmm_mem_stat.res_size,
+		hmm_mem_stat.res_cnt, hmm_mem_stat.sys_size,
+		hmm_mem_stat.dyc_thr, hmm_mem_stat.dyc_size);
 }
 
 void hmm_init_mem_stat(int res_pgnr, int dyc_en, int dyc_pgnr)
-- 
2.27.0.383.g050319c2ae-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
