Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B4E83F95
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 03:35:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 895808619E;
	Wed,  7 Aug 2019 01:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DATrKrpQg0J9; Wed,  7 Aug 2019 01:35:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 098178614A;
	Wed,  7 Aug 2019 01:35:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9AE911BF389
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:35:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 953A9221F5
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:35:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id de0cTdzCzKqk for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 01:35:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id E44C92268C
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 01:34:48 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id r7so42501242pfl.3
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 18:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A5i3Rg5kn+067MlNxvjupwCb7OvZHoHIUYxhc992JlI=;
 b=UuxFmnJcCEiWt0xY93+zMuXrIr0kVOIbVkqb6dZDNdX573lgx/iGModXW3xzK9pGPY
 cX+tzVZPKgXMZcfG6ZQsPBSt7kseMu7toLWYUmZdBZq9AOoIRDIMFVmbrRQtXe8+kp+2
 xuf5cY8DkN1gTDTxNyizBF6w883Echl9BWKspGn3wAfNIa3ZXNbfw60ziAuU+jfpWm00
 aE3B42LRws0QrKz6yT/I5rdSznH6+bxJbanBI1rpoulc0fyM/bumlMmxK+EefqH3NUEF
 FOd2q6meN4oVnduhVeiU1hQqU48TiRdVBcpR/X7lAMOhtHAMxLBvoHxdz/5tEjOACTof
 BpeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A5i3Rg5kn+067MlNxvjupwCb7OvZHoHIUYxhc992JlI=;
 b=UMa7eW9A3bCxAvmv1ENPz3SChYa6MmXuiZokS3k2b+Ky7f3Kuc/XVCMtLWFCJWTTyI
 JkXnqsa+9GLu2R/o7tpK5Mt2dHagPffOsxW8I3cxHSwoyoX3dEC5/mCDCr0EN3IIyIMO
 1i1NCIDwxKp3yRo6uDv28cJjsEX2X3G3rlAjgji0aKVjnt2izMgW6PciPxBYYbkR53dS
 41vRrXzeYzkVxBeirPysa+Iby+T7K54pcel8yMenOLiHA9fW9ZM/MKRUYeIErT6no+pK
 g8hbLfI3Oa8nmWeD8TKVg3cTeD+rWmejUFZ+s6G0OH0laoHW4CW2D6ZmI1OYRc2TDAHi
 +aTA==
X-Gm-Message-State: APjAAAUUMykf2UI8/+gs9/mGPy6hiFo+9OTy/nQdXFIyxZeNk132V/qB
 rI2bcInKY9HY+1qrHtBHGok=
X-Google-Smtp-Source: APXvYqxXaYo+gh0YYtTix+CeaO6wRH87rvrphHjKjanKlk0flLMZdWbR1kBDDX6DGd+bDWORU88dWA==
X-Received: by 2002:a62:82c2:: with SMTP id w185mr6984715pfd.202.1565141688648; 
 Tue, 06 Aug 2019 18:34:48 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:48 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 40/41] mm/mempolicy.c: convert put_page() to
 put_user_page*()
Date: Tue,  6 Aug 2019 18:33:39 -0700
Message-Id: <20190807013340.9706-41-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
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
Cc: linux-fbdev@vger.kernel.org, Michal Hocko <mhocko@suse.com>,
 Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Vlastimil Babka <vbabka@suse.cz>, David Rientjes <rientjes@google.com>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, Andrea Arcangeli <aarcange@redhat.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 Dominik Brodowski <linux@dominikbrodowski.net>, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 zhong jiang <zhongjiang@huawei.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
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

Cc: Andrea Arcangeli <aarcange@redhat.com>
Cc: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: David Rientjes <rientjes@google.com>
Cc: Dominik Brodowski <linux@dominikbrodowski.net>
Cc: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: zhong jiang <zhongjiang@huawei.com>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 mm/mempolicy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/mempolicy.c b/mm/mempolicy.c
index f48693f75b37..76a8e935e2e6 100644
--- a/mm/mempolicy.c
+++ b/mm/mempolicy.c
@@ -832,7 +832,7 @@ static int lookup_node(struct mm_struct *mm, unsigned long addr)
 	err = get_user_pages_locked(addr & PAGE_MASK, 1, 0, &p, &locked);
 	if (err >= 0) {
 		err = page_to_nid(p);
-		put_page(p);
+		put_user_page(p);
 	}
 	if (locked)
 		up_read(&mm->mmap_sem);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
