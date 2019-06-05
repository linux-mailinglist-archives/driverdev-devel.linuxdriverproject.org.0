Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CC9354DC
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 03:10:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EC31A85BC6;
	Wed,  5 Jun 2019 01:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HCRjA9C6eyAO; Wed,  5 Jun 2019 01:10:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9109885B3B;
	Wed,  5 Jun 2019 01:10:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B079B1BF366
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 01:10:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AD5E885667
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 01:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xNLLIDeuYlQ3 for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 01:10:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8E4198518E
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 01:10:06 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id y57so16187204qtk.4
 for <devel@driverdev.osuosl.org>; Tue, 04 Jun 2019 18:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H1LWHNz2tpvITgQW+m/6Zu/Zck12SIWFRgPr0RVJKmg=;
 b=KXFqqmAPLvU/X75/zlyOX8S9dyGepiu2lkvFHbHdqbqzHd9aeNEWZmvdhd9eezH85f
 D2k778JJof2eNgIsOTIDrOUGdHymBRe3a7sR+uka9k2qO8ZW42u5h6lj/Z+yzVxgIKYr
 z+m6tI9BB2egfgPNftTv6CMd6T80GNcK+pjMN+nBwATcYugrrOl403YixUBh68KbNM2u
 PZiZNROZC7//yaP6JpwM1FbKPr4mhTi440MbVwSOFniBk+UbeEY+POJIxj4VzKQvNvly
 rEgVnHgcUSlK07mlNMBtZsd4hZ1UFXzUNy6M9umWp5a8kyI8uZzXklfxC4WNL+XWNZMQ
 ijgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H1LWHNz2tpvITgQW+m/6Zu/Zck12SIWFRgPr0RVJKmg=;
 b=qzBcIZ6T2CSKPBEZwekmhefTItWG1B2x9EPm6d0WWd2xYMh/LiXnBq1xDduvjRhv0Z
 Gofo+AlS0K9bTN3kEVMdiKfOgKo11a7zziUwcCJgwaYXOZCrqI3SVL3Q1NiPFO9w2rUa
 QheSpMlSsm1s0YhJVyMF+PIpy0t1cJ942UJjgUT4Fqn+1yYFYtpoxucxb3znj3wSFamY
 0mk8WJ5dcxqwRB0EF1TY5BNhAByzhb9UBDnkyhMIp1C9vWYuf61cDW8EtRH8IvNzyZce
 ApLYNJObEGwOeWD7O6uotyB5iIE76AW+jqe6Pkighsc3nZ+E6Tfgc52ulsZKup71iaQb
 zphw==
X-Gm-Message-State: APjAAAW51SO3wgWI/IRFoONrVGCcXhMVVDWLPqkErUoh3RfjenHN1NId
 IHwJg4Kiorj44tI3bj/h4EgXsOgcQy0=
X-Google-Smtp-Source: APXvYqym71iWdKBzmkz1HxFNM4iIV4QEJHsKlIOcVr3MBwSCvfF1DXU+OwfJN5IyT8elPz8jVP2mMQ==
X-Received: by 2002:a0c:b92f:: with SMTP id u47mr28957968qvf.94.1559697005648; 
 Tue, 04 Jun 2019 18:10:05 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id v41sm7169401qta.78.2019.06.04.18.10.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 18:10:05 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/6] staging: kpc2000: kpc_spi: remove unnecessary struct
 member phys
Date: Wed,  5 Jun 2019 01:09:08 +0000
Message-Id: <5e46b97ce02b84c801bc9e8b521c3cb78c599b91.1559696611.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1559696611.git.gneukum1@gmail.com>
References: <cover.1559696611.git.gneukum1@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Geordan Neukum <gneukum1@gmail.com>,
 Mao Wenan <maowenan@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The structure kp_spi_controller_state, defined in the kpc2000_spi
driver, contains a member named phys which is never used after
initialization. Therefore, it should be removed for simplicity's sake.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 32d3ec532e26..20c396bcd904 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -110,7 +110,6 @@ struct kp_spi {
 
 struct kp_spi_controller_state {
 	void __iomem   *base;
-	unsigned long   phys;
 	unsigned char   chip_select;
 	int             word_len;
 	s64             conf_cache;
@@ -270,7 +269,6 @@ kp_spi_setup(struct spi_device *spidev)
 			return -ENOMEM;
 		}
 		cs->base = kpspi->base;
-		cs->phys = kpspi->phys;
 		cs->chip_select = spidev->chip_select;
 		cs->word_len = spidev->bits_per_word;
 		cs->conf_cache = -1;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
