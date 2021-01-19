Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA072FB56D
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 11:44:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2373B86D52;
	Tue, 19 Jan 2021 10:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t4Z+UnyqCdnS; Tue, 19 Jan 2021 10:44:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9921786D82;
	Tue, 19 Jan 2021 10:44:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE08D1BF9B2
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:44:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BA98084DF6
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:44:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rd3RSIZYNyOw for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 10:44:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 57FA784D5E
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 10:44:47 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A17EC23137;
 Tue, 19 Jan 2021 10:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611053086;
 bh=4vwoBa/srEYigK5iPFIq9fzkW1MkqM6bmsc3KeSzeBQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RapumV7xXwiL5aRMuvaegh9/A2P1Cq+QG9mCzdJwEsUJ10/lf8JxTeRJSwhS3Jx/D
 Tvoo5WKpMZHo7sOf8cGpi13/NpE2UcCq7+5oO8NtuZkMhntvJGXMkeIfLKon6Brbpd
 RsoBcK76tQwfGBFqpaQE1F1geFwNtag0Rnx8B5LnRFaDMQZGxjGqrVoCBKKhub0hep
 TJwvP2dn4PhT6AoT4l1jzPjH3OGwBEDdNjcwKovYEPcorv157T2+SOsRofUJqehqgM
 rUSeQbJvyZnNA8dqsKHfV5a1zEye+BXoPJD2bOOmJwF+1moqip9ca1BRyIT3CRPWDy
 T1blVlIAOnEBA==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1oVA-000u2L-7a; Tue, 19 Jan 2021 11:44:44 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 4/5] staging: hikey9xx: phy-hi3670-usb3.yaml: add a blank
 line
Date: Tue, 19 Jan 2021 11:44:42 +0100
Message-Id: <2bd13d3e141fd8826a8e791e5c65e877c6233966.1611052729.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611052729.git.mchehab+huawei@kernel.org>
References: <cover.1611052729.git.mchehab+huawei@kernel.org>
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

Add a blank line after maintainers field.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.yaml b/drivers/staging/hikey9xx/phy-hi3670-usb3.yaml
index 125a5d6546ae..ebd78acfe2de 100644
--- a/drivers/staging/hikey9xx/phy-hi3670-usb3.yaml
+++ b/drivers/staging/hikey9xx/phy-hi3670-usb3.yaml
@@ -8,6 +8,7 @@ title: Hisilicon Kirin970 USB PHY
 
 maintainers:
   - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
+
 description: |+
   Bindings for USB3 PHY on HiSilicon Kirin 970.
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
