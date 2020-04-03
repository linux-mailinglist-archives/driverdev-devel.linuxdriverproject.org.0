Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3626F19D9AA
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 17:01:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 364E886FBA;
	Fri,  3 Apr 2020 15:01:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8wdQm-4C_9Dy; Fri,  3 Apr 2020 15:01:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62DA487051;
	Fri,  3 Apr 2020 15:01:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D1A871BF853
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 15:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C2BCA204C7
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 15:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CTOl5cTbKYB4 for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 15:01:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 11A43203AE
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 15:01:42 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id r16so7459455wmg.5
 for <devel@driverdev.osuosl.org>; Fri, 03 Apr 2020 08:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references:reply-to;
 bh=sDns12DzSDhUNYedjPxBYIUZam64/1xEznokxCLCf+Q=;
 b=UkRQWilTW9w1n0gWdnLdbKcPw4Vl4KagACmSRI+NqoKo+KTZ2nzqLt+rUzXgfs6gEH
 cAcxCUYsSCbmUQYk3lV86oh54MdL1xdkTcJ0MssCOVDOGbIId9YepbSCBVMQQJSidxOj
 qe9GroB+PVBgrrSevHMWmLsxv15oOcwdl3D4P72bdbUUS4/aVKgxLDfwf6X9ABARXgje
 ItnhwFrKlb/ysRsFjQlDBB3ap/8nma3V70DUDA2+Y/+Y8OWCOfjbjF+H/Jjg3RMFHxDY
 lGFE1S3EEhUMwgAuQnmYwU/JoIpd+ILwpFQv2fMgpz3gDRAFvkcl1r1jv5dTtKO0t8zI
 WSgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:reply-to;
 bh=sDns12DzSDhUNYedjPxBYIUZam64/1xEznokxCLCf+Q=;
 b=FGH9zVd2QZU6mEs98WKvoDBysE+0RomVY0YdRt8X6kLA6v1zxT2emhfiu4ftp4V4b2
 q9ThmBXKom+uxMIZxNVXoKxYLyrHHvIuKTZ8yBUuf9QZ0ivvjw6As9BwRTxhetpOihEp
 VVyhy2fvef/ZqPODx/c4DmUZ4a/wxJtxVFbV1BE6HGipNZBcbWMYWKfwuR70ZH6q/yKb
 af5gLHaynhakucgAtjocar47xcEB9SDZ9A9Sel1OtW0d+hfoueyH8VNSvubFJInMs2MX
 rZ7AGAfRVssfkhPyj5Px99mFdQZyOQ+ob0EuAN7xm5IhTg7TOdZRkxwVMcfbrjakNpkN
 ph8g==
X-Gm-Message-State: AGi0Puac5wnmDqGKM8idNs0OtwWscJ86CsPAkkivCFhb1C+3QF4OXHMk
 KoPlPeZdpuEZ1JL9/vF4TPU=
X-Google-Smtp-Source: APiQypJ0eqKHDVfuz9gym1IcLzPByvzG2ykV3M2shwZNbS3yOs0P1TpRF1R14w5usoxRzTQlKZD+HA==
X-Received: by 2002:a7b:c012:: with SMTP id c18mr6100886wmb.22.1585926100367; 
 Fri, 03 Apr 2020 08:01:40 -0700 (PDT)
Received: from ENIAC10 (a79-168-108-217.cpe.netcabo.pt. [79.168.108.217])
 by smtp.gmail.com with ESMTPSA id m21sm11586654wmc.6.2020.04.03.08.01.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 08:01:39 -0700 (PDT)
Received: from ENIAC10 (localhost [127.0.0.1])
 by ENIAC10 (8.15.2/8.15.2/Debian-10) with ESMTP id 033F1cRG020529;
 Fri, 3 Apr 2020 16:01:38 +0100
Received: (from lpnm@localhost)
 by ENIAC10 (8.15.2/8.15.2/Submit) id 033F1a0g020505;
 Fri, 3 Apr 2020 16:01:36 +0100
From: Luis Mendes <luis.p.mendes@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: [PATCH 01/01] staging: gasket: Fix incongruency in handling of sysfs
 entries creation
Date: Fri,  3 Apr 2020 16:00:08 +0100
Message-Id: <20200403150008.20458-1-luis.p.mendes@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <[PATCH 01/01] staging: gasket: Fix incongruency in handling of
 sysfs entries creation>
References: <[PATCH 01/01] staging: gasket: Fix incongruency in handling of
 sysfs entries creation>
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
Reply-To: luis.p.mendes@gmail.com
Cc: devel@driverdev.osuosl.org, Luis Mendes <luis.p.mendes@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wentao Cai <etsai042@gmail.com>, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix incongruency in handling of sysfs entries creation.
This issue could cause invalid memory accesses, by not properly
detecting the end of the sysfs attributes array. 

Fixes: 84c45d5f3bf1 ("staging: gasket: Replace macro __ATTR with __ATTR_NULL")

Signed-off-by: Luis Mendes <luis.p.mendes@gmail.com>
---

 gasket_sysfs.c |    3 +--
 gasket_sysfs.h |    4 ----
 2 files changed, 1 insertion(+), 6 deletions(-)

diff -uprN -X linux-5.6-rc7-vanilla/Documentation/dontdiff linux-5.6-rc7-vanilla/drivers/staging/gasket/gasket_sysfs.c linux-5.6-rc7/drivers/staging/gasket/gasket_sysfs.c
--- linux-5.6-rc7-vanilla/drivers/staging/gasket/gasket_sysfs.c	2020-03-23 01:31:56.000000000 +0000
+++ linux-5.6-rc7/drivers/staging/gasket/gasket_sysfs.c	2020-03-29 18:52:39.399925886 +0100
@@ -228,8 +228,7 @@ int gasket_sysfs_create_entries(struct d
 	}
 
 	mutex_lock(&mapping->mutex);
-	for (i = 0; strcmp(attrs[i].attr.attr.name, GASKET_ARRAY_END_MARKER);
-		i++) {
+	for (i = 0; attrs[i].attr.attr.name != NULL; i++) {
 		if (mapping->attribute_count == GASKET_SYSFS_MAX_NODES) {
 			dev_err(device,
 				"Maximum number of sysfs nodes reached for device\n");
diff -uprN -X linux-5.6-rc7-vanilla/Documentation/dontdiff linux-5.6-rc7-vanilla/drivers/staging/gasket/gasket_sysfs.h linux-5.6-rc7/drivers/staging/gasket/gasket_sysfs.h
--- linux-5.6-rc7-vanilla/drivers/staging/gasket/gasket_sysfs.h	2020-03-23 01:31:56.000000000 +0000
+++ linux-5.6-rc7/drivers/staging/gasket/gasket_sysfs.h	2020-03-29 18:52:56.487839090 +0100
@@ -30,10 +30,6 @@
  */
 #define GASKET_SYSFS_MAX_NODES 196
 
-/* End markers for sysfs struct arrays. */
-#define GASKET_ARRAY_END_TOKEN GASKET_RESERVED_ARRAY_END
-#define GASKET_ARRAY_END_MARKER __stringify(GASKET_ARRAY_END_TOKEN)
-
 /*
  * Terminator struct for a gasket_sysfs_attr array. Must be at the end of
  * all gasket_sysfs_attribute arrays.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
