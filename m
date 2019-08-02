Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1407E808
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 04:20:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 007A1878A1;
	Fri,  2 Aug 2019 02:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JX0uid3P6NT0; Fri,  2 Aug 2019 02:20:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 77C2287898;
	Fri,  2 Aug 2019 02:20:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6FBD21BF29C
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:20:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 68A132302C
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pV6RHtp85fEy for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 02:20:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 02F4722E54
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 02:20:26 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id c14so32935343plo.0
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 19:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5vxuyadJL7U7uLaLdbmi0wM48++CcjfxvCZKqh2vh4A=;
 b=IPnKJ+t+ZuscR+9jkZCr9SYsDod9H1pKxsH7GEiMUhOWm9vGlL+eTdFKhv7CAbJqfW
 uU/KQltFOReuOI2Tb15OkXQ52DWMqedLb39cjCQmyiEWLJR87wjugh79Hhbg0qc6zuHg
 MYJzaAbjIW3STqDPj5Lq2JXvJEE6XELaroV158AptkQMUJ7o1/IZqEXjs4JGgfMi9wWi
 x8L4AJBxrRgeZMqNQthxmzZvgld8OAsmXF7S7qthmuL3HABTVNmwDglQdeK4bcdDS+le
 GYNA0EDvk+skaAjBLW5tt19+LuDGuf6feAdMRYQaTc3LrWG+I4hPzx8Lwm1aQRwe4UW2
 hk+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5vxuyadJL7U7uLaLdbmi0wM48++CcjfxvCZKqh2vh4A=;
 b=qIgdGk6aRSLj0+vJK+EcD3qKB79mdBnSmigZt+xabyxmWCIHSIsycNj9i+lU3PW9Hp
 oALWy3BeefKs/GD9bQoN5+UZJbj7eH3pYwsYajEuEy5Xkaq17zToe3epR3NYcZINGMEB
 8j0/vF2bAe7f496aIV4KIxaj9dCHQrRxHbFwwEWxtwLYkBMzJdyEXhZd04x7ejiEoJ1D
 /mNVKXI2127DUXkgcBc7rZG48bY8R6RflJ//63uz66BIp7YjjmUWZC6lYGVUXWB3xdgc
 BtXf+0oDF5CdzLvZ7ziej/kszJroXvSOU/5uENg4JjaAFBQc8Js6sgZZwpo4a+qyP6Cd
 3BgQ==
X-Gm-Message-State: APjAAAWrkuF/3nhyHTTHrv2X+SmtWx75MZQ8A0hZgjvjIQpoZQr3sHk6
 YFL6thvs9ysIQ5MBxCi92EI=
X-Google-Smtp-Source: APXvYqx4n4e9g9/ly0KjHqDWX94uIzBzDxMQOC1nP9LzDlFTNiWIDkQ4j/aY6KUtiphGoFtrA+EDzw==
X-Received: by 2002:a17:902:f301:: with SMTP id
 gb1mr126844849plb.292.1564712425718; 
 Thu, 01 Aug 2019 19:20:25 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:25 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 09/34] media/v4l2-core/mm: convert put_page() to
 put_user_page*()
Date: Thu,  1 Aug 2019 19:19:40 -0700
Message-Id: <20190802022005.5117-10-jhubbard@nvidia.com>
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Hans Verkuil <hans.verkuil@cisco.com>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Souptick Joarder <jrdr.linux@gmail.com>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-fsdevel@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>
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

Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Kees Cook <keescook@chromium.org>
Cc: Hans Verkuil <hans.verkuil@cisco.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Jan Kara <jack@suse.cz>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Souptick Joarder <jrdr.linux@gmail.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: linux-media@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/media/v4l2-core/videobuf-dma-sg.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/media/v4l2-core/videobuf-dma-sg.c b/drivers/media/v4l2-core/videobuf-dma-sg.c
index 66a6c6c236a7..d6eeb437ec19 100644
--- a/drivers/media/v4l2-core/videobuf-dma-sg.c
+++ b/drivers/media/v4l2-core/videobuf-dma-sg.c
@@ -349,8 +349,7 @@ int videobuf_dma_free(struct videobuf_dmabuf *dma)
 	BUG_ON(dma->sglen);
 
 	if (dma->pages) {
-		for (i = 0; i < dma->nr_pages; i++)
-			put_page(dma->pages[i]);
+		put_user_pages(dma->pages, dma->nr_pages);
 		kfree(dma->pages);
 		dma->pages = NULL;
 	}
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
