Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAF580D47
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 00:50:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5017A86959;
	Sun,  4 Aug 2019 22:50:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q6xD025eqnFU; Sun,  4 Aug 2019 22:50:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9CF9A865D0;
	Sun,  4 Aug 2019 22:50:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D55E1BF591
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:50:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7A193204CA
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:50:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZIYcn9z9FK6m for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 22:49:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 42E3F20431
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 22:49:59 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id t132so38659954pgb.9
 for <devel@driverdev.osuosl.org>; Sun, 04 Aug 2019 15:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XDFswRI13oGzit66yuxshlgOj+nOKd4gwJhAdxr7MGM=;
 b=rRmTjwmKQyZXs+w2fc61p+6blqitgFt44VDlq2hBJa3msEqsCjE3iMA0N59ImENjx1
 pWxFmzHovpTywgJof2duXF6btSgoIVe+p+WICBao5KO8pBkE9NcaTV9gfxHpi58Jd393
 DFKgJ0xyVx8/IYN8IUERTh2Rxf2HWoXWnWj+XPN7lRyL0wmkPmCXMh8pOjTaDWP9OB/k
 giTYlSTz/ZRaJt6cAxVDISU3w6TbcicUIO0JMUvDlHhqw/CPHipUdbC11SYdC5WWsNXd
 vc/vSbii+ZbRuDVkTzr0tcFTEidEPQ4hRCQUhyIepPPKxZC6v01QDasnaLKNedkEXXRF
 M2wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XDFswRI13oGzit66yuxshlgOj+nOKd4gwJhAdxr7MGM=;
 b=Jg66JGchfwQLY24dIsJ8oGyGUnAtI8CmAlxy/oHEGRzmHjVeJDgbIyFHPgCcpjC1sm
 BaMEyM4Gody1XoWBRNqSkrKBky8x9ow2VUrrhJoUTsUOX7IV/ofznEdSS6kA9yEvqH/8
 3wavlXlsAntO2KA7O+uWnbbsE5dZzMiijJL04Tt7EA5PdyUrB7mPk2Ki9eld+J3BwX00
 Q1UuWGo0XvRn9WnPGNuVo4FKWA5yKhKWRunXwsNJB/UyqODwqaGdbQ/Kc/rg5/Ypi3hG
 NomYPNSBmPHN/Qn2zbTqFrRX00+RM4a9mXU9u7t/psibkpAU7ulMSbBSmBRjdsU+pLMl
 zRxQ==
X-Gm-Message-State: APjAAAUe4hoWlcmv/8Ui0Z5imv34PTyMiYEuGTNsINF2ADu7waXRpFDq
 MwOk5a9tB6kpE++w4PUQNTk=
X-Google-Smtp-Source: APXvYqwlrqrBPfbU3uzw56VyHFJ2u/Wv2Z0KkmEAsOsnKmMeY4aJMueEUB/6oS1u2+NCnzOVxWkmSA==
X-Received: by 2002:a63:4a51:: with SMTP id
 j17mr133593330pgl.284.1564958998921; 
 Sun, 04 Aug 2019 15:49:58 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.49.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:49:58 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 25/34] mm/frame_vector.c: convert put_page() to
 put_user_page*()
Date: Sun,  4 Aug 2019 15:49:06 -0700
Message-Id: <20190804224915.28669-26-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804224915.28669-1-jhubbard@nvidia.com>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Mel Gorman <mgorman@suse.de>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 Vlastimil Babka <vbabka@suse.cz>, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: John Hubbard <jhubbard@nvidia.com>

For pages that were retained via get_user_pages*(), release those pages
via the new put_user_page*() routines, instead of via put_page() or
release_pages().

This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
("mm: introduce put_user_page*(), placeholder versions").

Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Jan Kara <jack@suse.cz>
Cc: Mel Gorman <mgorman@suse.de>
Cc: Vlastimil Babka <vbabka@suse.cz>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 mm/frame_vector.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/mm/frame_vector.c b/mm/frame_vector.c
index c64dca6e27c2..f590badac776 100644
--- a/mm/frame_vector.c
+++ b/mm/frame_vector.c
@@ -120,7 +120,6 @@ EXPORT_SYMBOL(get_vaddr_frames);
  */
 void put_vaddr_frames(struct frame_vector *vec)
 {
-	int i;
 	struct page **pages;
 
 	if (!vec->got_ref)
@@ -133,8 +132,7 @@ void put_vaddr_frames(struct frame_vector *vec)
 	 */
 	if (WARN_ON(IS_ERR(pages)))
 		goto out;
-	for (i = 0; i < vec->nr_frames; i++)
-		put_page(pages[i]);
+	put_user_pages(pages, vec->nr_frames);
 	vec->got_ref = false;
 out:
 	vec->nr_frames = 0;
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
