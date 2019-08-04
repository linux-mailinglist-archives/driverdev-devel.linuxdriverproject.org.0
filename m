Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 590C280DB5
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 00:51:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 13FE485D8E;
	Sun,  4 Aug 2019 22:51:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6pC-2G7G4RVZ; Sun,  4 Aug 2019 22:51:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D056683FF4;
	Sun,  4 Aug 2019 22:51:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 33A071BF94B
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:51:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2FE0E8774C
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:51:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yVAGbeDRgk9L for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 22:51:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DECAF87B2E
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 22:50:08 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id b13so38599038pfo.1
 for <devel@driverdev.osuosl.org>; Sun, 04 Aug 2019 15:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Sx0x91HVjVXCVkLMMHrdncyqT4rW2sU28Vf+3l+oloA=;
 b=M7iDvAmPBRpGJcJpcoqgvaoi3nLFkyQK4dkSIj4ojX3FvseJtfjnZyfckr18kI2oDa
 LHzSPof56TngxWHSp0ym44XehwQNp0Dvit6wm4Dt65OPXwL2baR6+4zLMuIAexRHFzmx
 ZFMgjeYMSC1sErMdOV/WNMAc2Iu4rRWK81eLPAWfZwZdfeXx16tZd5680zs185LTKzUq
 VYv2LHkMnMPv4yg/Pui3fxt3Z+TxPOd1GexxLj8LbBhnNpT3XVb8jW9mQwG5C5+4ClkN
 g/MAUKuZK56HuoBkHT35BiifdFKR3pPYOWepAjU+8QcCzdVYmtG3jMaPBQTkt/nS1dsZ
 WZ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Sx0x91HVjVXCVkLMMHrdncyqT4rW2sU28Vf+3l+oloA=;
 b=pwKBQ5jKe+Yk0voUAphoWYxGGBg+dic2JiUSRsDNl5ez5F5NeZpFN/328IfikDSFgu
 5HuXBaENIe2mYhwFQIdVSGRZVM9/xUH8sKrg25Gyca2dSvrD1hLjsbAaVudTjp3RFwGb
 ITG21JRqU928w1uaV+WQVo3gHmQA64dTQ2GF0I5yiTyIOk3LeSwASEbfDZIpgjgQi18D
 nh1dGqbIflWJvSzDVuvlDPuPwknyHVaZtMGyVDVGAO2BDoZXScpf3t3yw9BRPcZM2Ttl
 CVaeV6bU1GNi6Zx6v2UhUmVBO1jt1M4Pmi1Kski8ht5XN4ZOQ0JY3gLRVbCE1UxTdILR
 SgiQ==
X-Gm-Message-State: APjAAAXzXZYJ83vXBfxRvyqPMrX1binGFbWohEJjZf30Ton4k3G1J51U
 kf9F9UmUjU2I5i5F4czSgLU=
X-Google-Smtp-Source: APXvYqzdBAOi64WyR4vf0DFOxQNVALmaSa46GoCIBIpjxflBtAErOscOmlieUmCz4Qhdah1mimse2w==
X-Received: by 2002:a63:7358:: with SMTP id
 d24mr133542074pgn.224.1564959008549; 
 Sun, 04 Aug 2019 15:50:08 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.50.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:50:08 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 31/34] fs/nfs: convert put_page() to put_user_page*()
Date: Sun,  4 Aug 2019 15:49:12 -0700
Message-Id: <20190804224915.28669-32-jhubbard@nvidia.com>
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
Cc: Calum Mackay <calum.mackay@oracle.com>, linux-fbdev@vger.kernel.org,
 Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>
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

Cc: Calum Mackay <calum.mackay@oracle.com>
Cc: Trond Myklebust <trond.myklebust@hammerspace.com>
Cc: Anna Schumaker <anna.schumaker@netapp.com>
Cc: linux-nfs@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 fs/nfs/direct.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/fs/nfs/direct.c b/fs/nfs/direct.c
index 0cb442406168..c0c1b9f2c069 100644
--- a/fs/nfs/direct.c
+++ b/fs/nfs/direct.c
@@ -276,13 +276,6 @@ ssize_t nfs_direct_IO(struct kiocb *iocb, struct iov_iter *iter)
 	return nfs_file_direct_write(iocb, iter);
 }
 
-static void nfs_direct_release_pages(struct page **pages, unsigned int npages)
-{
-	unsigned int i;
-	for (i = 0; i < npages; i++)
-		put_page(pages[i]);
-}
-
 void nfs_init_cinfo_from_dreq(struct nfs_commit_info *cinfo,
 			      struct nfs_direct_req *dreq)
 {
@@ -512,7 +505,7 @@ static ssize_t nfs_direct_read_schedule_iovec(struct nfs_direct_req *dreq,
 			pos += req_len;
 			dreq->bytes_left -= req_len;
 		}
-		nfs_direct_release_pages(pagevec, npages);
+		put_user_pages(pagevec, npages);
 		kvfree(pagevec);
 		if (result < 0)
 			break;
@@ -935,7 +928,7 @@ static ssize_t nfs_direct_write_schedule_iovec(struct nfs_direct_req *dreq,
 			pos += req_len;
 			dreq->bytes_left -= req_len;
 		}
-		nfs_direct_release_pages(pagevec, npages);
+		put_user_pages(pagevec, npages);
 		kvfree(pagevec);
 		if (result < 0)
 			break;
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
