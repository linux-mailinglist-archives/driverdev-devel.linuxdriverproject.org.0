Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B41D114CEBB
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 17:59:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 399C285F82;
	Wed, 29 Jan 2020 16:59:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4tUUGMeUuUTd; Wed, 29 Jan 2020 16:59:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB9F185F68;
	Wed, 29 Jan 2020 16:59:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 529431BF2AF
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4F9DA21552
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 16:58:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4GyLKlKK4Cvq for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 16:58:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
 [209.85.215.176])
 by silver.osuosl.org (Postfix) with ESMTPS id BB15A2156F
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 16:58:54 +0000 (UTC)
Received: by mail-pg1-f176.google.com with SMTP id b9so47087pgk.12
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 08:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=eD+vRWY6gNxHaAV067ybERz640J/iRSAZ6Igbxb8aJA=;
 b=LzePr+ho2mkMe7rrNfWRFX+CZgPIUeo9UTtw7QPUjt74C05Xi6AAXoWzxFDL2OQfPp
 XE2FnCXuNWtEkD/9MhuOc0BEN8hJQVcJSk0VoOav/PF4eEwSLVcoaxWJx6WMjSwDBfh7
 biWGjzQFxbwgYH1YlpeSbMZ510lZq8uTMreaXWXUfG/QwipOfChGjk4lc3CX929NjZ8Y
 JJ7yLtWJb94bl2oW/deQvXy+zQbzP2C/lULG6lAE3iD9OUOyeqZ6EC1iegdxOTKyl0xh
 qpbnFODvHEN0BVVdDv3/cBdVL64i/V26f+QaUYHB9aVHPaC2TAo0B9kqXR0nNkOK8MaU
 76+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=eD+vRWY6gNxHaAV067ybERz640J/iRSAZ6Igbxb8aJA=;
 b=GlFzJQQzUnHTlr+z6vcK+b7egSjbMYuxNlfwcPMbOUD6ZTxIYcu3FdWaT8vwrq9+rS
 SoxNXI9pyM0kPsADhnFG44CyzDSQrE9hvlU79A921mppjhnym60kyhDV6OG7dqwTMzaL
 qAIakor8mJLocso8XGaAr2FMQa/A37hGlvzbXd0ZQOl1DqCJL1rxKGUtAG+r3Ubo7kWM
 RH7lqHBOZodCFOOMAk/Y8QwQnR6Se3S6OEHavvaQ7EMQyywVSGir3d2Ubt411lCezTJn
 YcWACiO8zbyQmW9H6r8ZhbwYA74HGVCoPI8qK5KpggtuupmleThcULnb/DNRNikF0QN6
 fLEQ==
X-Gm-Message-State: APjAAAU12+jeyVF7Y45pBiyp9hKltLuJXsyna5eFmXgfCH4Dam5LggMM
 DOxnlJHSftgsPsUfVCfhQsM=
X-Google-Smtp-Source: APXvYqxs/Jl7PMhYtjwLBwzCSSLuYsfivJj3Uv7KEyLY8Gtm/XNRdAwennWZZ0/+2Dr0Yhxg6rPsYg==
X-Received: by 2002:a65:66c4:: with SMTP id c4mr32175251pgw.429.1580317134361; 
 Wed, 29 Jan 2020 08:58:54 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id f8sm3223610pfn.2.2020.01.29.08.58.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 08:58:53 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH 00/19] Renaming some identifiers
Date: Wed, 29 Jan 2020 22:28:13 +0530
Message-Id: <20200129165832.10574-1-pragat.pandya@gmail.com>
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

This patchset renames following nineteen variables in exfat.h
Fix checkpatch warning: Avoid CamelCase
 -Year->year
 -Day->day
 -Hour->hour
 -Minute->minute
 -Second->second
 -Millisecond->millisecond
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

v2:
 -Correct misplaced quatation character in subject line(s).
 -Remove unnecessary '_'(underscore) character in renaming of identifier
  MilliSecond.
 -Drop commits renaming unused struct members.
 

Pragat Pandya (19):
  staging: exfat: Rename variable 'Year' to 'year'
  staging: exfat: Rename variable 'Month' to 'month'
  staging: exfat: Rename variable 'Day' to 'day'
  staging: exfat: Rename variable 'Hour' to 'hour'
  staging: exfat: Rename variable 'Minute' to 'minute'
  staging: exfat: Rename variable 'Second' to 'second'
  staging: exfat: Rename variable 'MilliSecond' to 'millisecond'
  staging: exfat: Rename variable 'FatType' to 'fat_type'
  staging: exfat: Rename variable 'ClusterSize' to 'cluster_size'
  staging: exfat: Rename variable 'NumClusters' to 'num_cluster'
  staging: exfat: Rename variable 'FreeClusters' to 'free_clusters'
  staging: exfat: Rename variable 'UsedClusters' to 'used_clusters'
  staging: exfat: Rename variable 'Name' to 'name'
  staging: exfat: Rename variable 'ShortName' to 'short_name'
  staging: exfat: Rename variable 'Attr' to 'attr'
  staging: exfat: Rename variable 'NumSubdirs' to 'num_subdirs'
  staging: exfat: Rename variable 'CreateTimestamp' to
    'create_timestamp'
  staging: exfat: Rename variable 'ModifyTimestamp' to
    'modify_timestamp'
  staging: exfat: Rename variable 'AccessTimestamp' to
    'access_timestamp'

 drivers/staging/exfat/exfat.h       |  38 ++---
 drivers/staging/exfat/exfat_super.c | 232 ++++++++++++++--------------
 2 files changed, 135 insertions(+), 135 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
