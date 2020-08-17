Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 516F0245DCF
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:20:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 813EB86901;
	Mon, 17 Aug 2020 07:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QmZ88kP62yEK; Mon, 17 Aug 2020 07:20:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 75F62868BC;
	Mon, 17 Aug 2020 07:20:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6104F1BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:20:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 54E2B2046B
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:20:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RVotNoLJAGzI for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:20:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id D5863203E6
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:20:25 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C57E22DBF;
 Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648278;
 bh=LpI7CPhlAdoRLmDUn7wNA8GzncD0FgN2SN8GD26o+lI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vYILsCgpJj0K51Xis65+jcgRq5tbMQQaDV5NViiJBwJNds6+fZbs5ik5Epj8AaIB/
 Z1SamyVN6SnWtyk7eY3XbVYKJGQVJAUiNIK1Fn0dM9G5ANBTZiVSw6SrezyhjfRU78
 T0LYSX8K7lJ5cK8cdJRGLlTM+o6Zx+ugodPPxAeU=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIa-00BdlA-KV; Mon, 17 Aug 2020 09:11:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 41/44] staging: hikey9xx: add a TODO list
Date: Mon, 17 Aug 2020 09:11:00 +0200
Message-Id: <bf3ebe32125646e0a87a59280392e8c6fda08488.1597647359.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597647359.git.mchehab+huawei@kernel.org>
References: <cover.1597647359.git.mchehab+huawei@kernel.org>
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
Cc: mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 devel@driverdev.osuosl.org, linuxarm@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Place the things that are needed to be able to move those
drivers out of staging.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/TODO | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 drivers/staging/hikey9xx/TODO

diff --git a/drivers/staging/hikey9xx/TODO b/drivers/staging/hikey9xx/TODO
new file mode 100644
index 000000000000..65e7996a3066
--- /dev/null
+++ b/drivers/staging/hikey9xx/TODO
@@ -0,0 +1,5 @@
+ToDo list:
+
+- Port other drivers needed by Hikey 960/970;
+- Test drivers on Hikey 960;
+- Validate device tree bindings.
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
