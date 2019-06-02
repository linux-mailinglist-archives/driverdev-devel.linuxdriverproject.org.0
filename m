Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF07323C3
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jun 2019 17:59:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 429B785C95;
	Sun,  2 Jun 2019 15:59:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YNxt3hR3mOgF; Sun,  2 Jun 2019 15:59:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C0DD785C67;
	Sun,  2 Jun 2019 15:59:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 385F71BF282
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 15:59:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1EFB285C37
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 15:59:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xFoyfxOZjQ3L for <devel@linuxdriverproject.org>;
 Sun,  2 Jun 2019 15:59:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2E39885C52
 for <devel@driverdev.osuosl.org>; Sun,  2 Jun 2019 15:59:20 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id s15so6802953qtk.9
 for <devel@driverdev.osuosl.org>; Sun, 02 Jun 2019 08:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+x69TcqR+bFk5ojFt7qJV1dRlBhJRgOfaQiTn1tZPS8=;
 b=MYvCheitu3trQbthrCc+NFtNRsCrAR0AMpD2tJHUlLfNo3NAxwCOI08WShtnySj6Lx
 4S95Rt70PtwzG5dzxZh4Z2SykzZgIEWiHW+dOJi/LAI8Swf/NIJROgPvx+8EfncWdSNR
 5FH0cayP0kzhWdojRYM1FeqLGGONVmBpZ36e6/ttlVZMWIu40UhLcSerIk+EmaPZkyz/
 JsRiHN4EzcULpDLEzME+p0e0oAeWkLOnix0Er6dV4xN744QJoQkXU7NgYQy4MiwTPa43
 v7b5CT/tTr+lVF+vkHnF3uXRnFkMhFNzSWRGn4v5LVzUT022VoTYBwSPCIK8IDhSWEf1
 Pr7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+x69TcqR+bFk5ojFt7qJV1dRlBhJRgOfaQiTn1tZPS8=;
 b=oL5JfF+oxlqWhwT7tPD6atg4g8cWB5bGvDIJi1r0hOIQ/zZ7YQxaF7Rc2xnKi2zTtF
 R9Rt4eaciPv1Je+fYIF3ajGpTWqdDqrfZrMbdyiL1UA/l8OGhzhC2N18aHKD6F5jez1e
 TefgJov7s7rfcWL35ZLiqwLEZr/veHxgOAad47ugp9cB67NQ50e3pZ3vvn+9j4DKnU3p
 VRI9d4pLekNw+Ty+hQXavvPpZ7bvcCqvwHvOyvSrO+dJKYO5u5I/KZRA9NjXU5FqR8Wb
 Gbr7FNccG5vbwMr1fAdPrap/W8urofnxY2Af71v03+onSZAGoFzm7pmJ+4fhYOjQa5sj
 bhKw==
X-Gm-Message-State: APjAAAXrUvzkQHzcISB+6gWEXfhkMg9a//bPXCYUbEZJjVkVV76XgTjD
 htwoF1Xr+PTRAcK/bNv/ecY=
X-Google-Smtp-Source: APXvYqyWB7XjANhzDLQmvPMM3f7fCuYB6dOenwwz6hucZ/BpvdVr4r69D3ginhLR0O6khN2GZ/qjmQ==
X-Received: by 2002:a05:6214:206:: with SMTP id
 i6mr13189095qvt.169.1559491159296; 
 Sun, 02 Jun 2019 08:59:19 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id n7sm7378589qkd.53.2019.06.02.08.59.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 08:59:18 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/5] staging: kpc2000: kpc_spi: remove function
 kp_spi_bytes_per_word()
Date: Sun,  2 Jun 2019 15:58:36 +0000
Message-Id: <b086eac79a4061c7cd67bd587de9d302f9820610.1559488571.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1559488571.git.gneukum1@gmail.com>
References: <cover.1559488571.git.gneukum1@gmail.com>
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
 YueHaibing <yuehaibing@huawei.com>, Mao Wenan <maowenan@huawei.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <natechancellor@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The static function kp_spi_bytes_per_word() is defined in kpc2000_spi.c,
but it is completely unused. As this function is unused, it can and
should be removed.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 049b1e324031..b513432a26ed 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -162,20 +162,6 @@ union kp_spi_ffctrl {
 /***************
  * SPI Helpers *
  ***************/
-	static inline int
-kp_spi_bytes_per_word(int word_len)
-{
-	if (word_len <= 8){
-		return 1;
-	}
-	else if (word_len <= 16) {
-		return 2;
-	}
-	else { /* word_len <= 32 */
-		return 4;
-	}
-}
-
 	static inline u64
 kp_spi_read_reg(struct kp_spi_controller_state *cs, int idx)
 {
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
