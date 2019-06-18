Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 676774968C
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 03:07:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CAEAB20499;
	Tue, 18 Jun 2019 01:07:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GWmYMfKdvz+M; Tue, 18 Jun 2019 01:07:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 479A22049C;
	Tue, 18 Jun 2019 01:07:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F0211BF32A
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 01:07:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5ACBE85775
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 01:07:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A6krwP9nNBgK for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 01:07:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D7D4085773
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 01:07:09 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id d126so6605363pfd.2
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 18:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=3qTJFL8TPYAqD0lX4UvXoMh+5EQ/OFFtCVywLSut39U=;
 b=HIchASJa206vE1wX0c7Oz9ds9JnvLJZKFYjW3anhBAHYujhrWUR9H0Lr9tZQpWO5kE
 huPFQLgon04TOH+mUxayg0ngWwQq4UPRfU9KRVL9yI8ZeMHaVVffXnqN3vV/VolXhHv3
 h/SbSSprbALTU+4mFTtb+b/PuTMXJMWOyZnczYbvLpYkoMCmhfNzDXLAFepTHo3QVbdt
 c72/2m7wsqG6gUbA7Vi1tM+fOTG0tNuOnRkPQumXgFL4cGtplwG5awcVGaAcAgonF2BT
 Pc9Y4RnPJ6XQ/e+h14jhV9ancEKGQmx6+o38gQ1CoAzJMjDn5c9a2fnJxw3PdIB26nsF
 in9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=3qTJFL8TPYAqD0lX4UvXoMh+5EQ/OFFtCVywLSut39U=;
 b=A2jsZ9i7CnY/nXiemnd1MuUVXMikCU9wPqibxkzyN/fAyhGxhDpnlh+Lmpv145UzhJ
 ec2aL/josgRHvCoCt1W0VyZIlZBuuZyvOM2Eg3hYc7GsHeU5AjUFLngJ1NK1vgpnzLxu
 TyeAEMogBWAWN4IFVOtC/o6flYX5a+FWQv+sYoTYJvK/Ikrr+ASTlIcbRsMBh45q63Ca
 LvNWom9X3FlnYZrA91G8FJdIjZ966jAIF8Cyd53L9oYfZa1ESRkWJkLcCqMEGsHOVTin
 3c7k2lsWEnvwCNA9Q1C63d4h+7sd5KVUDhKv2/7G2q0S32QlQwiYz4L+Dqfw8LK/Bi/C
 bm9g==
X-Gm-Message-State: APjAAAXqw7V4GO9wqbqSAxyWxrzjA3CB9X1l/1oSYQhszdLEosojDHoQ
 IkSLHivecoAl+6+mkEaWLAI=
X-Google-Smtp-Source: APXvYqweCsmBFCydDkHkLeyQD5pSD2Sp8qrKxrENAs7Xm/i3YBEfTpUlJYGwJDHb6k5T2fg0XgMmeQ==
X-Received: by 2002:a17:90a:5d15:: with SMTP id
 s21mr2134582pji.126.1560820029360; 
 Mon, 17 Jun 2019 18:07:09 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id j16sm432558pjz.31.2019.06.17.18.07.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 18:07:08 -0700 (PDT)
Date: Tue, 18 Jun 2019 06:37:03 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] staging: rtl8723bs: hal: rtl8723b_hal_init: fix
 Comparison to NULL
Message-ID: <20190618010703.GA7061@hari-Inspiron-1545>
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

This patch tries to fix below issues reported by checkpatch

CHECK: Comparison to NULL could be written "!efuseTbl"
CHECK: Comparison to NULL could be written "!psta"

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 21f2365..624188e 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -1023,7 +1023,7 @@ static void hal_ReadEFuse_BT(
 	}
 
 	efuseTbl = rtw_malloc(EFUSE_BT_MAP_LEN);
-	if (efuseTbl == NULL) {
+	if (!efuseTbl) {
 		DBG_8192C("%s: efuseTbl malloc fail!\n", __func__);
 		return;
 	}
@@ -2139,7 +2139,7 @@ static void UpdateHalRAMask8723B(struct adapter *padapter, u32 mac_id, u8 rssi_l
 		return;
 
 	psta = pmlmeinfo->FW_sta_info[mac_id].psta;
-	if (psta == NULL)
+	if (!psta)
 		return;
 
 	shortGIrate = query_ra_short_GI(psta);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
