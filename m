Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F4A16E936
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Feb 2020 16:01:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D0FD88689B;
	Tue, 25 Feb 2020 15:01:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GBFHWhVdKdDX; Tue, 25 Feb 2020 15:01:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9B65D86838;
	Tue, 25 Feb 2020 15:01:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 775301BF2C2
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 15:01:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 73F6F86856
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 15:01:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KW9wksbbTYGs for <devel@linuxdriverproject.org>;
 Tue, 25 Feb 2020 15:01:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 906098698E
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 15:01:07 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id f2so1127348pjq.1
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 07:01:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:to:cc:subject:mime-version:content-disposition
 :user-agent; bh=dDJ+ophuc0rsonzeLWDePL6AJkh0L49xgiit/I70EsU=;
 b=ZcQ8Hqr7ZPm4BdeF8bgpagl9fX5jrXAu1VyacBxBaKVwYGbxWu8wrzSyy2+p3O2+/h
 Dy5jpx1QQ65/OdejJqFxcoV91xUS2+4LHFboSaXqmOOZiJwP7jyTUU3E3dIE0TstLtgf
 0HaERYqB38XOM6y5D2EJxxsdZgs7TU7LREWNYOcTkLUJiTxqMHUfe4cSj5oOO6i4xCue
 rTlT9M/7lGMq/Ygh8tQgTizCo+G8+f+LygD8H/8OgLyGBNw0MlzYYLGOWmvEhsB4JE0G
 l4ZXaxUiae5lM6WGuHffUoC9ZUTptoKHU34mT7zvVRC3lIFlzofh+Y59No8YW9S+w/g6
 m00w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
 :content-disposition:user-agent;
 bh=dDJ+ophuc0rsonzeLWDePL6AJkh0L49xgiit/I70EsU=;
 b=NqXPn0zrqH5D0TkW2a4qymcp+Cy5v2WlXXm/hYBkDcNjJpOnCQvwrknb9fJ4Acnmyf
 iLz5uId9U4Nul1hHPt1ffN9D0vsmL2wF2PwdKGOpdiHG2sbW30PcH3nhhO+ZFpDCkk20
 wC1rwUirbBagJlQ2bwH1pX83mHB0+cRNkEaWba0SeAaRvLSn0mmZNnyK46bQwIwY65xs
 Tb9Pks2n5wOwVnej8cdEZ0RK1CIjtZxBibZg6InpAfWXb+RMx38KBuNc9bErpD2jGSp5
 6dCuUQuzwpwHHagG2OZsBp4HTvq541/7/QtT2oMMlUiBLpTCb/v5X/4CjLH/V4riSdwM
 ciyQ==
X-Gm-Message-State: APjAAAXAyPeS3/OoDxlCYTHkkHa4Z/6ioe7kmuNkRT29iypcow8EzPZN
 SNXaJluikokYiH/xXWVhO7h7ye4Ku4n6ow==
X-Google-Smtp-Source: APXvYqzgTiN/EmB7DNtu2m2mWEGUraVUqdhRA0AV2wGjtrcrTyN+W4cla+Lubkv9BE44e2ZmJZNLZw==
X-Received: by 2002:a17:90a:234f:: with SMTP id
 f73mr5520424pje.109.1582642866596; 
 Tue, 25 Feb 2020 07:01:06 -0800 (PST)
Received: from SARKAR ([49.207.57.206])
 by smtp.gmail.com with ESMTPSA id a9sm17120716pfo.35.2020.02.25.07.01.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 07:01:05 -0800 (PST)
Message-ID: <5e5536b1.1c69fb81.5f37a.daf6@mx.google.com>
X-Google-Original-Message-ID: <20200225150102.GA20845@rohitsarkar5398@gmail.com>
Date: Tue, 25 Feb 2020 20:31:02 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: linux-iio@vger.kernel.org
Subject: [PATCH v2] staging: iio: update TODO
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Since there are no uses of the old GPIO API, remove the item from the
TODO and some new items.

Changes from v1:
Add work item mentioned by Alexandru in https://marc.info/?l=linux-iio&m=158261515624212&w=2

Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
---
 drivers/staging/iio/TODO | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/iio/TODO b/drivers/staging/iio/TODO
index 1b8ebf2c1b69..e54510c2ef5f 100644
--- a/drivers/staging/iio/TODO
+++ b/drivers/staging/iio/TODO
@@ -1,11 +1,17 @@
-2018-04-15
+2020-02-25
 
-All affected drivers:
-Convert all uses of the old GPIO API from <linux/gpio.h> to the
-GPIO descriptor API in <linux/gpio/consumer.h> and look up GPIO
-lines from device tree, ACPI or board files, board files should
-use <linux/gpio/machine.h>.
+- Documentation
+  - Binding docs for devices that are obviously used via device tree
+  - Yaml conversions for abandoned drivers
+  - ABI Documentation
+  - Audit driviers/iio/staging/Documentation
 
+- Replace iio_dev->mlock by either a local lock or use iio_claim_direct.
+  (Requires analysis of the purpose of the lock.)
+
+- Converting drivers from device tree centric to more generic property handlers
+  Refactor old platform_data constructs from drivers and convert it to state
+  struct and using property handlers and readers.
 
 ADI Drivers:
 CC the device-drivers-devel@blackfin.uclinux.org mailing list when
-- 
2.23.0.385.gbc12974a89

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
