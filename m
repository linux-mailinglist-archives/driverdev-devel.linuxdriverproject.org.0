Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF81291991
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Oct 2020 21:18:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 02860873B0;
	Sun, 18 Oct 2020 19:18:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EFeEOsTUe_kh; Sun, 18 Oct 2020 19:18:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1621C873BF;
	Sun, 18 Oct 2020 19:18:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B1B51BF568
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 19:18:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9711D8779D
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 19:18:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qYUC0kKhHOhH for <devel@linuxdriverproject.org>;
 Sun, 18 Oct 2020 19:18:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A50A58779C
 for <devel@driverdev.osuosl.org>; Sun, 18 Oct 2020 19:18:43 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9633C222B9;
 Sun, 18 Oct 2020 19:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603048723;
 bh=N5QeLT4lYf6VW3DsLZV3yTNIyO2Q9L2kglcl6ro5PDg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tMdnw3boagkMJEYDFlds4XBJRtPuDZdKBiAhT71Cks6dKT4/qKp9RiG1H0ZWHdxHw
 +MLU3xhz3er/2KpecPu67FEjvtvZv93PsNBoQi0wx6nzszj8XG/AYi5IbY/12/vy/3
 UmYqm3XVeEpGBfSTNXWhU7cKb/ouy7Zky7l5VzIE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.9 029/111] media: atomisp: fix memleak in
 ia_css_stream_create
Date: Sun, 18 Oct 2020 15:16:45 -0400
Message-Id: <20201018191807.4052726-29-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201018191807.4052726-1-sashal@kernel.org>
References: <20201018191807.4052726-1-sashal@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Dinghao Liu <dinghao.liu@zju.edu.cn>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dinghao Liu <dinghao.liu@zju.edu.cn>

[ Upstream commit c1bca5b5ced0cbd779d56f60cdbc9f5e6f6449fe ]

When aspect_ratio_crop_init() fails, curr_stream needs
to be freed just like what we've done in the following
error paths. However, current code is returning directly
and ends up leaking memory.

Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/atomisp/pci/sh_css.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index a68cbb4995f0f..33a0f8ff82aa8 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -9521,7 +9521,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 	if (err)
 	{
 		IA_CSS_LEAVE_ERR(err);
-		return err;
+		goto ERR;
 	}
 #endif
 	for (i = 0; i < num_pipes; i++)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
