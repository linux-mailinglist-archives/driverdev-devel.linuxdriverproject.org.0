Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 232801FD4E5
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 20:52:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C2338825B;
	Wed, 17 Jun 2020 18:52:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jn8pwHNW11rL; Wed, 17 Jun 2020 18:52:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 324E08811F;
	Wed, 17 Jun 2020 18:52:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D1861BF395
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 18:52:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 79BD6873F1
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 18:52:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cG6_ZznYjDa9 for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 18:52:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CB227873E4
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 18:52:18 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 70612217BA;
 Wed, 17 Jun 2020 18:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592419938;
 bh=DpQjYZZeTM+uzWHwycplncpFlO5eCkii+KlRTUKLv3g=;
 h=From:To:Cc:Subject:Date:From;
 b=MsE1/7k7pdJT7KPjfFOk7ftsiAOyCPYA0BoXHNOD9lZbABn6UjJixFoKQ7BD4HTUr
 bdT2WxqPHgIZdOZOXwGGwJavpLlzcYXJgeQW3mGUhkTT7tjjkPkOSk+xRPRDrVY53H
 IPwdU+ZNMlWn8v4TGQCvr31Gs/358Es9aRFHjvUw=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jldAV-00C8Ae-Sb; Wed, 17 Jun 2020 20:52:15 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [RFC 0/4] Don't do tuning zigzag using the very same frequency
Date: Wed, 17 Jun 2020 20:52:10 +0200
Message-Id: <cover.1592419750.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, Sean Young <sean@mess.org>,
 Arnd Bergmann <arnd@arndb.de>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Brad Love <brad@nextdimension.cc>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Marc reported on IRC that the zigzag code is trying to tune several times using
the same frequency with si2168. Well, this is not how this would be supposed
to do: it should try with different frequencies each time.

Change the core to use the one-shot mode if the frontend doesn't report a
frequency step. This will default to the current behavior, except that tuning
should be faster.

Yet, probably the right thing to do is to implement a frequency shift at such
frontends, as otherwise  tuning may have problems. So, produce a warning
on such cases, in order for the FE driver to be fixed.

Mauro Carvalho Chehab (4):
  media: atomisp: fix identation at I2C Kconfig menu
  media: atomisp: fix help message for ISP2401 selection
  media: dvb_frontend: move algo-specific settings to a function
  media: dvb_frontend: disable zigzag mode if not possible

 drivers/media/dvb-core/dvb_frontend.c         | 231 ++++++++++--------
 drivers/staging/media/atomisp/Kconfig         |   2 +-
 drivers/staging/media/atomisp/i2c/Kconfig     |  74 +++---
 .../staging/media/atomisp/i2c/ov5693/Kconfig  |  12 -
 4 files changed, 171 insertions(+), 148 deletions(-)
 delete mode 100644 drivers/staging/media/atomisp/i2c/ov5693/Kconfig

-- 
2.26.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
