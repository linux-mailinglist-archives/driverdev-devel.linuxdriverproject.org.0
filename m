Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 624C01B850D
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 11:05:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D0B68658A;
	Sat, 25 Apr 2020 09:05:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DHo823smvbm4; Sat, 25 Apr 2020 09:05:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 205F185C06;
	Sat, 25 Apr 2020 09:05:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 43B251BF5F6
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 09:05:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4090186472
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 09:05:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jz8FBmjoOwVU for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 09:05:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ED19E85C06
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 09:05:05 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id d24so4689013pll.8
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 02:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Lq1JZrYCGr7a50VcwUn68z0m7gVXhlnKQiS3Q4szh94=;
 b=VVxUtaRu+UIIHpDHd2DlfnCPPxa3YnBHiphciClc1NUvAP7mQmizS8OVxfd4/SiXuS
 O6mTDHl6oLOJigPIZuWKip+8VTbOJmFguAPyAE0nmMebp2WXgV6N+IGh2ghSt+4GUfmy
 BT2AabPtv/DxnHG0Ocf8bgE3zZYnOX+PjDgsobkPlx3g/0xXY5OV/GnUwbLWgXwwnB+b
 fqv6k94vCXv7ICfWmTCDqikrJG0h4xDVUv/1iYDCqUlAsVHQtK70d9npG2eGOBwAgO9I
 7L4TgrSqTywdTRATNkTT2offIDms8sOQtMCcbvSRn2hjgVV0e8GtdWulFVg63JDABuln
 Is8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Lq1JZrYCGr7a50VcwUn68z0m7gVXhlnKQiS3Q4szh94=;
 b=LKTff9GrbZIvky9LyYkV20tLaoE8JWpG2pgiTyEYntvS3XWzWFEVl2wrXayEmZYIT5
 LwGc3JCGXujpd5ardJIEds6e2EiRPDEXTICrv/ufuz2OJ5OgbD7A/EZc0x1OZc+ODsZI
 uc0cuKJZTeeg6xzWMJiS+v5MQk6BOLD75H21R0b2HpZ2GzdeYHsxzQ/k+nhuZtIb2LTY
 sth2RzobmSTvK8M+uBIREDd+bltDpS6QH9ecDNfkkpCdmNx9EaxLSbDyPPdFrabVIUpY
 WwAFVJjKcx/D3Vp2F6mUBdCpnaGijn+rDFY2JCi6R7B4bBv6M9lB3w94NVwFj8827IxV
 rVbQ==
X-Gm-Message-State: AGi0PuZx14CWcaekBcDb6mlJQW03UOg/pNgN3Gx35ywCUo/8WczSw2Gy
 5HpuPv1o+rmuDd/uHl04dOWpdy8DP5KOR396
X-Google-Smtp-Source: APiQypJ3/vNH0X/D85hB8gPoVr97wmUU+ib1zaBMtLA9g0smNqy+68B4JwfqZcC8/M544UjCMJ+AAQ==
X-Received: by 2002:a17:902:549:: with SMTP id
 67mr13321279plf.115.1587805504223; 
 Sat, 25 Apr 2020 02:05:04 -0700 (PDT)
Received: from koo-Z370-HD3 ([143.248.230.14])
 by smtp.gmail.com with ESMTPSA id 198sm7951478pfa.87.2020.04.25.02.05.03
 for <devel@driverdev.osuosl.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 25 Apr 2020 02:05:03 -0700 (PDT)
Date: Sat, 25 Apr 2020 18:04:59 +0900
From: Kyoungho Koo <rnrudgh@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH] Staging: gasket: fix typo in gasket_page_table.c comments.
Message-ID: <20200425090456.GA1398@koo-Z370-HD3>
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
