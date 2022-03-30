Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B08A24EC0C6
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Mar 2022 13:52:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B21641C8C;
	Wed, 30 Mar 2022 11:52:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DtrTmqg_l8dL; Wed, 30 Mar 2022 11:52:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B75BC40A05;
	Wed, 30 Mar 2022 11:52:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8CC3C1BF5A4
 for <devel@linuxdriverproject.org>; Wed, 30 Mar 2022 11:52:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B061847B3
 for <devel@linuxdriverproject.org>; Wed, 30 Mar 2022 11:52:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IF3MZx_ghEXa for <devel@linuxdriverproject.org>;
 Wed, 30 Mar 2022 11:52:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C9A7284545
 for <devel@driverdev.osuosl.org>; Wed, 30 Mar 2022 11:52:23 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1C9856137A;
 Wed, 30 Mar 2022 11:52:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 861CBC36AE2;
 Wed, 30 Mar 2022 11:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648641142;
 bh=+LlN6is2oOq9hSTl4jDvC8cIgW19PtekWjYIVYSEn/E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nzn08dPm/+eLykwFXa7XoWDMmSh03R2FUVpVII8H2u9FbHtsQIGth7yepWC9rYUiL
 malf9LMIRE29RotLYBk5w8gjlzTAHg+99IZT22TjFp+7Drnz5HhIk2yiSFdlOmQDAD
 mUIdtJ86PBNAc/mHc8F6cspKwbsCy2YTGb5kXXF9KhQ8YTe6GbRdtKypNh2rC9f/WW
 ajBgwCMwH5DC2maADvlKmetGi3tcjde3Vx3/C4KpDwfJsENRkIOi0KL+iGqcA44oCj
 sHPkFeiXeY/pndSW+mP0uE+RcqRZf9j3hxXhhbrmaT1X85vzJmvgVpteAVooMr8pho
 vyycimK99MUcA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 36/37] media: atomisp: fix bad usage at error
 handling logic
Date: Wed, 30 Mar 2022 07:51:21 -0400
Message-Id: <20220330115122.1671763-36-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220330115122.1671763-1-sashal@kernel.org>
References: <20220330115122.1671763-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org, Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Mauro Carvalho Chehab <mchehab@kernel.org>

[ Upstream commit fc0b582c858ed73f94c8f3375c203ea46f1f7402 ]

As warned by sparse:
	atomisp: drivers/staging/media/atomisp/pci/atomisp_acc.c:508 atomisp_acc_load_extensions() warn: iterator used outside loop: 'acc_fw'

The acc_fw interactor is used outside the loop, at the error handling
logic. On most cases, this is actually safe there, but, if
atomisp_css_set_acc_parameters() has an error, an attempt to use it
will pick an invalid value for acc_fw.

Reported-by: Hans Verkuil <hverkuil@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../staging/media/atomisp/pci/atomisp_acc.c   | 28 +++++++++++++------
 1 file changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_acc.c b/drivers/staging/media/atomisp/pci/atomisp_acc.c
index f638d0bd09fe..b1614cce2dfb 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_acc.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_acc.c
@@ -439,6 +439,18 @@ int atomisp_acc_s_mapped_arg(struct atomisp_sub_device *asd,
 	return 0;
 }
 
+static void atomisp_acc_unload_some_extensions(struct atomisp_sub_device *asd,
+					      int i,
+					      struct atomisp_acc_fw *acc_fw)
+{
+	while (--i >= 0) {
+		if (acc_fw->flags & acc_flag_to_pipe[i].flag) {
+			atomisp_css_unload_acc_extension(asd, acc_fw->fw,
+							 acc_flag_to_pipe[i].pipe_id);
+		}
+	}
+}
+
 /*
  * Appends the loaded acceleration binary extensions to the
  * current ISP mode. Must be called just before sh_css_start().
@@ -477,16 +489,20 @@ int atomisp_acc_load_extensions(struct atomisp_sub_device *asd)
 								     acc_fw->fw,
 								     acc_flag_to_pipe[i].pipe_id,
 								     acc_fw->type);
-				if (ret)
+				if (ret) {
+					atomisp_acc_unload_some_extensions(asd, i, acc_fw);
 					goto error;
+				}
 
 				ext_loaded = true;
 			}
 		}
 
 		ret = atomisp_css_set_acc_parameters(acc_fw);
-		if (ret < 0)
+		if (ret < 0) {
+			atomisp_acc_unload_some_extensions(asd, i, acc_fw);
 			goto error;
+		}
 	}
 
 	if (!ext_loaded)
@@ -495,6 +511,7 @@ int atomisp_acc_load_extensions(struct atomisp_sub_device *asd)
 	ret = atomisp_css_update_stream(asd);
 	if (ret) {
 		dev_err(isp->dev, "%s: update stream failed.\n", __func__);
+		atomisp_acc_unload_extensions(asd);
 		goto error;
 	}
 
@@ -502,13 +519,6 @@ int atomisp_acc_load_extensions(struct atomisp_sub_device *asd)
 	return 0;
 
 error:
-	while (--i >= 0) {
-		if (acc_fw->flags & acc_flag_to_pipe[i].flag) {
-			atomisp_css_unload_acc_extension(asd, acc_fw->fw,
-							 acc_flag_to_pipe[i].pipe_id);
-		}
-	}
-
 	list_for_each_entry_continue_reverse(acc_fw, &asd->acc.fw, list) {
 		if (acc_fw->type != ATOMISP_ACC_FW_LOAD_TYPE_OUTPUT &&
 		    acc_fw->type != ATOMISP_ACC_FW_LOAD_TYPE_VIEWFINDER)
-- 
2.34.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
