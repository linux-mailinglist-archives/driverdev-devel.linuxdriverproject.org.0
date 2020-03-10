Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D1B17FEE1
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Mar 2020 14:43:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6F6A92094E;
	Tue, 10 Mar 2020 13:43:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yQ7KvuH2CYIN; Tue, 10 Mar 2020 13:43:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 190442079C;
	Tue, 10 Mar 2020 13:43:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 03CFE1BF3A9
 for <devel@linuxdriverproject.org>; Tue, 10 Mar 2020 13:43:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F24F02075B
 for <devel@linuxdriverproject.org>; Tue, 10 Mar 2020 13:43:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fI36ocp3dzwB for <devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:43:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 6D17C2046E
 for <devel@driverdev.osuosl.org>; Tue, 10 Mar 2020 13:43:17 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E02E24684;
 Tue, 10 Mar 2020 13:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583847797;
 bh=dOWAitZcubJe6ZPphISgOg4R6FHQ0Ow7oKb4Q8yZYxg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hYv5OBlnmv1aEA+/6M1fIhAbDCr0otUGY2bk6nzhqBqJS1PsRFF+GeU089oxWwLP5
 URd6NnvayfPQm0fhE1hv2ZqLZDRakC3YYylSrjddCKwBXa1SPHFJ+XYqA8vovvemCM
 Hy0+/4mKU0hcr+yB7Npc8XNJsaxYtInQv8A0MIx8=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jBfAA-0005vM-Vr; Tue, 10 Mar 2020 14:43:14 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH v2 02/22] media: docs: move soc-camera.rst to staging
Date: Tue, 10 Mar 2020 14:42:53 +0100
Message-Id: <17c44871c0153af5a065faaeec0f3184b850db81.1583847556.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1583847556.git.mchehab+huawei@kernel.org>
References: <cover.1583847556.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As the entire soc_camera driver is on staging to be removed
soon, let's place there its documentation too.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/media/v4l-drivers/index.rst                        | 1 -
 .../staging/media/soc_camera}/soc-camera.rst                     | 0
 2 files changed, 1 deletion(-)
 rename {Documentation/media/v4l-drivers => drivers/staging/media/soc_camera}/soc-camera.rst (100%)

diff --git a/Documentation/media/v4l-drivers/index.rst b/Documentation/media/v4l-drivers/index.rst
index b41fea23fe5d..eca22b82de94 100644
--- a/Documentation/media/v4l-drivers/index.rst
+++ b/Documentation/media/v4l-drivers/index.rst
@@ -61,7 +61,6 @@ For more details see the file COPYING in the source distribution of Linux.
 	si470x
 	si4713
 	si476x
-	soc-camera
 	uvcvideo
 	vimc
 	vivid
diff --git a/Documentation/media/v4l-drivers/soc-camera.rst b/drivers/staging/media/soc_camera/soc-camera.rst
similarity index 100%
rename from Documentation/media/v4l-drivers/soc-camera.rst
rename to drivers/staging/media/soc_camera/soc-camera.rst
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
