Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4E7229ABC
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 16:55:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 639BF881D9;
	Wed, 22 Jul 2020 14:55:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3au2CarVM2nV; Wed, 22 Jul 2020 14:55:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7217588136;
	Wed, 22 Jul 2020 14:55:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 562101BF36E
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 14:55:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 45DAF204D0
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 14:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K5itWK6OpMpD for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 14:55:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 7BEBF20425
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 14:55:32 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id x8so1107632plm.10
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 07:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eBk8dn3TkE/mXBf9J+w2oBabvbVjCrfi1xVwK+Vqgqw=;
 b=ev6cmxvAmJcG8uKwSIUBEVa6/oL3l8xdeiA7PtFrooZLz5A1LTGpHCweRDRjOsbZI9
 xJ5vka2DHiQMI3yYv/yI3er0WN4B+WRfwwaI5oMZOW4cR02rJqnoAOrhr1eiY21o7Tgs
 89sv4eEbwc5i1mR3WK81S4YdmV5Jbq2yo770mCCcpwPs0OTQt7Cit/CBEngZGxWlDkn9
 +rPcsmac1KE3nCUi/WwNA/cJ8eM+RSU3OsX+rIYEGowxrHOgkWHFKHV53axGaEe0p1xj
 btpLczsLmZgSUyBwVEmvV8By14/bkdD7HIsaAwWlf+y+Tnb+kbqDRWNQpunNeuzz29oO
 v8OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eBk8dn3TkE/mXBf9J+w2oBabvbVjCrfi1xVwK+Vqgqw=;
 b=RWdGUhQ/euQZkT2uLSMaSOfYGj5NzvluJx1ae0tC7SgKFXnhrqfgTXcEmXpynTlRyq
 EEObrOVVUXtAzI8rFw4yA7D+qUUstpFa0rukhyFvibM4TVFkLUsKOqIp6xrqu6OOCy5H
 shka3RxFOPo2dIi8h06Lk7cUfoWL6HKBCoSpU1X34djBF+Req8DjBaASjnuENACTeAJK
 GHYiWOySUXSh16FwYySYVziPvYSTHlQSr8ovlIcVbMfpjo0IFMq5ngD7Bj+U16IInP+B
 wjLKR4BbEe0N91gSdZfP2Om2Z261aa9DUSVZ5iFDxFkv947P5T4AW/GOcDeG8qv1j6lK
 sOlQ==
X-Gm-Message-State: AOAM530HrpHyFKnnXz7qxmj5hd9RF4Sy1gDXn1gYwBelozpPkg/TaEIt
 y/SqpBLPipzzLgRyFKS16vA=
X-Google-Smtp-Source: ABdhPJw76w0kPEqMDGiPNMC3LgNmJdLi4c/82+Yx46SIE0fzhwYuMQnjpKhrCTmnG5E5YsPcg/tjnQ==
X-Received: by 2002:a17:902:7b92:: with SMTP id
 w18mr27157399pll.258.1595429732044; 
 Wed, 22 Jul 2020 07:55:32 -0700 (PDT)
Received: from rahulg-ThinkPad-T450 ([122.175.125.202])
 by smtp.gmail.com with ESMTPSA id m19sm230252pgd.13.2020.07.22.07.55.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jul 2020 07:55:31 -0700 (PDT)
Date: Wed, 22 Jul 2020 20:25:28 +0530
From: Rahul Gottipati <rahul.blr97@gmail.com>
To: mchehab@kernel.org
Subject: [PATCH v3 1/2] media: atomisp: Fix coding style issue - remove
 beginning whitespaces
Message-ID: <250fcbc1d5b766e9494e1ecbc379ed76d7dc28c8.1595429109.git.rahul.blr97@gmail.com>
References: <cover.1595429109.git.rahul.blr97@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1595429109.git.rahul.blr97@gmail.com>
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
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This removes whitespaces at the beginning of a few lines to fix
some checkpatch.pl warnings.

Signed-off-by: Rahul Gottipati <rahul.blr97@gmail.com>
---

Changes in v3:
	Changed style of function headers in response to review comments
Changes in v2:
	Distributed changes across 2 patches instead of the previous 1

 drivers/staging/media/atomisp/pci/atomisp_ioctl.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
index 9404a678fa6f..4fc4bdd85ce0 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
@@ -511,8 +511,8 @@ const struct atomisp_format_bridge atomisp_output_fmts[] = {
 #endif
 };
 
-const struct atomisp_format_bridge *atomisp_get_format_bridge(
-    unsigned int pixelformat)
+const struct atomisp_format_bridge *
+atomisp_get_format_bridge(unsigned int pixelformat)
 {
 	unsigned int i;
 
@@ -524,8 +524,8 @@ const struct atomisp_format_bridge *atomisp_get_format_bridge(
 	return NULL;
 }
 
-const struct atomisp_format_bridge *atomisp_get_format_bridge_from_mbus(
-    u32 mbus_code)
+const struct atomisp_format_bridge *
+atomisp_get_format_bridge_from_mbus(u32 mbus_code)
 {
 	unsigned int i;
 
@@ -606,8 +606,8 @@ static int atomisp_enum_input(struct file *file, void *fh,
 	return 0;
 }
 
-static unsigned int atomisp_subdev_streaming_count(
-    struct atomisp_sub_device *asd)
+static unsigned int
+atomisp_subdev_streaming_count(struct atomisp_sub_device *asd)
 {
 	return asd->video_out_preview.capq.streaming
 	       + asd->video_out_capture.capq.streaming
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
