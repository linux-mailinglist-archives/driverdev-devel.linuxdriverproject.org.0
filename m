Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8541F699E
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jun 2020 16:08:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE048887D9;
	Thu, 11 Jun 2020 14:08:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y2VgWuaMPGxB; Thu, 11 Jun 2020 14:08:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 23E2B8870D;
	Thu, 11 Jun 2020 14:08:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3130F1BF868
 for <devel@linuxdriverproject.org>; Thu, 11 Jun 2020 14:08:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 28FE587A16
 for <devel@linuxdriverproject.org>; Thu, 11 Jun 2020 14:08:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vhNZFT3que_X for <devel@linuxdriverproject.org>;
 Thu, 11 Jun 2020 14:08:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 48EF587A0A
 for <devel@driverdev.osuosl.org>; Thu, 11 Jun 2020 14:08:36 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1jjNsd-0006xu-Ni; Thu, 11 Jun 2020 14:08:31 +0000
From: Colin King <colin.king@canonical.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH] media: atomisp: make const arrays static, makes object smaller
Date: Thu, 11 Jun 2020 15:08:31 +0100
Message-Id: <20200611140831.924488-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.27.0.rc0
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

Don't populate const arrays on the stack but instead make them
static. Makes the object code smaller by 150 bytes.

Before:
   text	   data	    bss	    dec	    hex	filename
 111083	  23692	     64	 134839	  20eb7	atomisp/pci/atomisp_compat_css20.o

After:
   text	   data	    bss	    dec	    hex	filename
 110773	  23852	     64	 134689	  20e21	atomisp/pci/atomisp_compat_css20.o

After:

(gcc version 9.3.0, amd64)

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/media/atomisp/pci/atomisp_compat_css20.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
index 71914d364ad9..9498aecf3be7 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
@@ -2410,13 +2410,13 @@ static void __configure_preview_pp_input(struct atomisp_sub_device *asd,
 	struct ia_css_resolution  *effective_res =
 		    &stream_config->input_config.effective_res;
 
-	const struct bayer_ds_factor bds_fct[] = {{2, 1}, {3, 2}, {5, 4} };
+	static const struct bayer_ds_factor bds_fct[] = {{2, 1}, {3, 2}, {5, 4} };
 	/*
 	 * BZ201033: YUV decimation factor of 4 causes couple of rightmost
 	 * columns to be shaded. Remove this factor to work around the CSS bug.
 	 * const unsigned int yuv_dec_fct[] = {4, 2};
 	 */
-	const unsigned int yuv_dec_fct[] = { 2 };
+	static const unsigned int yuv_dec_fct[] = { 2 };
 	unsigned int i;
 
 	if (width == 0 && height == 0)
@@ -2536,7 +2536,7 @@ static void __configure_video_pp_input(struct atomisp_sub_device *asd,
 	struct ia_css_resolution  *effective_res =
 		    &stream_config->input_config.effective_res;
 
-	const struct bayer_ds_factor bds_factors[] = {
+	static const struct bayer_ds_factor bds_factors[] = {
 		{8, 1}, {6, 1}, {4, 1}, {3, 1}, {2, 1}, {3, 2}
 	};
 	unsigned int i;
-- 
2.27.0.rc0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
