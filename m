Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5EEE9463
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Oct 2019 02:05:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F2C4D85C19;
	Wed, 30 Oct 2019 01:05:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jyJaeCLeW0aL; Wed, 30 Oct 2019 01:05:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D18985B0A;
	Wed, 30 Oct 2019 01:05:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB6A71BF578
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 01:04:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A8925879F5
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 01:04:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JRIclxSkIp1n for <devel@linuxdriverproject.org>;
 Wed, 30 Oct 2019 01:04:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B116C87B0A
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 01:04:56 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id e11so417326wrv.4
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 18:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XFZAes7RgqxwDdAozi0+EhyJ8wlf2q6asfkI7/l0nZQ=;
 b=PhWOQCduAFNlpHk5otLDnS8E0eO+4NqcYc4hqHbSIRLm6MIy3cvpjxH9ti4DbTMoyI
 9GatfmkxLy4U0Kz0LDJwsUp2dHXUMNZwNZGdDixICgmwujo5CJHDEDyl9o4qWy0Z8VRC
 SAPg5VqJh3v7DOt2M65ZsVZKA1/7hr0Ly4+Ga/TvGZ3TjTz++rNttLZPsriyk3e5xNI/
 P2ppn9QqgEbZODju2Wgs1uDoN7jbF8DGFwL8qKRhYmWTSodvPESopogE3C4IATi9mmzv
 yKsMiO/Oj7DtI5EkxIALSbEdv/itHCQpMZrat/tLSoGSrIEzS1HLcZSs+UOaRkfPlIgC
 1XAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XFZAes7RgqxwDdAozi0+EhyJ8wlf2q6asfkI7/l0nZQ=;
 b=JK3QQnD0ekgUEzOTGsme1SNXsUzwGRI6M56MKTGO9fIFaRosAC4b7AND6D2Chv+POj
 9NLDU6PO0irextXwq38oWGJPYCF0T5Ub5PCzU1sbAhwt3h3z7n7Mzt5aXo4FMaquW6ix
 WmZuy8qrEixtzrqgAZG5b3DpzedgK7vPG27S9Khss8Vj2xDokRN+jwJVRQc9avVmxrM2
 +l7ZnrimpD5CHmy9eHGrNtZ/3TAoGXDDyzF8eITs8fsYAIfZMs07o4DwpoiV2Bg1GuwM
 /BwFl+EtB9uKh45ijI17n/oKoNez1tn/x+M2vLtVmr8nbkl8t1PV7cJ93Lw5miEGaN+b
 oEZg==
X-Gm-Message-State: APjAAAUmRipLzRJ1R4bf1WcZz+X4pDA1eBbwY7/5nuD+4jOv1LMw4ZpE
 hbaOpGRDPUB/nnkBz1c6MBQ=
X-Google-Smtp-Source: APXvYqwkVFwqr5MhwXSZX6YpuXfC+SDENrbR0rJwNfSDfXV3/y9VfPK+hEw/PXgJxE1i3qtmbl7JYQ==
X-Received: by 2002:a05:6000:11cd:: with SMTP id
 i13mr21519313wrx.197.1572397495128; 
 Tue, 29 Oct 2019 18:04:55 -0700 (PDT)
Received: from localhost ([92.177.95.83])
 by smtp.gmail.com with ESMTPSA id g184sm537493wma.8.2019.10.29.18.04.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 18:04:54 -0700 (PDT)
From: Roi Martin <jroi.martin@gmail.com>
To: valdis.kletnieks@vt.edu
Subject: [PATCH 3/6] staging: exfat: remove unnecessary new line in if
 condition
Date: Wed, 30 Oct 2019 02:03:25 +0100
Message-Id: <20191030010328.10203-4-jroi.martin@gmail.com>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191030010328.10203-1-jroi.martin@gmail.com>
References: <20191030010328.10203-1-jroi.martin@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Roi Martin <jroi.martin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch.pl warning:

	CHECK: Logical continuations should be on the previous line

Signed-off-by: Roi Martin <jroi.martin@gmail.com>
---
 drivers/staging/exfat/exfat_core.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 177787296ab9..4d6ea5c809d3 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -1727,8 +1727,7 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 	ep = (struct dentry_t *)(buf + off);
 	entry_type = p_fs->fs_func->get_entry_type(ep);
 
-	if ((entry_type != TYPE_FILE)
-		&& (entry_type != TYPE_DIR))
+	if ((entry_type != TYPE_FILE) && (entry_type != TYPE_DIR))
 		goto err_out;
 
 	if (type == ES_ALL_ENTRIES)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
