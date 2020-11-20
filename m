Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B192BB2BE
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Nov 2020 19:36:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A71BA87403;
	Fri, 20 Nov 2020 18:36:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 78Vok7kHk2Lr; Fri, 20 Nov 2020 18:36:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D2C287236;
	Fri, 20 Nov 2020 18:36:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5440F1BF327
 for <devel@linuxdriverproject.org>; Fri, 20 Nov 2020 18:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 48E1A2E124
 for <devel@linuxdriverproject.org>; Fri, 20 Nov 2020 18:36:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cOORi1jtck1k for <devel@linuxdriverproject.org>;
 Fri, 20 Nov 2020 18:36:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 19AB12E120
 for <devel@driverdev.osuosl.org>; Fri, 20 Nov 2020 18:36:45 +0000 (UTC)
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C98AF24178;
 Fri, 20 Nov 2020 18:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605897404;
 bh=P0ho12sgAaK4DoLh6QPmF0ZxrwPVgf6Fhfqmw03f+BA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hgs/MwvnI4/Qh1IfQWTHC1V2ek1jzIsFGde9Z77it39Ux6x6UXhMXSCW3aTWRqGNI
 uzDVKZ5aVrFvT4UQkApb7Kz94DD0EAgCxWyudIoi/jKDymBGjsIo8fqxt1jQHPoC8q
 tEDI7k/xz0naaRL1SOLGHcKfFclDyhc+0Vxp77Og=
Date: Fri, 20 Nov 2020 12:36:50 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 094/141] media: atomisp: Fix fall-through warnings for Clang
Message-ID: <6a1c9b29a2d8e5accb48cd179cfe43b87fd83a00.1605896060.git.gustavoars@kernel.org>
References: <cover.1605896059.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1605896059.git.gustavoars@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In preparation to enable -Wimplicit-fallthrough for Clang, fix a warning
by explicitly adding a break statement instead of letting the code fall
through to the next case.

Link: https://github.com/KSPP/linux/issues/115
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c b/drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c
index b4813cd50daa..4a18da6bf0c1 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c
@@ -368,6 +368,7 @@ static mipi_predictor_t sh_css_csi2_compression_type_2_mipi_predictor(
 		break;
 	case IA_CSS_CSI2_COMPRESSION_TYPE_2:
 		predictor = MIPI_PREDICTOR_TYPE2 - 1;
+		break;
 	default:
 		break;
 	}
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
