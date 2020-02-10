Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D4215827F
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:36:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9B6B8610A;
	Mon, 10 Feb 2020 18:36:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B7jWT2bCDpvQ; Mon, 10 Feb 2020 18:36:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F0C4885C04;
	Mon, 10 Feb 2020 18:36:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7BFCE1BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:36:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7816684545
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:36:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W60EAp7Stw6K for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:36:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9EE3A84492
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:36:27 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id m13so117430pjb.2
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:36:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TGovp5+mlZOcilFelIZAYHcz5dqg4ID3OAhR8cryaZc=;
 b=TzF1R5W827UBKMgaeJW2wS/jV1wxHvSaD09AgiWXsI63/lGrUwyz3NXwJGlY+5IRnE
 TSU6/TtroJDywE5DJPQv8GE4j8Fp3LT6jOvjBCowav5A0K1aR0UqDP6oShTlxu5WVavI
 gGmLMKrCTTptTBs9DtHyI92XaCd6yrc/4D7JAdW5kBlJ4YItA/Zi/h+UisxyAKPyb2Zq
 lath+zxBVrci+L/H7IVXkgCl1f7XPmigsCW3nZhrSIgglwKeo62OdtBgvFK/VPuF13st
 vm7rhONFuMqUtcs9H8couOsFq2CUv1awWp/Gm8oodVVGMTcMHTW2CUB5l3a2X7Bt9L7+
 s7Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TGovp5+mlZOcilFelIZAYHcz5dqg4ID3OAhR8cryaZc=;
 b=ng3T8RfLt9UexhhuoP9p2gOQ1xXuRaV7jzDXPc/xft36tNN6ML9782pawASg34oyoS
 FXGSNXtb3Q4kk6wItmttHVcjboyhRe4FhLW8yX5JlxzYJ9Y/J7znZaMpJm/T8AZFK1Mg
 JjeKGY5Au1r5I9iG7LNR1WrMRr8BKqN2WOzFBdOxphqroaq8Rl4SIL9D6yALBlFU3b33
 iwcm3FkuAGhXVAMOMe2i3kpN+iePI3fhBp7B6nnwXpbQ17OIp+uLr1ozE278zGGK3SSM
 o5iQ3Aq4HQUaILm2XJG4KgorPEt0QabY1/qEEe51e7frlrjJh03BHSMMgo+5az2Svbtg
 RfkA==
X-Gm-Message-State: APjAAAVyAtfHYgKMqVCPPjeGDKlklhmBDG0OgscgH1ya/bM/ww9GMUTt
 1LrGpTyfcqL4QxS69nClK0U=
X-Google-Smtp-Source: APXvYqzfovHWYqXa5ytLSEwg1TcHjkmWIvcU/eg55j/XQ0jyFbelt+aqSD6th0kZfOH1Xl3C2dU46Q==
X-Received: by 2002:a17:902:aa45:: with SMTP id
 c5mr13771719plr.113.1581359787196; 
 Mon, 10 Feb 2020 10:36:27 -0800 (PST)
Received: from localhost.localdomain ([2405:204:8308:74f3:144f:bb39:afc3:51b0])
 by smtp.gmail.com with ESMTPSA id gc1sm124922pjb.20.2020.02.10.10.36.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:36:26 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH v2 00/19] Renaming some identifiers. 
Date: Tue, 11 Feb 2020 00:05:39 +0530
Message-Id: <20200210183558.11836-1-pragat.pandya@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200207094612.GA562325@kroah.com>
References: <20200207094612.GA562325@kroah.com>
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
 -Drop commits renaming unused structure members.


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
  staging: exfat: Rename variable 'NumClusters' to 'num_clusters'
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
