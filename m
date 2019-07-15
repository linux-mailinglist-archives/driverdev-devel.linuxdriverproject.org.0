Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FF369BB5
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 21:53:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A084685EBB;
	Mon, 15 Jul 2019 19:53:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kzJAVyMDATVx; Mon, 15 Jul 2019 19:53:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9CD9E85E8D;
	Mon, 15 Jul 2019 19:53:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F16C1BF393
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 19:52:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9C45B85E6E
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 19:52:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id owJy9W9gIMuJ for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:52:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DB3AE85E28
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 19:52:57 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id m4so8228172pgk.0
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 12:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=VvTFFsjpspmxJg0Zk+lQCOkMvx372OdaubqDPGmaJoo=;
 b=Y0+6yg5uqNAPdQD+ah/uXtJodBiOu7qXGUZsamO3dQTNlZJzjg4Ek26PN9sH6cPymb
 yvR0TfhEiZSxvEWJREY4WRbKyM9hxRYvEyrRK+nFIVTjd5wGPQeM30hJAvFss33qjOr6
 a5lf0Z0h0i0GZU8VbvfaF5gPmTNLiJIByg5+vUiVbxaIVScuLtuDWJCmBENGOlV8KHVP
 myqNj9DcwuUhbVYJHd/itZBOFC97cVLWqm1lHnGNzPoaLmMwYpW6KTiRNUSyzsRHwMI3
 QJzx5hp785DtFA36ySOTX7rwRUUC/c5ya6BCZiOXxIALW7dYtFG/We6ISxZhV9/cZeit
 dtwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=VvTFFsjpspmxJg0Zk+lQCOkMvx372OdaubqDPGmaJoo=;
 b=HMtGN7WSCO4CmLYfGsIiGnM4XYn5CGDV/rYFcvUjORYCs+QhNBPFGGUtAeDAlj6jyr
 K860gj322M9iESp+nDmgzgbNsouscyBHMefhPcaRoNL60JPO8DrgDsu7SvaDAEbUPost
 9kAU92Y8UkNNreyluMgQ7Y0LzzuPNw0RNPRs9c8P5k9OlA6ZKz3SdbMLFkPZnUOleEY8
 8FqggOUxqRx3oc+sh1ysL+W233k2oGbicRIbN2W9iGvsr2xu8Z6If+xCCJFtvgh/kYK5
 U7nTsvoilRoVw6VXwzb/fZDroStJW5FLabmmC1XR3uliqyIv/QOTARHDv/p6EkWtI04v
 KN2g==
X-Gm-Message-State: APjAAAWHzxT5kIp+E72wPtlT50rViQNFwpQ771JBwGVVn9BJ83r0wE6i
 4Y1HvQDH8H2SRW4T3kzReps=
X-Google-Smtp-Source: APXvYqxtbt1CwITtkPLgUNHbiaJHv2JbNvwx/AC2tPpYW32s+HW5FL1w8utKSmIMyppuIpJFC7FuGg==
X-Received: by 2002:a17:90a:5288:: with SMTP id
 w8mr31337291pjh.61.1563220377447; 
 Mon, 15 Jul 2019 12:52:57 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.33])
 by smtp.gmail.com with ESMTPSA id u3sm15869368pjn.5.2019.07.15.12.52.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 12:52:56 -0700 (PDT)
Date: Tue, 16 Jul 2019 01:22:48 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: ira.weiny@intel.com, jhubbard@nvidia.com, gregkh@linuxfoundation.org,
 Matt.Sickler@daktronics.com, jglisse@redhat.com
Subject: [PATCH] staging: kpc2000: Convert put_page() to put_user_page*()
Message-ID: <20190715195248.GA22495@bharath12345-Inspiron-5559>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There have been issues with get_user_pages and filesystem writeback.
The issues are better described in [1].

The solution being proposed wants to keep track of gup_pinned pages which w=
ill allow to take furthur steps to coordinate between subsystems using gup.

put_user_page() simply calls put_page inside for now. But the implementatio=
n will change once all call sites of put_page() are converted.

I currently do not have the driver to test. Could I have some suggestions t=
o test this code? The solution is currently implemented in [2] and
it would be great if we could apply the patch on top of [2] and run some te=
sts to check if any regressions occur.

[1] https://lwn.net/Articles/753027/
[2] https://github.com/johnhubbard/linux/tree/gup_dma_core

Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: J=E9r=F4me Glisse <jglisse@redhat.com>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: John Hubbard <jhubbard@nvidia.com>
Cc: linux-mm@kvack.org
Cc: devel@driverdev.osuosl.org

Signed-off-by: Bharath Vedartham <linux.bhar@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kp=
c2000/kpc_dma/fileops.c
index 6166587..82c70e6 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -198,9 +198,7 @@ int  kpc_dma_transfer(struct dev_private_data *priv, st=
ruct kiocb *kcb, unsigned
 	sg_free_table(&acd->sgt);
  err_dma_map_sg:
  err_alloc_sg_table:
-	for (i =3D 0 ; i < acd->page_count ; i++){
-		put_page(acd->user_pages[i]);
-	}
+	put_user_pages(acd->user_pages, acd->page_count);
  err_get_user_pages:
 	kfree(acd->user_pages);
  err_alloc_userpages:
@@ -229,9 +227,7 @@ void  transfer_complete_cb(struct aio_cb_data *acd, siz=
e_t xfr_count, u32 flags)
 	=

 	dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->l=
dev->dir);
 	=

-	for (i =3D 0 ; i < acd->page_count ; i++){
-		put_page(acd->user_pages[i]);
-	}
+	put_user_pages(acd->user_pages, acd->page_count);
 	=

 	sg_free_table(&acd->sgt);
 	=

-- =

1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
