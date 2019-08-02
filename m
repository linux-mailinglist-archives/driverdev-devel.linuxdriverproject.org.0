Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 453C07E839
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 04:21:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D4F2323077;
	Fri,  2 Aug 2019 02:20:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u8b4KuhRMoOr; Fri,  2 Aug 2019 02:20:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6F8E222D33;
	Fri,  2 Aug 2019 02:20:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 093301BF29C
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 04D8D86995
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MdpJb2ZE_VlO for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 02:20:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 79A908698F
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 02:20:34 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id p184so35148268pfp.7
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 19:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6zqhiQUR/t5HSZML/x55nFGZKGW5GK1LULKEmO0k7kA=;
 b=F6zwcO4LIlIH0MhJxHttCJTdvFyVFQT/4arw8VEiUMf3H4eEoUX+759aMNEB4E5yQk
 Nz2fCbsNakzpI2Ix1oQ23cChuh59P2OEpLwWSX6x9IY/wvMOZe6lEWSb2zFdzp0gprdi
 y9rnyWNc6RyhaZMvzhG8ve4bXMhMFks51tm4rHvgstN2tswx5ZOG0+I0UrLn8K8liKz6
 o59abaE04tV7AfXXxMZta+A8VG8S0kkDg1uyI4tR9b3t+a4fVwe1pYra9FjftWzgoUTS
 x4tLp6R3lAg/evT8dl18ZgG3qJOUMIaQFDribAsCQyGjHMfkpuycFyZQ36o14QJqnxy+
 vrdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6zqhiQUR/t5HSZML/x55nFGZKGW5GK1LULKEmO0k7kA=;
 b=YZB4y5JumFq4uKORm+QLKMCCtHtGGgkzsv/irFLLKUb3IokDZKTuiuLqFIaZHiM8IW
 S9JfpbS4ZIECGtpQaym9kVaLEuev6zdi9lPHSf61f/8DixPUF12LxMF6lKsBExqzQ02a
 nj/15OsrACaGPXJdaU/+KNWvhMIY/xwjbh5HUQXtCGRbcUpqJg+O0uiVesjxz3Nq+0I2
 v8CbaSt6lq8AqqFQtXsUJZTOvsO6pMjjo3XuEIPDaQ8TJ9tDA6KKH33bU0nIFFV0j5Zb
 7WXMCL0zS94LhngU2xgRDnALF1xdL3wOp4F8C51xluPJGf0opTn2mCV2JnOovX1tj14l
 ZYng==
X-Gm-Message-State: APjAAAWH52IjdqV4M6P1GqrTT092bUvdX1rC3Su5Yb+e5yQ7CkAWbnHz
 uzRYyWVQkxSXQXXWtIjChBiON50P
X-Google-Smtp-Source: APXvYqxawjrrBWhVHWqru35UkhsNUwOEktD3Ze9ukSGMVZSHmBDx+KHUyZVGOPhrL6EFpIA4EvvUgw==
X-Received: by 2002:a63:b64:: with SMTP id a36mr113099405pgl.215.1564712434076; 
 Thu, 01 Aug 2019 19:20:34 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:33 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 14/34] oradax: convert put_page() to put_user_page*()
Date: Thu,  1 Aug 2019 19:19:45 -0700
Message-Id: <20190802022005.5117-15-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
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
Cc: linux-fbdev@vger.kernel.org, Rob Gardner <rob.gardner@oracle.com>,
 Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Wei Yongjun <weiyongjun1@huawei.com>, sparclinux@vger.kernel.org,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, Jonathan Corbet <corbet@lwn.net>,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 Jonathan Helman <jonathan.helman@oracle.com>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
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

Cc: David S. Miller <davem@davemloft.net>
Cc: Jonathan Helman <jonathan.helman@oracle.com>
Cc: Rob Gardner <rob.gardner@oracle.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Wei Yongjun <weiyongjun1@huawei.com>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc: sparclinux@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/sbus/char/oradax.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/sbus/char/oradax.c b/drivers/sbus/char/oradax.c
index 8af216287a84..029e619992fc 100644
--- a/drivers/sbus/char/oradax.c
+++ b/drivers/sbus/char/oradax.c
@@ -412,7 +412,7 @@ static void dax_unlock_pages(struct dax_ctx *ctx, int ccb_index, int nelem)
 				dax_dbg("freeing page %p", p);
 				if (j == OUT)
 					set_page_dirty(p);
-				put_page(p);
+				put_user_page(p);
 				ctx->pages[i][j] = NULL;
 			}
 		}
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
