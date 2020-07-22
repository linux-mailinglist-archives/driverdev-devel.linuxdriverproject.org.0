Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5AB229764
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 13:28:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0B94A220E5;
	Wed, 22 Jul 2020 11:28:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QAPICGC6ZNIH; Wed, 22 Jul 2020 11:28:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D06E52046C;
	Wed, 22 Jul 2020 11:28:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E5FF1BF38E
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 11:28:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3AD588863B
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 11:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XU9MmEK71hxX for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 11:28:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C835A88638
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 11:28:35 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 207so1109299pfu.3
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 04:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QRz/9vB9ihwSFnVrvk1F21V7kn+nkhXBAC2KmN40Tc0=;
 b=XY1qaQKKsrnYf9ll7C4uW2w0IPRusZfy2PrOu9uj08G3AVQaP5wkxV+F15JCjapGKc
 9R2oHjdDpGcMBA9QJ+/+u7FgmZzru3dVs5hWZ+8kKF/8gtzpxJ0bpFlZuDXfaaj6YrpI
 7ldZXlmor4vRSde0w8atIcewBjpfrY/gNLL92+C5lwDMibtj1RJui0lv5nzeA7bJrYZh
 DszaLG8zsWEffvCHVY4ZKO+kB8zKZU3L2Szd9QWXcec7IGsQdc2GLj2Dk5c95cG7wwNV
 Bovh19cFku49ax7Cscg8d2QBYZmqUAf4KGpKuZlXFsa2Chlr7xklu5hTdv+0RhjYGp6r
 T5rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QRz/9vB9ihwSFnVrvk1F21V7kn+nkhXBAC2KmN40Tc0=;
 b=g9qYGr+9pjKh1gm42TfUBP7TPwzx7CEF4KrHf5to7Qn76VOgyT1CYSM0AwCcD98RcE
 RuqxwXtEpZK8Fsz4DBI/0IteTtokVA+A3F8RIuPmwKD6KStaMd3q4vVzRQGTz9dMKvgp
 XycRw/3igl/fTuWfcPmlTn67x0w++WOZvfsCTUUWdMhyqjiaPSqrRvWzrRDotKoRcWOS
 fGFP4TogBOq3TGrnzoAsRWmOW9KT3NIn5sUIRIKQI0X3Ww4y3o1mTMa1G/ToXXB6i7gr
 4ygMu4rVOaqTFpCnJjJ7WZqTSbKdPuByCezvLJl8uMQXeV/PNa1FQPuESFHNkhjCMBoQ
 15Iw==
X-Gm-Message-State: AOAM530r77R0HlKzMWHwkC/ykYfq0rWVS8uchUhVtSW+0l4wohpcn6HQ
 PD2fz+jqU799d6O+McLuYPIkolIdjOc7NA==
X-Google-Smtp-Source: ABdhPJzDcgdGQfkQgxhAWWc78GEEPa8O65nyTUsMXpvIZZ2SjKAcsv6wDRn6VtbtRs/U0zpqzmXuoQ==
X-Received: by 2002:a63:e241:: with SMTP id y1mr26974243pgj.410.1595417315369; 
 Wed, 22 Jul 2020 04:28:35 -0700 (PDT)
Received: from rahulg-ThinkPad-T450 ([122.175.73.180])
 by smtp.gmail.com with ESMTPSA id b8sm6681107pjd.5.2020.07.22.04.28.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jul 2020 04:28:34 -0700 (PDT)
Date: Wed, 22 Jul 2020 16:58:31 +0530
From: Rahul Gottipati <rahul.blr97@gmail.com>
To: mchehab@kernel.org
Subject: [PATCH v2 1/2] media: atomisp: Fix coding style issue - remove
 beginning whitespaces
Message-ID: <5b2242008c92871daa5bfb7c9c3cafbbf592228b.1595416585.git.rahul.blr97@gmail.com>
References: <cover.1595416585.git.rahul.blr97@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1595416585.git.rahul.blr97@gmail.com>
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
Changes in v2:
	Distributed changes across 2 patches instead of the previous 1

 drivers/staging/media/atomisp/pci/atomisp_ioctl.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
index 9404a678fa6f..9cdcbe774229 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
@@ -512,7 +512,7 @@ const struct atomisp_format_bridge atomisp_output_fmts[] = {
 };
 
 const struct atomisp_format_bridge *atomisp_get_format_bridge(
-    unsigned int pixelformat)
+				unsigned int pixelformat)
 {
 	unsigned int i;
 
@@ -525,7 +525,7 @@ const struct atomisp_format_bridge *atomisp_get_format_bridge(
 }
 
 const struct atomisp_format_bridge *atomisp_get_format_bridge_from_mbus(
-    u32 mbus_code)
+				u32 mbus_code)
 {
 	unsigned int i;
 
@@ -607,7 +607,7 @@ static int atomisp_enum_input(struct file *file, void *fh,
 }
 
 static unsigned int atomisp_subdev_streaming_count(
-    struct atomisp_sub_device *asd)
+				struct atomisp_sub_device *asd)
 {
 	return asd->video_out_preview.capq.streaming
 	       + asd->video_out_capture.capq.streaming
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
