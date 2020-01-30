Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4097214D8AF
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jan 2020 11:11:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9B0D877D6;
	Thu, 30 Jan 2020 10:11:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nwAxxTxgF4Nn; Thu, 30 Jan 2020 10:11:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA30187688;
	Thu, 30 Jan 2020 10:11:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EBF6B1BF3EF
 for <devel@linuxdriverproject.org>; Thu, 30 Jan 2020 10:11:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E8A79881E2
 for <devel@linuxdriverproject.org>; Thu, 30 Jan 2020 10:11:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E37NVenu9uL5 for <devel@linuxdriverproject.org>;
 Thu, 30 Jan 2020 10:11:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 83C0C8571C
 for <devel@driverdev.osuosl.org>; Thu, 30 Jan 2020 10:11:47 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id 185so1255629pfv.3
 for <devel@driverdev.osuosl.org>; Thu, 30 Jan 2020 02:11:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2PBKaHNbZPQSw/6pq7aba6IKrrBLpWG1Rl96OfumKs0=;
 b=EXCgN/GZcpZR8poY0LxdVM2/AuJlaC6csMBBu+fX6wHHTn0AhRPoa301cUn7AGRMMh
 +CJSBjmNDacLRQi9qNt5W5xkUhYjaEAJ/vOQfCJoBgS1PQzV3hCr7F0NmnLfA5mDLZ0G
 LeP00up7ZlMjU+4MjawxQI4aEh0DeKFYfFagfLU9ApBiaSG6gIXPSfG4xtLqlerVW1HA
 QVAJhI2IblCdCnMu1RNtk2cFPISH+S54iAO4JG6+2JelFHPTU5jcxLUHc/yQHKhU4kHr
 9ylERID5tt+O8ZyQCj3nhBu8uh6SezhQ4pBXuLjag6sREAL/4zCK3w0K7mHopLlj4pWB
 +wSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2PBKaHNbZPQSw/6pq7aba6IKrrBLpWG1Rl96OfumKs0=;
 b=gFH9Cw11sfPg2XOQY/JGXtk7jWnKiSNbQBBNwEoWqnCf0FPmvFDlEl0vPbXmUekzbF
 92GpuVE8gVgxyNbZ8uSrCBJ6NSup0HZRRuOiK6ttL2y+uAc2coZtc4OXi2b2qq7eI1rI
 tjejB59CeyV4e7n2UEv+QfTvfjF3GlwYFmWVIQBN/IUbeR1sZ29pyCDSZHmQy1OaaR8i
 3uCb8wDUrzY1a+mkmT+vInZHe2FMkbPue8WZD0vPXT60Ee8ytcFvHrjp/pWT/6YcxZAB
 aomuv2akyNx4adaP4Nmt66C1wumoGN01CIzpMMK3Ny342/bZ80WER0p7qnn4PKBQIXUo
 DZmA==
X-Gm-Message-State: APjAAAUY5TeQ/UJ7P6vxyLwbWmTG98XZYWPAJpbg2jEmzW76xUWUl19q
 HhsT5IycIYKcyDS4KYJFHN0=
X-Google-Smtp-Source: APXvYqzN9Et5YzVy6Vg3CItCuYZGt3G1cnM8Z+1QndaFnBbyD1nf8jIGfvN2GF27lVmKUHKgxv+unA==
X-Received: by 2002:a62:1c95:: with SMTP id c143mr4092880pfc.219.1580379106512; 
 Thu, 30 Jan 2020 02:11:46 -0800 (PST)
Received: from localhost.localdomain ([2405:204:848d:d4b5:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id k21sm6239683pfa.63.2020.01.30.02.11.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jan 2020 02:11:45 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: exfat: Remove unused struct 'part_info_t'
Date: Thu, 30 Jan 2020 15:41:17 +0530
Message-Id: <20200130101118.15936-2-pragat.pandya@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200130101118.15936-1-pragat.pandya@gmail.com>
References: <20200130101118.15936-1-pragat.pandya@gmail.com>
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

Remove global declaration of unused struct "part_info_t".
Structure "part_info_t" is defined in exfat.h and not referenced in any
other file.

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 51c665a924b7..b29e2f5154ee 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -231,11 +231,6 @@ struct date_time_t {
 	u16      MilliSecond;
 };
 
-struct part_info_t {
-	u32      Offset;    /* start sector number of the partition */
-	u32      Size;      /* in sectors */
-};
-
 struct dev_info_t {
 	u32      SecSize;    /* sector size in bytes */
 	u32      DevSize;    /* block device size in sectors */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
