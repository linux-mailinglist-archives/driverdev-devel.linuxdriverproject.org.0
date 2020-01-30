Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF4914D8B4
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jan 2020 11:12:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4D1A5226F5;
	Thu, 30 Jan 2020 10:11:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uvjgx95KjuKK; Thu, 30 Jan 2020 10:11:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 00495226D4;
	Thu, 30 Jan 2020 10:11:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4408E1BF3EF
 for <devel@linuxdriverproject.org>; Thu, 30 Jan 2020 10:11:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 40CC58822A
 for <devel@linuxdriverproject.org>; Thu, 30 Jan 2020 10:11:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8YXWD9DIUvvy for <devel@linuxdriverproject.org>;
 Thu, 30 Jan 2020 10:11:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D0D5D8571C
 for <devel@driverdev.osuosl.org>; Thu, 30 Jan 2020 10:11:52 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id gv17so1139350pjb.1
 for <devel@driverdev.osuosl.org>; Thu, 30 Jan 2020 02:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=X6B408HVKqVgRddttBmZ/lvRWns0/HwPdIVXoXJfH4E=;
 b=c7Ivzmp3oKr9rXKl5OoQ+47r/bqWcTqeLMbGis525KSXrrwn5BJAXMMnvQO+EazbD3
 X5N2jpP6TPpE8o8Pt4eegtqRL8G+8OGJc2+VcTE/9JGHzn/CiJ0unLnKfyYp7MCG5FY8
 rwUNbQtWuxAeXcDjZSQKQqBdFGC49jLIYcBVf08jjdq8nQRuVBMtZaCGyu51ylbvZW4m
 QMQ3RAjCRwWUnI0KJtypR16+rL6mwc0xlHgSnTdTcYOHIBplOXXgWcDoGNNparelJ8Ez
 8Tek53F5EtaApt7IpJ3IXru3ktvF/2n3MduFNH38D3wpg+h5QMlvHvjTvUQWhdPxSgG1
 KY7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=X6B408HVKqVgRddttBmZ/lvRWns0/HwPdIVXoXJfH4E=;
 b=hh86Vupes6Bt3Q0tpFIvWfLL4k/QL8ZuZYCqWkQGaiqtt0AgtYApAuW3juZwbgtHRa
 jOezzoftBbAUcsuR/EGre5qm4xrZptxFkOGLwEY4+UsDtW8D/jbiF2N982kUBLGitEu/
 2+pDZ7Xo4aNmBg/q8SSI6XEHHcUi342W5sIrpn83WCYCcPRikH5j85niO9kd/LuTroNU
 eE0KJs8voTN0Biizaes2oaU4Gf5uY0r87+OHgV+UOrzR0pOoI78dgjFryZ19LgQNgYdu
 PNnbwMDMwKimcdSJI/mmHh59x1kjEZqaPUQAlpSOBZCPCswzM/AOcjyJdImzy0+rPi76
 QsKw==
X-Gm-Message-State: APjAAAW3phiUXCS85xOMHslsCYS18IUphiVWfhNbiQJiUgv0P2gyCg+J
 pCQFDdbOlwa1nWLWoynhMw4=
X-Google-Smtp-Source: APXvYqyKkr61j+ElMfljiMs2BCzPRuQOnrAi43XYT2V9n8VWhg2yQWg72wstJF6J7ByCuUJYQ/ALuw==
X-Received: by 2002:a17:902:8a89:: with SMTP id
 p9mr3924542plo.286.1580379112493; 
 Thu, 30 Jan 2020 02:11:52 -0800 (PST)
Received: from localhost.localdomain ([2405:204:848d:d4b5:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id k21sm6239683pfa.63.2020.01.30.02.11.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jan 2020 02:11:51 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: exfat: Remove unused struct 'dev_info_t'
Date: Thu, 30 Jan 2020 15:41:18 +0530
Message-Id: <20200130101118.15936-3-pragat.pandya@gmail.com>
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

Remove global declaration of unused struct "dev_info_t".
Structure "dev_info_t" is defined in exfat.h and not referenced in any
other file.

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index b29e2f5154ee..1ae4ae4b3441 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -231,11 +231,6 @@ struct date_time_t {
 	u16      MilliSecond;
 };
 
-struct dev_info_t {
-	u32      SecSize;    /* sector size in bytes */
-	u32      DevSize;    /* block device size in sectors */
-};
-
 struct vol_info_t {
 	u32      FatType;
 	u32      ClusterSize;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
