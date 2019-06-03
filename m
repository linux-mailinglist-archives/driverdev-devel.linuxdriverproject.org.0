Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D523374A
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 19:52:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B52185E24;
	Mon,  3 Jun 2019 17:52:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H5jemE8Eualb; Mon,  3 Jun 2019 17:52:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E325185D61;
	Mon,  3 Jun 2019 17:52:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CDEDF1BF574
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 17:52:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C84E622686
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 17:52:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fr9wN1FWn8EM for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 17:52:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 211702266F
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 17:52:31 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id h2so5468013pgg.1
 for <devel@driverdev.osuosl.org>; Mon, 03 Jun 2019 10:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=DGoxdD5EUIGT9bBxoW5B+18v9hq8tueDEjWNmvtG0II=;
 b=ob1LuuhjIlmwK3FDWvTNjdt5OAF8gJwg61MhWz2Mx/CWZtO36JkJe2KxBFhHrd/r/6
 3NI+AAM2zh+2+hfcvuvBT5tbwG/HCWd5QAdIrLQRPFMud2AY0NKW9/CI14FNeeqlAOV4
 ZjKEbiFClDENsZ8mC6zmO28eFhmmKZ3QL/NrNRjUD+MNT3IHEjHGPxvb+3wCdEWZN80m
 CLAdQdImWDFk8LKVgvMMKvHI+yaYfsnGwIKIcwQJYBAv1I500HiDj8iCSLvrnLmoy7A0
 5Bhg4qqM+iTEHPXsJlZIL8Z+x28aJFhCq7QdGpQOC4uKbUeGZ7oFpdBt1QbkZCCptcSo
 e00w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=DGoxdD5EUIGT9bBxoW5B+18v9hq8tueDEjWNmvtG0II=;
 b=muja94w1HdnW4TPcD5yF1qj4aRWbbg1Hi2GYDKFyOqY005ZtIQmf+tS1Zbm5xTaPUQ
 ieAHNz4hQjmXxOPHJ0JgqB5i0UB+/LjEQpuHUfPh/6UfIcqoHiwEVffba5u1ka2XxDOQ
 ff0F4XZu5opcDvImGmym9uuZAnXNcUT6fjwm51vUYMImBvNcHvkf05ACbTOxZxWqrzjp
 1SqyhgJR6qdsT6oZn3y32lRIDNM1+/7EqKgYf6BvWQsN1qS0OnKsze5CoJSNBsuUNs1p
 jkGybxn77wvyZ9kb5Oh2yhc0X6eJhzl8TUlZzlfTQzS1sGU4sLQqRh6HPjRloHRG3hDN
 PfNg==
X-Gm-Message-State: APjAAAWtNVzKJIGE0gbX+gQ62tQ9Y0u61COplbBmeJlTGFVL8NtMO+Cp
 lRj+sFqqTYC6Wyh4GZjdwK4=
X-Google-Smtp-Source: APXvYqyzlJBE8dZ2W7VdzNCe0CNxLtYKrIcDjILqD3pD1BNSm89pIOihJmk7uZXlhG7hqgMlJhHiTA==
X-Received: by 2002:a63:d504:: with SMTP id c4mr21542620pgg.20.1559584350790; 
 Mon, 03 Jun 2019 10:52:30 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id 127sm15459038pfc.159.2019.06.03.10.52.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 10:52:29 -0700 (PDT)
Date: Mon, 3 Jun 2019 23:22:24 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Hans de Goede <hdegoede@redhat.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: fix error "do not initialise
 globals to 0"
Message-ID: <20190603175224.GA4969@hari-Inspiron-1545>
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

this patch fixes below Errors reported by checkpatch

ERROR: do not initialise globals to 0
+u8 g_fwdl_chksum_fail = 0;

ERROR: do not initialise globals to 0
+u8 g_fwdl_wintint_rdy_fail = 0;

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index caa8e2f..21f2365 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -217,7 +217,7 @@ void _8051Reset8723(struct adapter *padapter)
 	DBG_8192C("%s: Finish\n", __func__);
 }
 
-u8 g_fwdl_chksum_fail = 0;
+u8 g_fwdl_chksum_fail;
 
 static s32 polling_fwdl_chksum(
 	struct adapter *adapter, u32 min_cnt, u32 timeout_ms
@@ -262,7 +262,7 @@ static s32 polling_fwdl_chksum(
 	return ret;
 }
 
-u8 g_fwdl_wintint_rdy_fail = 0;
+u8 g_fwdl_wintint_rdy_fail;
 
 static s32 _FWFreeToGo(struct adapter *adapter, u32 min_cnt, u32 timeout_ms)
 {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
