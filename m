Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A92472C2
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 05:14:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA15284F12;
	Sun, 16 Jun 2019 03:14:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OpGboeXDk09L; Sun, 16 Jun 2019 03:14:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 55231849A6;
	Sun, 16 Jun 2019 03:14:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 491111BF963
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 03:14:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3226C85566
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 03:14:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IXmTZs9JpTdq for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 03:14:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A5073834A1
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 03:14:16 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id k187so3837597pga.0
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2019 20:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=rM+/ypTKzHDjmz5d8wUoyWYZZW60mbQw25HJyMsGcus=;
 b=g0E2MJVyJwD8xzdXPW4vo5+svFBVDkX3MTAZMd/BVjkmU8RTOcXWTSqspOn9f2IdCa
 in3syGs281wTXIoJupcx6YFReM+1FWNyusQXDsL84KT/ueVNqDoCz0aMWXmcZE+KuJgM
 pzK6A8AfHIOPQ65RVGCE7B37O8lhw3ojjhkSdaWSjvQMb4yyXI6chs4jJnbu1lLHJbKb
 6vEpb8fIZPy+pxXkv4wQPC4YXP9nZo1I6PYvcnonL/+q4MGfVjO1yf1iPwYXCLU6XzbN
 ciSKb0OsvgnINeFLiWb2YfPWfUcTIgmFKJwNLVUZ0F0FNRJp2/F91tGCQDMmwZK6FRlz
 p85g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=rM+/ypTKzHDjmz5d8wUoyWYZZW60mbQw25HJyMsGcus=;
 b=STzQp6rbEYea+Sp4tu8sb/QauzYkDd0JqENNkg3VYHHgvPNUd4fmO67yk1uE/4217Q
 hsXl4uSrhEVI9r3Jf/2yWQpwYiu0bLUJHRrfWuA92xaQFHI8XI985HjWhG7qS0sn9Rt3
 FYoJY66usiTy41Q8FJGcLCipPmY8onz4uhd+sFdYzkCDcv78LHvXbKfdQopCu5U1P6vE
 tOci/srBuRWTwDCPJFQ7oy1oZ6UVuDLvKGLUCy3CY5GFN+xCyyrRkO3hxq4d8ppBzF3J
 a+LFDwKtdLs7jt0F3BELVR9RoKHiqgo06gxo/N1ZvZky0OmUYij3D8MKBMr20Ma27hqB
 nWBQ==
X-Gm-Message-State: APjAAAXKv9zHTjQcLL8e6hRiFGJkEMK7e7Eedb3R1Dlgq0fp8f7zYDfc
 3l4NeuuFVtXuNTysvGRfJO8=
X-Google-Smtp-Source: APXvYqx5Q5OzlQnfYKaEt8bu5j1BLwY8DuR4IQwNc2Yj7q95qerphSUWOKKRyNbbNGEH0WBOjgw2Hw==
X-Received: by 2002:a65:514a:: with SMTP id g10mr42838711pgq.328.1560654856182; 
 Sat, 15 Jun 2019 20:14:16 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id l10sm746697pgm.26.2019.06.15.20.14.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Jun 2019 20:14:15 -0700 (PDT)
Date: Sun, 16 Jun 2019 08:44:09 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Colin Ian King <colin.king@canonical.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: Add null check after memory
 allocation
Message-ID: <20190616031409.GA13001@hari-Inspiron-1545>
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

Add NULL check post call to rtw_zmalloc.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index ac79de8..9177c18 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -816,6 +816,9 @@ void clearinterrupt8723bsdio(struct adapter *adapter)
 	haldata = GET_HAL_DATA(adapter);
 	clear = rtw_zmalloc(4);
 
+	if (!clear)
+		return;
+
 	/*  Clear corresponding HISR Content if needed */
 	*(__le32 *)clear = cpu_to_le32(haldata->sdio_hisr & MASK_SDIO_HISR_CLEAR);
 	if (*(__le32 *)clear) {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
