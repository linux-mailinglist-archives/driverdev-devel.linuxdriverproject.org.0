Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F32E77858
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jul 2019 13:06:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11DE788688;
	Sat, 27 Jul 2019 11:06:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hY6A349xcuLZ; Sat, 27 Jul 2019 11:06:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C6DF88368;
	Sat, 27 Jul 2019 11:06:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 167931BF47F
 for <devel@linuxdriverproject.org>; Sat, 27 Jul 2019 11:06:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 126B720416
 for <devel@linuxdriverproject.org>; Sat, 27 Jul 2019 11:06:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vnRFbUGjS4QG for <devel@linuxdriverproject.org>;
 Sat, 27 Jul 2019 11:06:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 78DC920404
 for <devel@driverdev.osuosl.org>; Sat, 27 Jul 2019 11:06:21 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id t16so25678626pfe.11
 for <devel@driverdev.osuosl.org>; Sat, 27 Jul 2019 04:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=YYitJm/LwHhp29cVtN6Nj2n/w6bD2omxDxt7bEyLK9k=;
 b=FcEdk6vi7RsiOvNDxGhLvuE4EP+Nvkv8RoKdQHwrHehrmtp2o7zHXAWuTIkCPLBWQv
 r0d6h2PJJ9DOXIKkd+R5kUV3rmAMdx4ibjMQHuFyGWpoBdUERRLKex/36MPDO2VqnSYc
 5zutKUTvmdWQE5RIp/prQ/q3VFByw/sveHDMfSdZ5kOtKPBLW/+V2jvmDso51DwoQtDJ
 hqQdkgvkf6rXnEQqK6b1WL7hZ0bIMsu8DyrH4v9l9tqk3wM18w9VPCE9u5Mj5Y9S7cgz
 yNAQfkc/oXkAGl7umAjR7maOtAUvDVmxku8hWmYZXKEBvyj9od238g5+01mfrVZP5x2I
 sClA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=YYitJm/LwHhp29cVtN6Nj2n/w6bD2omxDxt7bEyLK9k=;
 b=OjfnSTpTNuax0n+BskMHf5K2vvHhvOcHUfFppomofvP797HgITg8gt6BWRIdQv8kAv
 eeS7RlBIQJQiQdyd5HHCIzafq2lN7//TWGKhSzVp62TuLAyJU+rbVo3MlOJRUZcX5OqO
 +YXkk7wzhPHNKNjdpdri7PWwKgzdno6IJ8cF7zHTRmFxMHY/oxXoXKZfn39zRoekJx6b
 ppQsVLVa9y9X7m6/e4aeHjdpIvf5gebZI8NirjmKUzcNH2RLPyTAk1hdy+T5D5VDJy6H
 UGHs1VhRwLzsl3qggP9x0e+xs+oSszi86B234vzzkqlEVzRAnQl3tMboXQlqeCgbIUiZ
 aojQ==
X-Gm-Message-State: APjAAAUsJ+PYzHL7Z2jT95w72OOFQ/ZPxLrdnZyQtFnSEpoKTkrFAq4u
 y7a5utBKuXSMvhAogCRuotU=
X-Google-Smtp-Source: APXvYqztG7Stf1/2oLY9RCeWsCRmoWJbRTy8Vwz0dyVWtsegBjSwJbT7LGIZiFst3DaFwOfIQ964vw==
X-Received: by 2002:a63:f926:: with SMTP id h38mr6232479pgi.80.1564225581049; 
 Sat, 27 Jul 2019 04:06:21 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id h1sm73716579pfo.152.2019.07.27.04.06.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Jul 2019 04:06:19 -0700 (PDT)
Date: Sat, 27 Jul 2019 16:36:14 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: os_dep: Remove unused function argument
 sdio_device_id
Message-ID: <20190727110614.GA4605@hari-Inspiron-1545>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove passing pdid as function argument to rtw_sdio_if1_init as it is
not being used

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 540a7ee..cefff1e 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -315,7 +315,7 @@ static void sd_intf_stop(struct adapter *padapter)
 }
 
 
-static struct adapter *rtw_sdio_if1_init(struct dvobj_priv *dvobj, const struct sdio_device_id  *pdid)
+static struct adapter *rtw_sdio_if1_init(struct dvobj_priv *dvobj)
 {
 	int status = _FAIL;
 	struct net_device *pnetdev;
@@ -473,7 +473,7 @@ static int rtw_drv_init(
 		goto exit;
 	}
 
-	if1 = rtw_sdio_if1_init(dvobj, id);
+	if1 = rtw_sdio_if1_init(dvobj);
 	if (if1 == NULL) {
 		DBG_871X("rtw_init_primarystruct adapter Failed!\n");
 		goto free_dvobj;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
