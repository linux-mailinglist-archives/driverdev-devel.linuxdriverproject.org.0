Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE266EB68
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 22:02:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 282CB22EC1;
	Fri, 19 Jul 2019 20:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v9HcZoAk5v9N; Fri, 19 Jul 2019 20:02:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6598D22DD3;
	Fri, 19 Jul 2019 20:02:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 59FCB1BF681
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 20:02:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 566AA86C28
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 20:02:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7YaST6_CCfOS for <devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 20:02:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B0D8786C22
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 20:02:44 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id n9so8693675pgc.1
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 13:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=5N6LdOFrJjCGue8cmzcmZMQF0A64ylNe67FM2v5UYwc=;
 b=UGjkJsZMA2fiZtIAfmbFGijLgKyG17B3eQ5YtmodVmWNxm4QJS+OfEyZ+Yx0rDQby2
 gnj1ZAjcG7OI7VSuae91ptxx0prbKEh6VLzS2BftpTlOw7ct6KvfS89UEMgXf3CKrAUm
 VaSB94oa9pL4apBBZkcMyNzGYnpzyBzTuQq30KTDOHMXp7Xb9c9oc9841+wEnQyr+ujd
 Q2anwrvnoScMKEKCNV3+pPM0tIGmNLbdiVFoc3Mc4Omod3QzKFB5m7AZ+WgiGgw39cIs
 N8SknDNp4z08kAzx0YLMPgaREHUUUqxXxTMX9u3ky5Xw4RULICCNa2aGIxbU5/gx3dQE
 NTYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=5N6LdOFrJjCGue8cmzcmZMQF0A64ylNe67FM2v5UYwc=;
 b=d5lB0WkE8KgxEb0ocL9qJW9+N/IqotA4UMWxY/GthSLxlGav/F4MKkXGLVBenPv0cF
 2LuFUwtXnp4p+57vFPAY+Ry4NlySY/fNY/mQfrlgjKAfiXKPFMgtZDOYIpdQNi2gyqhO
 ltWsuhAULiHNO25esHErdr3t4PVaFc289GhnXXw71t3CQgIvXJbY6Pe5BZGUAySSJQlj
 GshtRIHWWlQF4ozYEIEOKuEEMJMEh72IoNtgYdoqkuMVADREZRWKG2y0focecaN7BYXC
 NwaBEj20WmC5/F4YrhpcY+VwqIkRT8dLg75xEJVRV7mKj7XtuFAcnelhFoWHf9iagEWR
 N9FA==
X-Gm-Message-State: APjAAAWTtPNCCU1wiQf3QiickNHLz3OayFmPpQt1ZKb6e3e/9ZgqxJas
 NGHaFVZzBdtYu3/Kh22VKcc=
X-Google-Smtp-Source: APXvYqyUkjtJ5/kr1NKh5evL+FbdXcRYyIgbQbmLhNrEiZG/igGdTIgx+LqU2x5WMPCYNej1LAZAWw==
X-Received: by 2002:a63:f807:: with SMTP id n7mr57629925pgh.119.1563566564159; 
 Fri, 19 Jul 2019 13:02:44 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.33])
 by smtp.gmail.com with ESMTPSA id c8sm37375979pjq.2.2019.07.19.13.02.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jul 2019 13:02:43 -0700 (PDT)
Date: Sat, 20 Jul 2019 01:32:35 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: jhubbard@nvidia.com, ira.weiny@intel.com, jglisse@redhat.com,
 gregkh@linuxfoundation.org, Matt.Sickler@daktronics.com
Subject: [PATCH v3] staging: kpc2000: Convert put_page to put_user_page*()
Message-ID: <20190719200235.GA16122@bharath12345-Inspiron-5559>
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

There have been issues with coordination of various subsystems using
get_user_pages. These issues are better described in [1].

An implementation of tracking get_user_pages is currently underway
The implementation requires the use put_user_page*() variants to release
a reference rather than put_page(). The commit that introduced
put_user_pages, Commit fc1d8e7cca2daa18d2fe56b94874848adf89d7f5 ("mm: intro=
duce
put_user_page*(), placeholder version").

The implementation currently simply calls put_page() within
put_user_page(). But in the future, it is to change to add a mechanism
to keep track of get_user_pages. Once a tracking mechanism is
implemented, we can make attempts to work on improving on coordination
between various subsystems using get_user_pages.

[1] https://lwn.net/Articles/753027/

Cc: Ira Weiny <ira.weiny@intel.com>
Cc: John Hubbard <jhubbard@nvidia.com>
Cc: J=E9r=F4me Glisse <jglisse@redhat.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Cc: devel@driverdev.osuosl.org =

Cc: linux-kernel@vger.kernel.org
Cc: linux-mm@kvack.org
Signed-off-by: Bharath Vedartham <linux.bhar@gmail.com>
---
Changes since v1
	- Improved changelog by John's suggestion.
	- Moved logic to dirty pages below sg_dma_unmap
	and removed PageReserved check.
Changes since v2
	- Added back PageResevered check as suggested by John Hubbard.
	=

The PageReserved check needs a closer look and is not worth messing
around with for now.

Matt, Could you give any suggestions for testing this patch?
    =

If in-case, you are willing to pick this up to test. Could you
apply this patch to this tree
https://github.com/johnhubbard/linux/tree/gup_dma_core
and test it with your devices?

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
