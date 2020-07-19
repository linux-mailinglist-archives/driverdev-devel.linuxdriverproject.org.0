Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5B42251A7
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 13:34:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A01F587BC0;
	Sun, 19 Jul 2020 11:34:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fwt4GpGwVGs9; Sun, 19 Jul 2020 11:34:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D45187AF3;
	Sun, 19 Jul 2020 11:34:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF7C41BF46A
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 11:34:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DBF388569B
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 11:34:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CcvS4kl5WCWw for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 11:34:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B1123866F6
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 11:34:52 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E75B920734;
 Sun, 19 Jul 2020 11:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595158492;
 bh=uVWHh1TqjC+xE6xa1USm9QdMA2OAnJSw/OW+SY+sf7w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=leDcwIaInJFE/EUWPaKZz04R6jjvPKM03rxtvj7Cfb1MtYX61gSqt4Xk7Z7NcI02c
 0mcuTuMLTjqyTbbYeKS49HSITMSemNVTaEBlfNPajwJzeqovBPawWCClYbF4nGeym5
 XQCF86PWCwpNb/7aCIND+boDi6Gi4hmIpAOVZieI=
Date: Sun, 19 Jul 2020 13:34:48 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] media: atomisp: fix mask and shift operation on ISPSSPM0
Message-ID: <20200719133448.481cffc5@coco.lan>
In-Reply-To: <20200716145138.1708693-1-colin.king@canonical.com>
References: <20200716145138.1708693-1-colin.king@canonical.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Thu, 16 Jul 2020 15:51:38 +0100
Colin King <colin.king@canonical.com> escreveu:

> From: Colin Ian King <colin.king@canonical.com>
> 
> Currently the check on bits 25:24 on ISPSSPM0 is always 0 because
> the mask and shift operations are incorrect. Fix this by shifting
> by MRFLD_ISPSSPM0_ISPSSS_OFFSET (24 bits right) and then masking
> with RFLD_ISPSSPM0_ISPSSC_MASK (0x03) to get the appropriate 2 bits
> to check.
> 
> Addresses-Coverity: ("Operands don't affect result")
> Fixes: 0f441fd70b1e ("media: atomisp: simplify the power down/up code")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Thanks!

With this patch, we can revert this one too (patch enclosed):

	d0213061a501 ("media: atomisp: fix mask and shift operation on ISPSSPM0")

I tested it already: the IUNIT power on/off code is working properly
after both patches.

Thanks,
Mauro

-
[PATCH] Revert "media: atomisp: keep the ISP powered on when setting it"

changeset d0213061a501 ("media: atomisp: fix mask and shift operation on ISPSSPM0")
solved the existing issue with the IUNIT power on code.

So, the driver can now use the right code again.

This reverts commit 95d1f398c4dc3f55e9007c89452ccc16301205fc.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index e31195816b2d..a000a1e316f7 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -766,17 +766,13 @@ static int atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
 /* Workaround for pmu_nc_set_power_state not ready in MRFLD */
 int atomisp_mrfld_power_down(struct atomisp_device *isp)
 {
-	return 0;
-// FIXME: at least with ISP2401, the code below causes the driver to break
-//	return atomisp_mrfld_power(isp, false);
+	return atomisp_mrfld_power(isp, false);
 }
 
 /* Workaround for pmu_nc_set_power_state not ready in MRFLD */
 int atomisp_mrfld_power_up(struct atomisp_device *isp)
 {
-	return 0;
-// FIXME: at least with ISP2401, the code below causes the driver to break
-//	return atomisp_mrfld_power(isp, true);
+	return atomisp_mrfld_power(isp, true);
 }
 
 int atomisp_runtime_suspend(struct device *dev)


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
