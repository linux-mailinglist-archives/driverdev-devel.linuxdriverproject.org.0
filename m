Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1903D80D07
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 00:49:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6F8BD204BE;
	Sun,  4 Aug 2019 22:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E7jP97sdhLik; Sun,  4 Aug 2019 22:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5CB3020483;
	Sun,  4 Aug 2019 22:49:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C8301BF591
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:49:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 22A9A8641F
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8JbX6VD9Rqsh for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 22:49:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 05FAE863D9
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 22:49:29 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id d1so5848192pgp.4
 for <devel@driverdev.osuosl.org>; Sun, 04 Aug 2019 15:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YLPz5BCHjHkg+J9ZI8yxOLwnUAw8CiRxIyzlmsd6bb8=;
 b=VGrPeNjqXUKwD8rPOUJWvgTDjvXlBgpZNgVsAZpGvh41vX88GkAws7QVpEp9tEzYXW
 EWAxbuchsvglHqS59E2TkHXvzV9QiwRyVicm9YfNC1RSq1Lw+8bSeox7MCzKs4UlTpfP
 ozXvShoKM7yUTPqi96o4h71oG13jljV2Z5NhvBV41avMLU4Q1BrhH8GwT114cWkCl1MF
 d261JitS12TLzntNYSyrJZWMAgzBr9+636G4ae4VYGKmmjZF/lcCezF8KGvZPOFySOt6
 etVud9nCJxdyVx56j1jluPcIcFoQjayW3OLzqWiVdA46hf2UCQT0Dq3HzUpJLfZuSPrQ
 6mhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YLPz5BCHjHkg+J9ZI8yxOLwnUAw8CiRxIyzlmsd6bb8=;
 b=m8hwohmTpjc9afyFGfYQxrkkHIim+4GVWlvGYgXBQDjqrp8G3uK+lkNhc0jkcxhV2p
 w8T7YNFxWF7f3WkVqXPmDLCbQYweTr7H4Epw5mEgvojrh5IrEEwCptnXnpqSxw9k7B2K
 UYKLzNvO5rm3XCPxNdgMMIx248kAlgHxKugcoq1Gu9biA8L8+10z4PfUMa0VpuBLKXI7
 H0ifTKqAhvyogKSdGdHWp4qgGNhjN7znxVHdElTY96Nqw1sHEzPeFwFIyILZJ2sWASNg
 ZzQp8mEeJZYsK5hZeqBlhcbKxLAkXdLF8SwpKQfWgZIeNwaKcYRp8rTGmqhw7PzdoF41
 J7GA==
X-Gm-Message-State: APjAAAVZ6Z9kBPo2AGQpzzN1sluF8+Vn79X5hHJq9HErGW7OhBHhYJVj
 agJ508cyFNmxkGS1ge2YrMM=
X-Google-Smtp-Source: APXvYqzIKv6XtE7UttpMMo5Kx4L8tiNE0k37oAlXEn6wMXua1ZT012h1Fuu1D5Rv1jbsWDQQbHwbnw==
X-Received: by 2002:a65:6547:: with SMTP id a7mr112462494pgw.65.1564958968612; 
 Sun, 04 Aug 2019 15:49:28 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.49.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:49:28 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 06/34] drm/i915: convert put_page() to put_user_page*()
Date: Sun,  4 Aug 2019 15:48:47 -0700
Message-Id: <20190804224915.28669-7-jhubbard@nvidia.com>
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
 David Airlie <airlied@linux.ie>, Dave Hansen <dave.hansen@linux.intel.com>,
 Dave Chinner <david@fromorbit.com>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, sparclinux@vger.kernel.org, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org
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

This is a merge-able version of the fix, because it restricts
itself to put_user_page() and put_user_pages(), both of which
have not changed their APIs. Later, i915_gem_userptr_put_pages()
can be simplified to use put_user_pages_dirty_lock().

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: David Airlie <airlied@linux.ie>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 2caa594322bc..76dda2923cf1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -527,7 +527,7 @@ __i915_gem_userptr_get_pages_worker(struct work_struct *_work)
 	}
 	mutex_unlock(&obj->mm.lock);
 
-	release_pages(pvec, pinned);
+	put_user_pages(pvec, pinned);
 	kvfree(pvec);
 
 	i915_gem_object_put(obj);
@@ -640,7 +640,7 @@ static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 		__i915_gem_userptr_set_active(obj, true);
 
 	if (IS_ERR(pages))
-		release_pages(pvec, pinned);
+		put_user_pages(pvec, pinned);
 	kvfree(pvec);
 
 	return PTR_ERR_OR_ZERO(pages);
@@ -675,7 +675,7 @@ i915_gem_userptr_put_pages(struct drm_i915_gem_object *obj,
 			set_page_dirty_lock(page);
 
 		mark_page_accessed(page);
-		put_page(page);
+		put_user_page(page);
 	}
 	obj->mm.dirty = false;
 
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
