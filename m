Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DE314A1AB
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 11:15:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A75385AD6;
	Mon, 27 Jan 2020 10:15:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LbL11-ZvFPkR; Mon, 27 Jan 2020 10:15:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AB75D84E68;
	Mon, 27 Jan 2020 10:15:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C36771BF294
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BE85E20026
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1UOfmKTSMB8W for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 10:15:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by silver.osuosl.org (Postfix) with ESMTPS id AEBF820486
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 10:15:12 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id 12so1514589pjb.5
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 02:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+sMuF5qnUnN9Y8onz/B4zeL75IEd/ON79HtlJ1XRPFg=;
 b=XvfG0jLHnDaERvZ+WHnA6vywBGhXrHvlvVwQUv0Fu1WZ7t0zp8NsGU5a79TLmuRaBB
 iwIoJ68Yt2jM7poch61FpjmrNMxATkPBXcCBJWwlSTWJB5UQZ88YVS1cfJlPVbQjAn8R
 5z5b22IOLyq0OoTJh7cLUWuTdskuujTeyua0KrDNwgInvmIErZbLq8sy/ID9fdY8dFgs
 pN3jPCzKBDX68gWQ+Fb7cmWaTeEZGx9h13gLS0aNc6ON2NFexL5S9d+0XLs9ridT6ybi
 zoZjwzyNSHdgGVwE4Z22cYIh3UtS5m+cAImSt0VSHhZbn3x/GKQsSVGTqxJVJeFwnEuM
 2TCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+sMuF5qnUnN9Y8onz/B4zeL75IEd/ON79HtlJ1XRPFg=;
 b=frVkdo7CwH9zIf8jHN+aeKSPTI58nwiY1h3vTVs97GWnf7n9zl0sNRfN7ajaG7rbNN
 cQdnXlA+eczMx6HEfkxlqnA+pgRrLrReDVIhLa/l164YRnwumJHZ/xLHVmY2f0VCYFmH
 BVk7GcJ/eSoIc052n0Co82nkSnrumOEnE39ZfPAxlnAMQGbi4f5wB1N5xWTzUHRhyEjt
 8V/vYmNB+pAYQ/GXDlGkI/cAy/ER1rGekJgziSvoXZ+Dz4FaOuXXp0wo3pXMBrC6c0Z8
 L/k/N3K986To2cW4qzsAkYMFSfveZsaBvV1WSYzSr0yqlDnIYYCUpowhTVf7IUHRjXpy
 01qw==
X-Gm-Message-State: APjAAAXaRo1p2c9wlBvmkOvPrA4eFXKXl12HtugdboudZ0MTsd0OblBH
 qu3YHsxrxaunvgYljFZKUT8=
X-Google-Smtp-Source: APXvYqwpspdRYPpxmAb+3sp5DfpMT0p35fOj7YL4PbTXIAGdRlX3cKuYysRJEfediyYGYOmDYq1j7w==
X-Received: by 2002:a17:90a:c983:: with SMTP id
 w3mr13584404pjt.121.1580120112342; 
 Mon, 27 Jan 2020 02:15:12 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c902:a5e9:3956:8df2:aee5:9cf6])
 by smtp.gmail.com with ESMTPSA id s15sm15504138pgq.4.2020.01.27.02.15.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 02:15:11 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 10/22] staging: exfat: Rename variable "SecSize" to "sec_size"
Date: Mon, 27 Jan 2020 15:43:31 +0530
Message-Id: <20200127101343.20415-11-pragat.pandya@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200127101343.20415-1-pragat.pandya@gmail.com>
References: <20200127101343.20415-1-pragat.pandya@gmail.com>
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

Change all the occurrences of "SecSize" to "sec_size" in exfat.

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index a228350acdb4..58292495bb57 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -237,7 +237,7 @@ struct part_info_t {
 };
 
 struct dev_info_t {
-	u32      SecSize;    /* sector size in bytes */
+	u32      sec_size;    /* sector size in bytes */
 	u32      DevSize;    /* block device size in sectors */
 };
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
