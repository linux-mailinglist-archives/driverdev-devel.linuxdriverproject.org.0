Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6379314A1A3
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 11:15:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F3ACB2047D;
	Mon, 27 Jan 2020 10:15:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TQvQ-u3buAAv; Mon, 27 Jan 2020 10:15:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0CE242037E;
	Mon, 27 Jan 2020 10:15:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 249F81BF977
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 21B8A8786C
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uDFkjgDChQPv for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 10:15:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B1539878AC
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 10:15:02 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id d5so2761830pjz.5
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 02:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AitQYCHf6tUjsn7NRhdLF1drVubm/tGD+X9MQ1jiBMc=;
 b=VKG4rCKKhwl0kRIVgfh9P0bQ9spE8pIbngs0nVkLbHI6tOuriZ6ezeeVMcY+nDyxR1
 VyiaEGc7hQucLoIj0pjvsmZZrPBXpT5fQr3ogIooOIchunKMpdIVlzPMRoCG+7EipP8y
 KUi4vnCYuWrX4LXv1HD/u/UjHwSyNn3/AWEnSrqw5US81SfwULZ1A+b3XfFZcd8suopm
 PRTkfETjN+x2T/l1Y6BgT4qjgvoXL3cYwev9m4sCWXRj8Cu+h1bM5Wug98sAKGp5Pz2S
 NCnUxQEI7rWKVhyjN9aWUTZDZ2nlxnHUlqgkjGW2wC5zM+vHgFlmNPdYdJh91H8ZV5zD
 0P8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AitQYCHf6tUjsn7NRhdLF1drVubm/tGD+X9MQ1jiBMc=;
 b=UsOLCOFEMF8to9mFt9ktoV13PQXZo4HZ33qHmBIXbKXCdaHZYQ1L+vu/axn2d9NXDl
 GPQJ/3emKaaeMoydozpHv7Np5aK9QdYHTs8+u5fQ5vVgd3i2OQxzAuojkjjVNhLavei4
 vpDZ4LfpxVVIYAoU1OdZCb+qtLbnAiGA2QPleWV9FbHv2pKkjnEtAWAgkbxWR60Dw3IE
 unmyqJ3iuJr496vBvgW+QymF29ylJJdtG7+21dHvUIGn8B+XxcxhgzDmJ3wQApCaLQqO
 fq1sp25eH+myvSw403n+jPTvB7nSPsT4Mp68jMgYsZ7Wlqqvm7Co+tzUximl8yuUHJDz
 hn9w==
X-Gm-Message-State: APjAAAVQuDFi3BfrDkGTzJhorTV58sVSdkGuv99PJBtw9fUKz/wkMm5n
 5+qpwRsFiL0RsqxhI7bwOwc=
X-Google-Smtp-Source: APXvYqw/i5njE6bo4f9KyNLe9qSTRXFypn1z24HWyZ8LaW3Mk1dEvv655DAiNneAsdT/C9RnYjAhOA==
X-Received: by 2002:a17:90a:ff02:: with SMTP id
 ce2mr1162916pjb.98.1580120102329; 
 Mon, 27 Jan 2020 02:15:02 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c902:a5e9:3956:8df2:aee5:9cf6])
 by smtp.gmail.com with ESMTPSA id s15sm15504138pgq.4.2020.01.27.02.14.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 02:15:01 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 08/22] staging: exfat: Rename variable "Offset" to "offset"
Date: Mon, 27 Jan 2020 15:43:29 +0530
Message-Id: <20200127101343.20415-9-pragat.pandya@gmail.com>
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

Change all the occurrences of "Offset" to "offset" in exfat.

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 5c207d715f44..52f314d50b91 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -232,7 +232,7 @@ struct date_time_t {
 };
 
 struct part_info_t {
-	u32      Offset;    /* start sector number of the partition */
+	u32      offset;    /* start sector number of the partition */
 	u32      Size;      /* in sectors */
 };
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
