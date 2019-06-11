Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B156C3D561
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 20:21:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5138C87E09;
	Tue, 11 Jun 2019 18:21:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CWo46UUoxesW; Tue, 11 Jun 2019 18:21:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1615387DC5;
	Tue, 11 Jun 2019 18:21:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 889AA1BF425
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 18:21:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 859B187DAF
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 18:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P4KKTXMnEY4v for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 18:21:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E479E87D96
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 18:21:48 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id q10so7936303pff.9
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 11:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=M6/ZPn8xIOzr0YIkcM1HqW+DDeE+OQYEaIUibkKZb5s=;
 b=e4o0MlAUmqo37Ha3paSip6SEW9qNLCaZI+xuZiXxDPjpul+YJjuMC5MIjCp17gwJRS
 4XChw0YtPxCwoGSnW7Xd0VP8QdqaBpIfUv8rjM08wmSRbmOGDeSQz6kU1TnWreNk3Vm6
 1dMgiuA8yYUcKSvq80IL1riHSqxH5CW6toOUjPaBM9gf9rO+WViDcsGQPzwUq99niD6Y
 M4PTDUxDJ3rcFRB+B/K0v+vHPF6A5HIL3DEWtTG0NKx44UbyVoieDDvIKlCfSGp8EUMf
 vtkevDWL+ytKh8B5xyBr5DlWHq5UaDKxBtSP0IrgLFFFSRheHUf18reUzkaB5/GBrPPN
 XU9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=M6/ZPn8xIOzr0YIkcM1HqW+DDeE+OQYEaIUibkKZb5s=;
 b=YreMyBmmjdMWlYmbDgMoNEzwQSxF076Gs6nDcoMO3UnVgg7VnTJeE4dVVGnaYX3saQ
 DFNKmtMJuWNWbbIGr/1rI09VHX0kOb01mmlnjdINcOKDioylqVH99RTS2Wrs7jUMgSpH
 ADz2gBq3lMIaZi5U2rQ2zsKrwauOdnQelNANMTNyUwPYV9FDGwrnVkRUgMSPOwV2CZg+
 FvDOlIrj4wfa0QRKcWDLjT+2znKgdL7OJ5UQAzYKGL9AawXkRv7Hg4aC3x6h93VLAKkY
 mqaXtm4qY+Mz/jcYcIX5Ybs7BQrGs5XzJcdOG6WEokoAVo7qwEReHL2sSef0xYOvE1mA
 0BVA==
X-Gm-Message-State: APjAAAVNNXEV8NNX/1+LOD+Pd4VaY5CsYbGNBiKxPRwdp0HBqM38J9OU
 PX9f0SD0OcXlus/wfho07WE=
X-Google-Smtp-Source: APXvYqxedw3RwRy16+RKHn1pE2FIn+u9mKluOP7NoMBZEtWh8I0BgH+IY7f8QGze0YQNXu08Fo1kOg==
X-Received: by 2002:a63:f70b:: with SMTP id x11mr21904632pgh.212.1560277308535; 
 Tue, 11 Jun 2019 11:21:48 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id o11sm2780547pjp.31.2019.06.11.11.21.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 11:21:47 -0700 (PDT)
Date: Tue, 11 Jun 2019 23:51:42 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>, Arnd Bergmann <arnd@arndb.de>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] staging: rtl8723bs: hal: sdio_ops: fix Comparison to NULL
Message-ID: <20190611182142.GA7164@hari-Inspiron-1545>
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

this patch fixes below warning reported by checkpatch

CHECK: Comparison to NULL could be written "c2h_evt"

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index ac79de8..baeffbb 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -1058,7 +1058,7 @@ void sd_int_dpc(struct adapter *adapter)
 
 		DBG_8192C("%s: C2H Command\n", __func__);
 		c2h_evt = rtw_zmalloc(16);
-		if (c2h_evt != NULL) {
+		if (c2h_evt) {
 			if (rtw_hal_c2h_evt_read(adapter, (u8 *)c2h_evt) == _SUCCESS) {
 				if (c2h_id_filter_ccx_8723b((u8 *)c2h_evt)) {
 					/* Handle CCX report here */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
