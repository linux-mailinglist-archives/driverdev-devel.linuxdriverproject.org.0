Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D0514A18D
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 11:14:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 485438789C;
	Mon, 27 Jan 2020 10:14:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3cFPMeUX1cic; Mon, 27 Jan 2020 10:14:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B6AE878A4;
	Mon, 27 Jan 2020 10:14:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 12FC41BF294
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:14:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0889420476
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:14:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Og8FRJnJRIat for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 10:14:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by silver.osuosl.org (Postfix) with ESMTPS id 094B520026
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 10:14:23 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id m4so2915216pjv.3
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 02:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rjuMryPmuzxZLUVwYOvSS2lNQu9Hy6NwM2Wa5WwZ6xE=;
 b=aIaT3JXImsy3aXbKYi0Fcxeg5tlE90D5qQ+/NZKcO4TVgWecuPHqGJsUbrSmKtDgGB
 GetCxUnOH3jlCLK4X3IZVxO2+rwAljH3wYN8claKhhKoEfKvyQ2kgliBNpVQN7TYV2JV
 xrxKK+jQhyRHl8kZ+CIjgyS/RorI4GS22dGYldq66JErRq5/IZAm4PRPL0OpGKT+JDQm
 a+eMP1kKjByOma4Qmcqgz19PYqNT+KUhiuZOESUYJ8hV+yFDASSNLRToNzMo4DV1w0eT
 G4h2KrrFInoOG33Zs5vYQlHLDUIdllq8ub6NbvbqgCVVllVA1H3JUNf7ecxYslItKpvL
 89YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rjuMryPmuzxZLUVwYOvSS2lNQu9Hy6NwM2Wa5WwZ6xE=;
 b=Od9SV8MbbyIH0MWivZrJTt/5Xs31IvnmQ6IONYzX72vHRVX4psyDjL1j9IEP6Qi924
 CR9SLjGJm95R4vn+9upbAs4trLkQmFIEljA1bu61u49h+AdAU7FI+qqXSrUF/7IRsatc
 hYu4agze/2WtkBTU+G6ztwiT/lLG9G65BzQ15UQRvbjWGpoza81FYFx5ARlRfCyJ4mPG
 j3aq8fTBGhHGXvxBXK218nqC+old3jiivjXNUi5Zzez2f/WPdOF21jHgz/9fJ/muSHUy
 kQ08nCFpZi3bqkzBuF++4Rge7330bj8b9oOnKuEdWXht0SYcPsgx1IIazMec2PJJ5ne6
 G8Kg==
X-Gm-Message-State: APjAAAVNmF/6Tvne3lkMVsGpI6TbT7HHpH0BkTEKDQF6ouhj4JNr5v0I
 d1bNkXHn8TOiIcFUTUHyYXI=
X-Google-Smtp-Source: APXvYqz6f38Z1esCAAN37J4nFDTF0Db9fcFJcPrHXU/kX5lJJbqNF/Kia27iIdRvwyJKHx5omIfHsQ==
X-Received: by 2002:a17:902:8d83:: with SMTP id
 v3mr17289956plo.282.1580120062576; 
 Mon, 27 Jan 2020 02:14:22 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c902:a5e9:3956:8df2:aee5:9cf6])
 by smtp.gmail.com with ESMTPSA id s15sm15504138pgq.4.2020.01.27.02.14.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 02:14:21 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 00/22] staging: exfat: Fix checkpatch warning: Avoid
Date: Mon, 27 Jan 2020 15:43:21 +0530
Message-Id: <20200127101343.20415-1-pragat.pandya@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, linux-fsdevel@vger.kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


This patchset renames following twenty-two variables declared in exfat.h
Fix checkpatch warning: Avoid CamelCase.
 -Year->year
 -Month->month
 -Day->day
 -Hour->hour
 -Minute->minute
 -Second->second
 -MilliSecond->milli_secnod
 -Offset->offset
 -Size->size
 -SecSize->sec_size
 -FatType->fat_type
 -ClusterSize->cluster_size
 -NumClusters->num_clusters
 -FreeClusters->free_clusters
 -UsedClusters->used_clusters
 -Name->name
 -ShortName->short_name
 -Attr->attr
 -NumSubdirs->num_subdirs
 -CreateTimestamp->create_timestamp
 -ModifyTimestamp->modify_timestamp
 -AccessTimestamp->access_timestamp


Pragat Pandya (22):
  staging: exfat: Rename variable "Year" to "year"
  staging: exfat: Rename variable "Month" to "mont"h
  staging: exfat: Rename variable "Day" to "day"
  staging: exfat: Rename variable "Hour" to "hour"
  staging: exfat: Rename variable "Minute" to "minute"
  staging: exfat: Rename variable "Second" to "second"
  staging: exfat: Rename variable "MilliSecond" to "milli_second"
  staging: exfat: Rename variable "Offset" to "offset"
  staging: exfat: Rename variable "Size" to "size"
  staging: exfat: Rename variable "SecSize" to "sec_size"
  staging: exfat: Rename variable "FatType" to "fat_type"
  staging: exfat: Rename variable "ClusterSize" to "cluster_size"
  staging: exfat: Rename variable "NumClusters" to "num_clusters"
  staging: exfat: Rename variable "FreeClusters" to "free_clusters"
  staging: exfat: Rename variable "UsedClusters" to "used_clusters"
  staging: exfat: Rename variable "Name" to "name"
  staging: exfat: Rename variable "ShortName" to "short_name"
  staging: exfat: Rename variable "Attr" to "attr"
  staging: exfat: Rename variabel "NumSubdirs" to "num_subdirs"
  staging: exfat: Rename variabel "CreateTimestamp" to
    "create_timestamp"
  staging: exfat: Rename variable "ModifyTimestamp" to
    "modify_timestamp"
  staging: exfat: Rename variable  "AccessTimestamp" to
    "access_timestamp"

 drivers/staging/exfat/exfat.h       |  44 +++---
 drivers/staging/exfat/exfat_super.c | 232 ++++++++++++++--------------
 2 files changed, 138 insertions(+), 138 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
