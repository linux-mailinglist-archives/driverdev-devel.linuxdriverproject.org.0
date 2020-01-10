Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAB51378FD
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jan 2020 23:05:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EFCA7877F1;
	Fri, 10 Jan 2020 22:05:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p8jk29t32dZc; Fri, 10 Jan 2020 22:05:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 57151877C9;
	Fri, 10 Jan 2020 22:05:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 05BA61BF3CA
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 22:05:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 017A38857C
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 22:05:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BIqXvQoGeaGt for <devel@linuxdriverproject.org>;
 Fri, 10 Jan 2020 22:05:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 423E888575
 for <devel@driverdev.osuosl.org>; Fri, 10 Jan 2020 22:05:41 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1FB5B20848;
 Fri, 10 Jan 2020 22:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578693941;
 bh=YY2vsOhOD5tx230oh8e2361TtBk7nItWViDntducFIg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=m7qT0eB4gUaAUNF75bR6/wKQFor2VyBhfKWK0t+3oAAqmjhHJJZmoWv0YThZLFqtL
 2fxGZkJmE0paRRxos+PvpPEoaHczgwyJCjUeaTTQSiEMx1Frtwxz6VY9JptCK4Alp/
 pW2Y6S63Cl4izMtuTiOzoq0qPieMwl3xTGwhWF+w=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 22/26] media: intel-ipu3: Align struct
 ipu3_uapi_awb_fr_config_s to 32 bytes
Date: Fri, 10 Jan 2020 17:05:15 -0500
Message-Id: <20200110220519.28250-17-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110220519.28250-1-sashal@kernel.org>
References: <20200110220519.28250-1-sashal@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Sasha Levin <sashal@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Sakari Ailus <sakari.ailus@linux.intel.com>

[ Upstream commit ce644cf3fa06504c2c71ab1b794160d54aaccbc0 ]

A struct that needs to be aligned to 32 bytes has a size of 28. Increase
the size to 32.

This makes elements of arrays of this struct aligned to 32 as well, and
other structs where members are aligned to 32 mixing
ipu3_uapi_awb_fr_config_s as well as other types.

Fixes: commit dca5ef2aa1e6 ("media: staging/intel-ipu3: remove the unnecessary compiler flags")
Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Tested-by: Bingbu Cao <bingbu.cao@intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/ipu3/include/intel-ipu3.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
index c7cd27efac8a..0b1cb9f9cbd1 100644
--- a/drivers/staging/media/ipu3/include/intel-ipu3.h
+++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
@@ -449,7 +449,7 @@ struct ipu3_uapi_awb_fr_config_s {
 	__u16 reserved1;
 	__u32 bayer_sign;
 	__u8 bayer_nf;
-	__u8 reserved2[3];
+	__u8 reserved2[7];
 } __attribute__((aligned(32))) __packed;
 
 /**
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
