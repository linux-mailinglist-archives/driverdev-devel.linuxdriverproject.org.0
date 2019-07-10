Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 152D464DA2
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jul 2019 22:36:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9F8F687EBA;
	Wed, 10 Jul 2019 20:36:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zPG6wjnaMgNJ; Wed, 10 Jul 2019 20:36:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C1FE87EA0;
	Wed, 10 Jul 2019 20:36:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D7BA1BF39D
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 20:35:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 89AF587EA0
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 20:35:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1-iy-RWYV+aM for <devel@linuxdriverproject.org>;
 Wed, 10 Jul 2019 20:35:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CB15A87E9D
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 20:35:56 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id 16so3407400ljv.10
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 13:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jKFc1Wq9QBg2lW0t341DLmsTyWawFPwecMNk4oaiTPY=;
 b=uTwZ4SVG0MeSMc+IiWS4bcYIK1/Jsjtw7/x8O1aXh6EesgPFAtzwbum8meOxBxuy1J
 mR64l2T1mFOenH5qOVNDjTARfoVsFMEMlrfw0e0qqwrv4KQDRgkgUSJvfa8das+T9UOU
 eAdZU4sedsdsADSkE18PH2S0X1n33b0E+D8JAYnscfZLFprk3R9ERU1AoVZNYEHeFEte
 Xpk1FZn3065trsbIzfW824VF8o01cNsoqs7PTcg0UfTPZKr5CZrz9I3nWEfnEVW2Z3Ng
 wAYDfV39S2zNrRFPFcfZhQd7V/G8ViaiT9MUMFJjX0mHiaC5XwVbSp0/vYj2da9ljmvk
 3aFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jKFc1Wq9QBg2lW0t341DLmsTyWawFPwecMNk4oaiTPY=;
 b=ZEqVI8ElIJ7uqcMefTispqdffNQ4F2vbKX2XxQu8SAexBCs+O9U5XYSzG8XqNa0zLC
 RGSE5IRoK7BYC4scwBv4botHwOA+ee9KbCOjaFOOaK3NOob8Oor/dv1j7E/sHbql8tZ0
 4nTzXnaHuomI0Lgpf8DWBrliBxR/dDtLAdn6eFX4emjzgaNI5q0Mf5gbRp06odkDE8nE
 ivqrgUuCPOs/avv0M1N74gvLO9YgB4H9kwzvd5DbFybY8Y+MvmkNfM4xIm5K93Id0v5L
 IO9aP6OzfgPpQgKrSLKbcLRjYwzJg1PiQ1MPgL0izagnrsSCZ3iv9CM/amVotX1IxxvH
 D/zA==
X-Gm-Message-State: APjAAAXQsFFNSBi9Ve3cJ0M318XmjEyudgXNUnuOtSdlJaI1/JinHb2k
 vbNPXBc8z9VWA+xxM3vquwiN9cKW
X-Google-Smtp-Source: APXvYqxz3ja1YNV5lfOWOxXgUi8GNOWPkV3FDNEtOtbXK2rBxkm9JMwsz1Gd9zvSZjt1NlT6QeDgOQ==
X-Received: by 2002:a2e:9b84:: with SMTP id z4mr85314lji.75.1562790954703;
 Wed, 10 Jul 2019 13:35:54 -0700 (PDT)
Received: from localhost.mts.local ([5.144.106.90])
 by smtp.gmail.com with ESMTPSA id r24sm706126ljb.72.2019.07.10.13.35.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 13:35:53 -0700 (PDT)
From: Ivan Bornyakov <brnkv.i1@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: gasket: apex: fix copy-paste typo
Date: Wed, 10 Jul 2019 23:45:18 +0300
Message-Id: <20190710204518.16814-1-brnkv.i1@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
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
Cc: Ivan Bornyakov <brnkv.i1@gmail.com>, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, rspringer@google.com, toddpoynor@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In sysfs_show() case-branches ATTR_KERNEL_HIB_PAGE_TABLE_SIZE and
ATTR_KERNEL_HIB_SIMPLE_PAGE_TABLE_SIZE do the same. It looks like
copy-paste mistake.

Signed-off-by: Ivan Bornyakov <brnkv.i1@gmail.com>
---
 drivers/staging/gasket/apex_driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index 2be45ee9d061..464648ee2036 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -532,7 +532,7 @@ static ssize_t sysfs_show(struct device *device, struct device_attribute *attr,
 		break;
 	case ATTR_KERNEL_HIB_SIMPLE_PAGE_TABLE_SIZE:
 		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
-				gasket_page_table_num_entries(
+				gasket_page_table_num_simple_entries(
 					gasket_dev->page_table[0]));
 		break;
 	case ATTR_KERNEL_HIB_NUM_ACTIVE_PAGES:
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
