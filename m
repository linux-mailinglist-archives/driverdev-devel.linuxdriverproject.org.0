Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3D92FE3A1
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Jan 2021 08:18:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DC9542107D;
	Thu, 21 Jan 2021 07:18:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r5ZCUPFZCal9; Thu, 21 Jan 2021 07:18:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B400120763;
	Thu, 21 Jan 2021 07:18:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 86DA81BF873
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 07:18:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7836A871AD
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 07:18:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bDd2+1MmFplr for <devel@linuxdriverproject.org>;
 Thu, 21 Jan 2021 07:18:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 55C8A871B1
 for <devel@driverdev.osuosl.org>; Thu, 21 Jan 2021 07:18:29 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 55809239ED;
 Thu, 21 Jan 2021 07:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611213508;
 bh=QCx692mEV9EmrBqf9kmDsyhi0piG9+D6dDMN9S7D8lU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PaTEgU1o8L72Yt/VuJ/9lT+vvbonDomDrsGhBOyFFg27s8mj8hw6/e8lsagQy7/un
 5igmejjw2KefDjrk1JG6Y6JtcGlHVHH4rroZ2glS0QgQsQ2I+aM5JPHIQR03f4kVNV
 CzTUbvpbvJQLYoyTwvgpPoP4peno4foRDtH9gNAgi+mOQJMJybuJOdNLOSUxxAOV0l
 /wzf7VJSJZfEaTftlkMd/1zff3sGKJ4hekhCoX7xGM77pemcwYQVpi3xIwGySm1Aqe
 8B1Uwlb3dIohf9K02QpCd32bMnEMhElUXwK9Rl6Ws24DhrwWz2bQIGn/pwq1qj9Qct
 os62T8f7XEW0w==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l2UEb-004BsM-L4; Thu, 21 Jan 2021 08:18:25 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v5 13/21] staging: hikey9xx: hisilicon,
 hi6421-spmi-pmic.yaml: cleanup a warning
Date: Thu, 21 Jan 2021 08:18:15 +0100
Message-Id: <1920935fc7320f8d03ed3c89625fa865adcf4390.1611212783.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611212783.git.mchehab+huawei@kernel.org>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There's no additionalProperties field at the yaml file, causing
a warning when checking it.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml b/drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
index f385146d2bd1..3b23ad56b31a 100644
--- a/drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
+++ b/drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
@@ -60,6 +60,8 @@ required:
   - reg
   - regulators
 
+additionalProperties: false
+
 examples:
   - |
     /* pmic properties */
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
