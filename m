Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 264851B850F
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 11:07:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 63BAE88287;
	Sat, 25 Apr 2020 09:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0+7jaeBn5eJp; Sat, 25 Apr 2020 09:07:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D035087D57;
	Sat, 25 Apr 2020 09:07:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 251E01BF5F6
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 09:07:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 21D2D8695C
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 09:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XFqM3X+H5e9z for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 09:07:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6C9EF868E5
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 09:07:22 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id c21so3873614plz.4
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 02:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Lq1JZrYCGr7a50VcwUn68z0m7gVXhlnKQiS3Q4szh94=;
 b=DyzjKZzVZB5i7NuDcwp6b+mbgao9Utoxv1oqvRBTotOz+CWlSJCcO+aFgC8oXaFJ9l
 OJyW60SY6ajpFVioKEgBBp8DBMoQpWl2sSNwLunspyT3h/lsvLlm55GrrhrHzAxrOpR3
 7sfVD28F6BJZZRjlbFN1Q2BfdPR6jeqCHViQ/f3iWXIWrkr/GPbUdEVnyZ2ki3wSkojo
 AWOkJ7k7NN/PgTrjUnJHe8cox1gR0+zqh9hlj1K/WnkHvBFoU7jUAnAWMGqx99UGvwZ5
 llSJ6wcNmUUKoiN78Tl+z4IVWapbnIDyHy/IJ55SKoOKtDygy9/64XSYMbZz/yUzbYsN
 FKbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Lq1JZrYCGr7a50VcwUn68z0m7gVXhlnKQiS3Q4szh94=;
 b=dM+Zhw1arisZ++w19xlDcRkbj1IEP4Pzwy2a59nLQ47Z34JDRaPOrbWoglSjH4JKUj
 LlTf2PlwfxpJdgTGe3Il4fyvAxK+mD0sPYjIMudPzyBh0xCbXuAY4vuC/AJTKVffaQho
 6CeqzAU75QjBa0KFRqEvu1n2N8wN9s6BB6OBFajyCtAXpDHwT8lm9pRzbCH6gaE1Bkmn
 va4gNohEvP8G/JJ9LCk+uy2BWsvIn1G/TChYyOkulrb0e43U1MCmQ1KGwzx/AL/VN/1M
 WIH5C/jKubVZggz4kdGEwfAd00YXfVRZ7GDNaNwcnwVYYUaNHmbM0HpOOtuDfLlEjXBv
 xAQQ==
X-Gm-Message-State: AGi0PuZipATP2jGxOlt81rMRgujz7E7oonLxC7KorLLG4M2yhGV3yvxR
 nnx1bB/a+pEpnWQjI1tnrsPItWgoIotuxKPY
X-Google-Smtp-Source: APiQypJEwUbi+3fb5BBChy6qm6mCmTFaTPjmUIkWNpNYf+zuRYo6syDIotGOyvnEptOv1pPf8wk+rA==
X-Received: by 2002:a17:902:a701:: with SMTP id
 w1mr12245108plq.165.1587805641604; 
 Sat, 25 Apr 2020 02:07:21 -0700 (PDT)
Received: from koo-Z370-HD3 ([143.248.230.14])
 by smtp.gmail.com with ESMTPSA id w12sm7539343pfq.133.2020.04.25.02.07.20
 for <devel@driverdev.osuosl.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 25 Apr 2020 02:07:21 -0700 (PDT)
Date: Sat, 25 Apr 2020 18:07:17 +0900
From: Kyoungho Koo <rnrudgh@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v3] Staging: gasket: fix typo in gasket_page_table.c comments.
Message-ID: <20200425090714.GA2105@koo-Z370-HD3>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I have found double typed comments "the the". So i modified it to
one "the".

Signed-off-by: Kyoungho Koo <rnrudgh@gmail.com>
---
Changes in v3:
  - Modify the first letter of the name to uppercase.

 drivers/staging/gasket/gasket_page_table.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gasket/gasket_page_table.c b/drivers/staging/gasket/gasket_page_table.c
index f6d715787da8..f3dbe0fe2a67 100644
--- a/drivers/staging/gasket/gasket_page_table.c
+++ b/drivers/staging/gasket/gasket_page_table.c
@@ -898,7 +898,7 @@ static int gasket_alloc_extended_subtable(struct gasket_page_table *pg_tbl,
  *
  * Note that memory for second level page tables is allocated as needed, but
  * that memory is only freed on the final close	of the device file, when the
- * page tables are repartitioned, or the the device is removed.  If there is an
+ * page tables are repartitioned, or the device is removed.  If there is an
  * error or if the full range of slots is not available, any memory
  * allocated for second level page tables remains allocated until final close,
  * repartition, or device removal.
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
