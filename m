Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0646F033
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Jul 2019 19:32:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5FAAA85932;
	Sat, 20 Jul 2019 17:32:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rMQre0xUgE7J; Sat, 20 Jul 2019 17:32:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8405D858F7;
	Sat, 20 Jul 2019 17:32:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0CF061BF33D
 for <devel@linuxdriverproject.org>; Sat, 20 Jul 2019 17:32:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 077FB20496
 for <devel@linuxdriverproject.org>; Sat, 20 Jul 2019 17:32:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AxWVEiwTnKfH for <devel@linuxdriverproject.org>;
 Sat, 20 Jul 2019 17:32:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id D759520371
 for <devel@driverdev.osuosl.org>; Sat, 20 Jul 2019 17:32:21 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id m30so15510999pff.8
 for <devel@driverdev.osuosl.org>; Sat, 20 Jul 2019 10:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=TdusF53r7yLCmYFWdH2/Tx4Y0JTP7HLyZW39DsqTHPo=;
 b=jZwHW5P5iF1JlnF80DO5TcIm6+g+ZDUG5S+6/RgtYHw6KLyFLYlVXEl9Z9sEeemBht
 AYzMVLvL3O1rDCMBLgk5oQsBWzZVN5hNiP1d1yvkc+hIb1SfYyj77grFFke4jf+M89gj
 gOXjKJddqkWZIG4l07gU+qGnKbvmbTwg7jyMy1DL01btiBLhboZzNa0mKZWxEczosnB7
 sQgcWCSGwoPOHdX1Ks41hNOl72N9rUE0sMXRSbhtDPDgbglGRTOaR/Xz9OkRXIvF7k0b
 Ah/g+c3esfGzqVES5VRKtJ7p4pPfjSTa2Sb5eLncBfFh4LSw1n8fk72XKKx/03e+N6Aa
 LmGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=TdusF53r7yLCmYFWdH2/Tx4Y0JTP7HLyZW39DsqTHPo=;
 b=g43ZQN5gm+URgWFxdfSgJm4F+BGG460UObIWl4x5HQGc4Qd2gDL2VicpN1dEkb03q3
 hyMQICeHT8xxQmqE/UGRyK26PSqNzBtCOvyfoUyX+f+aM5uowHGHlFFgSgolFH+glmfS
 TFGrIX+okMRVmd+G8BuQNPcpzye/bWxaS1G9P5w3HhDApTI0nCRIaB4gR/GZ5eJPn5kU
 0H7VWQ3kNKhx2IvFeZGPbbP87wNjEQKC9KuXx+PTHGR1hrDCTQio+aycq77pq5TU5Cw0
 QFYWRKCeb/jfHFjxvF3NmryxzNTBHJKCySFCqZNdduWllu5xXZwGFZLushnNPYdKI5hp
 LBcA==
X-Gm-Message-State: APjAAAU+QE7Hu9X3nhne7/d1unRtC8cv1R4evfi4kVl1T+bZXJIoiBCX
 XbsFQoXYm6MKn8mhcedYgXE=
X-Google-Smtp-Source: APXvYqy1NouX9k2wgafeV1ABXeztSNXyhgk4bnippRUInrONZlwFZn4ypyphRPbcnEpCMfQ+hVo6tw==
X-Received: by 2002:a63:3805:: with SMTP id f5mr28163350pga.272.1563643941385; 
 Sat, 20 Jul 2019 10:32:21 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.33])
 by smtp.gmail.com with ESMTPSA id l44sm30570928pje.29.2019.07.20.10.32.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 20 Jul 2019 10:32:20 -0700 (PDT)
Date: Sat, 20 Jul 2019 23:02:14 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: ira.weiny@intel.com, jglisse@redhat.com, gregkh@linuxfoundation.org,
 Matt.Sickler@daktronics.com, jhubbard@nvidia.com
Subject: [PATCH v4] staging: kpc2000: Convert put_page to put_user_page*()
Message-ID: <20190720173214.GA4250@bharath12345-Inspiron-5559>
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
Cc: devel@driverdev.osuosl.org, linux-mm@kvack.org, linux.bhar@gmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

For pages that were retained via get_user_pages*(), release those pages
via the new put_user_page*() routines, instead of via put_page().

This is part a tree-wide conversion, as described in commit fc1d8e7cca2d ("=
mm: introduce put_user_page*(), placeholder versions").

Cc: Ira Weiny <ira.weiny@intel.com>
Cc: John Hubbard <jhubbard@nvidia.com>
Cc: J=E9r=F4me Glisse <jglisse@redhat.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Cc: devel@driverdev.osuosl.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-mm@kvack.org
Reviewed-by: John Hubbard <jhubbard@nvidia.com>
Signed-off-by: Bharath Vedartham <linux.bhar@gmail.com>
---
Changes since v1
       - Improved changelog by John's suggestion.
       - Moved logic to dirty pages below sg_dma_unmap
       and removed PageReserved check.
Changes since v2
       - Added back PageResevered check as suggested by John Hubbard.
Changes since v3
       - Changed the commit log as suggested by John.
       - Added John's Reviewed-By tag

---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kp=
c2000/kpc_dma/fileops.c
index 6166587..75ad263 100644
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
@@ -221,16 +219,13 @@ void  transfer_complete_cb(struct aio_cb_data *acd, s=
ize_t xfr_count, u32 flags)
 	=

 	dev_dbg(&acd->ldev->pldev->dev, "transfer_complete_cb(acd =3D [%p])\n", a=
cd);
 	=

-	for (i =3D 0 ; i < acd->page_count ; i++){
-		if (!PageReserved(acd->user_pages[i])){
-			set_page_dirty(acd->user_pages[i]);
-		}
-	}
-	=

 	dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->l=
dev->dir);
 	=

-	for (i =3D 0 ; i < acd->page_count ; i++){
-		put_page(acd->user_pages[i]);
+	for (i =3D 0; i < acd->page_count; i++) {
+		if (!PageReserved(acd->user_pages[i]))
+			put_user_pages_dirty(&acd->user_pages[i], 1);
+		else
+			put_user_page(acd->user_pages[i]);
 	}
 	=

 	sg_free_table(&acd->sgt);
-- =

2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
