Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBE57CBA6
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 20:14:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C34C3859EA;
	Wed, 31 Jul 2019 18:14:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f2Xe1EyRX4un; Wed, 31 Jul 2019 18:14:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B61DF857D8;
	Wed, 31 Jul 2019 18:14:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 43CEA1BF2EA
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:14:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 40B1F854C9
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:14:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XJ-s0fb23m31 for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 18:14:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CCD78854B4
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 18:14:23 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id y15so32330649pfn.5
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 11:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=54mrDTR1HhDgitZr7P55Wj93FkR2zRd8eVwIx2NJz0Q=;
 b=NiRCoHTzl5t5zFxYU7y15hmp7j2XcNyJ7BmEn8chRyLp169Is0v5YAfumlnO+ZtZTc
 dJWeKyfdeFmeVhnFBmge6qRMX0xV/gbm1s/4zTjJ9+5iwjwQ5dvLF7CK4njLuAAWh/f4
 UYHisriWlnZ8MxysjYRF7/5qwy7aUMXVhLf3lWiyYIFUiVCcl0MVnC02tsIePN3yTgOn
 1Q/Rj4wweJqs/mD0xow+KZpPkocKe9fFprIEXemQLkA4AZODY11M10ePvHp8N95ijJ0H
 cVYKemz1ze8jjLrP4C/x0xjf7t5ejoDhXyhSyAQngMPib0/MhA4eTLSobp4gqIycv4vt
 nLCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=54mrDTR1HhDgitZr7P55Wj93FkR2zRd8eVwIx2NJz0Q=;
 b=PJHL+FySXrjfNcOOwm8Fi9aeEXURHx67vEKc+iKdM5Iz8R34k/oxEmW8zSGhlO9SFt
 AGqM2/FFizrwyyS9QZd2wM5WI8H61+c577aTsC17uNDzsK5eipA+MMHZAQIgixY/w8N6
 OKhHDAF+PF4C5Q/DPxTIHdqfdshNgN3YOE12xkg583+Za9BANvy45ZNg5Pa3sAgYSlso
 QCt2I/bWbUUidKNtEPN/hLhbfqOo10KxIWdTQ71eEnTyfjyVrNbo/iWEq5P4D6lJx7Oa
 6rMHUx55WC1Dp6tFpLZ7trpusPMXf7KB35OHVjQb43mxi+DZVENuJBg2m4MxJlcqJf3D
 VOQA==
X-Gm-Message-State: APjAAAWsNddUEgFw04yW4dfD3RnwO/U+8LY9Z/hg4kW3TpcpQ98F2zyS
 kwYQFjg1LCpQkm11njxPyFQ=
X-Google-Smtp-Source: APXvYqz6roXYSEQ3td8yTlZJBCWaVyJz0Sk4ZbS/M5xBCUi88aQIAzdepTRvUJ/9jMjKTz2zKInd3A==
X-Received: by 2002:aa7:9217:: with SMTP id 23mr49520886pfo.239.1564596863552; 
 Wed, 31 Jul 2019 11:14:23 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id d23sm2148422pjv.18.2019.07.31.11.14.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:14:23 -0700 (PDT)
Date: Wed, 31 Jul 2019 23:44:18 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 hdegoede@redhat.com, Larry.Finger@lwfinger.net
Subject: [Patch v2 03/10] staging: rtl8723bs: os_dep: Remove unused function
 argument sdio_device_id
Message-ID: <20190731181418.GA9222@hari-Inspiron-1545>
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
v3 - Add patch number

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
