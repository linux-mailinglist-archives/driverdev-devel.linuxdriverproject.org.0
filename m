Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7663183EF0
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 03:34:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D0A286144;
	Wed,  7 Aug 2019 01:34:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yt4A5MFBw-sN; Wed,  7 Aug 2019 01:34:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB48286141;
	Wed,  7 Aug 2019 01:34:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1DE4A1BF389
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:33:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 040BA87D46
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:33:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tGax8rSzoaX4 for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 01:33:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DAA8C87E34
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 01:33:57 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id w10so42541907pgj.7
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 18:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YDBAQLU7S2U/jcsuraEitExVA8qAggFNDXffEk4LOSU=;
 b=fH35navam8Lh5O3/qNrV94jl6iS2d0GfzCxk/u0RVGSb5dvr8ME5vr6Nrz7RbT0FzH
 b+0bwfj6a40pZ7ZDEBSPteuD+EtCdatETgtIbhA4HjNGhTvq4/6/8Hfd0cWzD4ACfYbW
 rgRW0nwu/E9vCWm7L7kW1f14dc8w0gfs4RZvtHi6Oflt61RfXIS6VkmL4oCieKfyzE0K
 4m3Xz2o0LiyRj0Y9KXj50L4atLA3dDsoGvMpdRLog6j+z0Lu9QLqi3MvwrgBmW5y8MHT
 21A4qIppa4JRGq/2QNHN+lrWM1Z/51ATanglohKPJpBhZfdY/rs/WBKjHemXIrn3RGac
 3taQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YDBAQLU7S2U/jcsuraEitExVA8qAggFNDXffEk4LOSU=;
 b=jPIGMFmz/I+uZggbf6pV3M/4D/0fUd3JoAJpgiJr5qGL9Qa51rXrsXB6jhKR1ggOul
 R5DeDZAmVr6v7lgVfHnEMdqib4WHVmmbn75ojB4GXO8ZNhBTuwbBpm9htJ6zz2gAiFhy
 lv8GiqqTwKFEFDNRGizLbaKe/NuOKjHxboqCLRSnue95X7LLvxl8nF2gTziWXsvBGU5s
 WL5THR/AokYELeUh+7CvAY6KaMWTUw9kUjDdOR6G8c8V4+ie3kFUi5KPKiJdyKZjzBPI
 RrdlEmer64jAwmnmyhK74Phn3mlvHx0qAxX+vj5Mgvd11ZY4IPuInMM4cMYhCxk/TWjO
 6SDA==
X-Gm-Message-State: APjAAAUUwiMFZ2QKa0c9sTWsAiyMOo2tOqiaKepwkHG3Fpyd5dl8PrJu
 rbfTGvmcqg10Fgh4Lo/EvRM=
X-Google-Smtp-Source: APXvYqxowmB5KY9x5+3VpBUz7AtpjaBcc2B1U6EZUCl5VRWjmEE9hilm+u0BPGPiavOiCOJ108uPDQ==
X-Received: by 2002:a17:90a:30cf:: with SMTP id
 h73mr6096915pjb.42.1565141637378; 
 Tue, 06 Aug 2019 18:33:57 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.33.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:33:56 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 08/41] drm/i915: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:07 -0700
Message-Id: <20190807013340.9706-9-jhubbard@nvidia.com>
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

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
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
