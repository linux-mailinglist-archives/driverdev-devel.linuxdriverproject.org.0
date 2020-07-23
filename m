Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B20BD22B36F
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 18:23:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 63E0686CE7;
	Thu, 23 Jul 2020 16:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1lfPpZGbJ38R; Thu, 23 Jul 2020 16:23:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C0BC586CB7;
	Thu, 23 Jul 2020 16:23:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F30D81BF373
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 16:23:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EFB67883FC
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 16:23:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sg9-KnGJPfc2 for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 16:23:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 92BC2883ED
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 16:23:44 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id z5so3360305pgb.6
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 09:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yfVZE7NtYdJUGsjP3O6STFOxzndL23VX/D2iT0ffJ+g=;
 b=V1ktARFIhvMKQ1IxYdxFJADL/UylqOQ00z+Am7Kd1qUnu0QySTpk5Uamc3GH1QHKfo
 2/jqVG1jrdxCJhq/1iw/AYy8jDxZi6irE1+/49+4quaDN6xu83Dz6cbaQKxbl5zVIPWm
 Ffn9OEawxeYHWvtOdi5/rP2jokjo2HmSR9oTy0h97yTnL10RCaMYpg2kKQTXx0zy51ju
 5cPyRScGda2zL33Aw41pHcDh0rRm/Y2OEcnZvj6gA1hI/0U16Nshg6soXCLQDmuo+DOe
 4G+ofNLr9j6ybSmmJoHlVUoW9ldJXGsaG3I/lDmXeu6kGfIe17e8evUvFvkk9YOXwtNw
 Tabw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yfVZE7NtYdJUGsjP3O6STFOxzndL23VX/D2iT0ffJ+g=;
 b=pHpo+yVA/Y960jWvFKYaQ7q49W0ThL/XPBloCFOJKjDVgFb339de42o3wJ0LA53yhW
 0YUhXYOmVBAzfXsFQ/qxUiQH20vxEAbohHoL8Ufta/RbJtRGtSFO1WBY16MphmQHZ35e
 KOVRixJMxboOSS+NPt2ofzgLXHot3DpbIWshTUpGt6rRr5DrCIg/7ztQrmRbjB9l9abV
 lfpKt0Jz0wQdp5yQuIAXiGMaZtFzzKCzUCMFCptXbbi+1qIh4UpbC5zB7K1E0wEW4j52
 xZmNFfBCOSKALwavvXYfW7KIog9Dr8poL//bGIC2Js9I8OSRWMWEcnZjavFeHxg+zE/p
 V3PQ==
X-Gm-Message-State: AOAM530HLgp8aakNiDbIHwOx0L6ekwK6Bys1RmJCQCPQ1BXaD1h3Zv6e
 fzNxPSPuOyDaEU3NloTJSH4=
X-Google-Smtp-Source: ABdhPJzbnnnE6Rh2XjQbhhJ7ROlLAfGKGGLbdklkCo4gn8qqnsOroCD1/9SBEizlhDfPxXMcwd1RSw==
X-Received: by 2002:a63:141:: with SMTP id 62mr4743428pgb.366.1595521424009;
 Thu, 23 Jul 2020 09:23:44 -0700 (PDT)
Received: from pop-os.localdomain ([117.99.80.188])
 by smtp.googlemail.com with ESMTPSA id p11sm3166866pfq.91.2020.07.23.09.23.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jul 2020 09:23:43 -0700 (PDT)
From: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org, andriy.shevchenko@linux.intel.com
Subject: [PATCH] media: atomisp: Fix braces placement coding style errors
Date: Thu, 23 Jul 2020 21:51:33 +0530
Message-Id: <20200723162133.27227-1-aditya.jainadityajain.jain@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 Aditya Jain <aditya.jainadityajain.jain@gmail.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix braces placement errors as reported by checkpatch.pl

Signed-off-by: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_cmd.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 8ea65bef35d2..b64a153d37fd 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -877,7 +877,8 @@ static struct atomisp_video_pipe *__atomisp_get_pipe(
 
 enum atomisp_metadata_type
 atomisp_get_metadata_type(struct atomisp_sub_device *asd,
-			  enum ia_css_pipe_id pipe_id) {
+			  enum ia_css_pipe_id pipe_id)
+{
 	if (!asd->continuous_mode->val)
 		return ATOMISP_MAIN_METADATA;
 
@@ -1211,8 +1212,7 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
 	default:
 		break;
 	}
-	if (vb)
-	{
+	if (vb) {
 		vb->ts = ktime_get_ns();
 		vb->field_count = atomic_read(&asd->sequence) << 1;
 		/*mark videobuffer done for dequeue*/
@@ -1234,8 +1234,7 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
 	 * Requeue should only be done for 3a and dis buffers.
 	 * Queue/dequeue order will change if driver recycles image buffers.
 	 */
-	if (requeue)
-	{
+	if (requeue) {
 		err = atomisp_css_queue_buffer(asd,
 					       stream_id, css_pipe_id,
 					       buf_type, &buffer);
@@ -1940,9 +1939,9 @@ int atomisp_get_frame_pgnr(struct atomisp_device *isp,
  * Get internal fmt according to V4L2 fmt
  */
 static enum ia_css_frame_format
-v4l2_fmt_to_sh_fmt(u32 fmt) {
-	switch (fmt)
-	{
+v4l2_fmt_to_sh_fmt(u32 fmt)
+{
+	switch (fmt) {
 	case V4L2_PIX_FMT_YUV420:
 				return IA_CSS_FRAME_FORMAT_YUV420;
 	case V4L2_PIX_FMT_YVU420:
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
