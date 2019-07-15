Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A8C69E8D
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 23:49:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D6AC886ECA;
	Mon, 15 Jul 2019 21:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TrUVZUIZ++Mo; Mon, 15 Jul 2019 21:49:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6BBAB8677E;
	Mon, 15 Jul 2019 21:49:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5CFFF1BF35C
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 21:49:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 58A4B85CA1
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 21:49:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QbdHnHpHPNzc for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 21:49:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9216082580
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 21:49:34 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id k8so8979496plt.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 14:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=oinAVDdEDGtey1Xr7e/GPvK2Adfq62yyiXEFUaR6hwI=;
 b=lSaOVEZxxYEquXCqQBG9SYGwG6t1vNg5IwoDUHqEvVIVJhOJlwBY9FugfmiKkRP4f9
 bXyF67J6jg2jl8nfMgv1KWkCx6N17R7M+dlEe5Z43adeIJaqjWjFfqTiLZUywXyLNHlK
 7MYSlSRi8Y0ZlGG9OjlxUoyEB5dRd33OkmEmCOeSVcrNzEnaZhjMNtoQ5rp+VHiYpo8l
 5OXqZqytZ+NvLskxl+Sy/353FjNs/uWn8ngNxEqq1K84N7F4EHUaX51GrZVgm8AqHYmG
 BNOH1MlAf/PKQmF3h2Y1vn/leJyYbowl0Kt6aloRxdGUd1csJequKM4S+3/jQc8TzyeM
 8TkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=oinAVDdEDGtey1Xr7e/GPvK2Adfq62yyiXEFUaR6hwI=;
 b=e/ujPpdQW0f/6YerfJgQir7PV3YJob/nFcvsIupLVyTT7uKqCavQRYyE0wH6VUN+k9
 WJhyNjLTjC5lsj1CA2bXVNpXjlU459eQlpZ060lXcZEA0VYmqkBy553v1C/HiQgwPg/M
 45zOh+AIDgcncB4Px6g2WZci7bSHFCBpi7J8lo0cS21nlaM4aEzDPfSiN0imIBY9m7pd
 mCUk2GuCvc/1Pr/O757H+odBSIY7SIxjOTgtAgoOcCImLicQPKNADZGRtYgX+NUATl/I
 O5ZmwypIsywm24Vky3DWjiuf4lXThRQjUtHaA4p3e/h/hCLMvN8ih2ZpubRohV2NgrWD
 QkVw==
X-Gm-Message-State: APjAAAU6ydJzsDnqx2Qrw5BEPr4sxO0d5hHWF2YL9BXpj0RubZQbhvoH
 rwtvWx1/VNTq2nkcW9/VwFo=
X-Google-Smtp-Source: APXvYqxWZCB5othLdOpAzVbLNid2vDo95VYJQsCqTTyT13mpLHDfYQvvAWW2OmRXbPSMrSLgUWUbVg==
X-Received: by 2002:a17:902:a606:: with SMTP id
 u6mr28487937plq.275.1563227374215; 
 Mon, 15 Jul 2019 14:49:34 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.33])
 by smtp.gmail.com with ESMTPSA id b3sm27375833pfp.65.2019.07.15.14.49.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 14:49:33 -0700 (PDT)
Date: Tue, 16 Jul 2019 03:19:26 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: Matt.Sickler@daktronics.com, gregkh@linuxfoundation.org,
 jglisse@redhat.com, ira.weiny@intel.com, jhubbard@nvidia.com
Subject: [PATCH v2] staging: kpc2000: Convert put_page() to put_user_page*()
Message-ID: <20190715214926.GA29665@bharath12345-Inspiron-5559>
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

The solution being proposed wants to keep track of gup_pinned pages
which will allow to take furthur steps to coordinate between subsystems
using gup.

put_user_page() simply calls put_page inside for now. But the
implementation will change once all call sites of put_page() are
converted.

[1] https://lwn.net/Articles/753027/

Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: J=E9r=F4me Glisse <jglisse@redhat.com>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: John Hubbard <jhubbard@nvidia.com>
Cc: linux-mm@kvack.org
Cc: devel@driverdev.osuosl.org

Reviewed-by: John Hubbard <jhubbard@nvidia.com>
Signed-off-by: Bharath Vedartham <linux.bhar@gmail.com>
---
Changes since v1
	- Added John's reviewed-by tag
	- Moved para talking about testing below
	the '---'
	- Moved logic of set_page_diry below dma_unmap_sg
	as per John's suggestion

I currently do not have the driver to test. Could I have some
suggestions to test this code? The solution is currently implemented
in https://github.com/johnhubbard/linux/tree/gup_dma_core and it would be g=
reat =

if we could apply the patch on top of the repo and run some =

tests to check if any regressions occur.
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kp=
c2000/kpc_dma/fileops.c
index 48ca88b..3d1a00a 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -190,9 +190,7 @@ static int kpc_dma_transfer(struct dev_private_data *pr=
iv,
 	sg_free_table(&acd->sgt);
  err_dma_map_sg:
  err_alloc_sg_table:
-	for (i =3D 0 ; i < acd->page_count ; i++) {
-		put_page(acd->user_pages[i]);
-	}
+	put_user_pages(acd->user_pages, acd->page_count);
  err_get_user_pages:
 	kfree(acd->user_pages);
  err_alloc_userpages:
@@ -211,16 +209,13 @@ void  transfer_complete_cb(struct aio_cb_data *acd, s=
ize_t xfr_count, u32 flags)
 	BUG_ON(acd->ldev =3D=3D NULL);
 	BUG_ON(acd->ldev->pldev =3D=3D NULL);
 =

-	for (i =3D 0 ; i < acd->page_count ; i++) {
-		if (!PageReserved(acd->user_pages[i])) {
-			set_page_dirty(acd->user_pages[i]);
-		}
-	}
-
 	dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->l=
dev->dir);
 =

-	for (i =3D 0 ; i < acd->page_count ; i++) {
-		put_page(acd->user_pages[i]);
+	for (i =3D 0; i < acd->page_count; i++) {
+		if (!PageReserved(acd->user_pages[i])) =

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
