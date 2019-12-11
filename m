Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7653C11BD1C
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 20:35:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA78D8863D;
	Wed, 11 Dec 2019 19:35:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K9zGCYRz9YzL; Wed, 11 Dec 2019 19:35:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 971268827F;
	Wed, 11 Dec 2019 19:35:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 754F91BF59E
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 19:35:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 30422882FB
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 19:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E0TEm4juup6Z for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 19:35:28 +0000 (UTC)
X-Greylist: delayed 00:07:08 by SQLgrey-1.7.6
Received: from mail-pf1-f201.google.com (mail-pf1-f201.google.com
 [209.85.210.201])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 568AF8827F
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 19:35:28 +0000 (UTC)
Received: by mail-pf1-f201.google.com with SMTP id d127so1562339pfa.7
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 11:35:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=w8T1tJgYart3GIn2vBDFWmGy68ONR95xCRrn5VBOMwo=;
 b=grq6Vx4iT1p3AioOKXNrVj+mGC0kw1VP1PMFFA8WmR+nVr2GyjjF2xypwVSeP/CgNN
 s97hKv/BI9N/sK7rmD+m8IHm638StLAWHZVrurD5CXyz+IB2HiwYYJBbZDXr34rdhU+/
 GqSW0Qa591NX4SRHolq7/NDQVXXc1/63Ro+fIj7uAt0ucfkFYLFtROZc0ifzzjenBAv6
 zE/UcxkeO2cfyvbisn9gYEWbxFGZxK2KXfwCAceJ1X+SyqL8GJTAHr/0okFPmItv1yXy
 MulZzpqvLq0KZrAu8q8Jb06Trgk2wRFe9vE3hyH6zr82AaxkJwszmZp7cXK2C0KWobTB
 Lt8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=w8T1tJgYart3GIn2vBDFWmGy68ONR95xCRrn5VBOMwo=;
 b=JlLFmB5DEmztHRYIIbDKladY4BQr/DHmcrPaV+wNa6eENk7FRDuRnzMFN7nq5yjmJU
 icRrM6GmmbPzsLDZ+KMEAv/lHB3h26TMHuyBeYTeX0fHjkZUvZMm+YE+h3+2G/SJz6WC
 YPP8DCvq5qAXCIyDr8Q6ocW3t2tKVx0V14XL4m07wq4V2JTFybxz6/b5MR8x21CHt6wz
 Lcm2WxIFs53tPL44NpNlJs/bX8dhaEa8RLTr6z/E7FfJXhaFBWGIf9j6nGY+1vmCLJA7
 JsgUO0o4cu01DaGstx6ge4dt1D06AaZit3GcB7t0wnbl0KxVWPmS2TgPl0k/7tD7zfFQ
 aE4w==
X-Gm-Message-State: APjAAAX2ZOtA2q8Wb14KFnkZVTSm/cblEhdS8Vqg++VLT1IuQ4jPpKwA
 PyGo8HNfv/vrpcMN7dqUivwfRttRhlw2BMF3VR59Xg==
X-Google-Smtp-Source: APXvYqwkzzn/pM/huVKkvtemHGMC1edO2ak5A2f9koCyENCr+Vky/i+di1h6KmbXFJ0lnG3qgtT6DNxhUk1251m2lCbSzQ==
X-Received: by 2002:a63:2063:: with SMTP id r35mr6178563pgm.120.1576092500248; 
 Wed, 11 Dec 2019 11:28:20 -0800 (PST)
Date: Wed, 11 Dec 2019 11:27:41 -0800
In-Reply-To: <20191211192742.95699-1-brendanhiggins@google.com>
Message-Id: <20191211192742.95699-7-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.24.0.525.g8f36a354ae-goog
Subject: [PATCH v1 6/7] staging: axis-fifo: add unspecified HAS_IOMEM
 dependency
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Arnd Bergmann <arnd@arndb.de>, 
 Moses Christopher <moseschristopherb@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Brendan Higgins <brendanhiggins@google.com>,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 davidgow@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently CONFIG_XIL_AXIS_FIFO=y implicitly depends on
CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
the following build error:

ld: drivers/staging/axis-fifo/axis-fifo.o: in function `axis_fifo_probe':
drivers/staging/axis-fifo/axis-fifo.c:809: undefined reference to `devm_ioremap_resource'

Fix the build error by adding the unspecified dependency.

Reported-by: Brendan Higgins <brendanhiggins@google.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 drivers/staging/axis-fifo/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/axis-fifo/Kconfig b/drivers/staging/axis-fifo/Kconfig
index 3fffe4d6f327f..f180a8e9f58af 100644
--- a/drivers/staging/axis-fifo/Kconfig
+++ b/drivers/staging/axis-fifo/Kconfig
@@ -4,7 +4,7 @@
 #
 config XIL_AXIS_FIFO
 	tristate "Xilinx AXI-Stream FIFO IP core driver"
-	depends on OF
+	depends on OF && HAS_IOMEM
 	help
 	  This adds support for the Xilinx AXI-Stream FIFO IP core driver.
 	  The AXI Streaming FIFO allows memory mapped access to a AXI Streaming
-- 
2.24.0.525.g8f36a354ae-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
