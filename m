Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C7B57B79
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 07:31:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 24C2B86102;
	Thu, 27 Jun 2019 05:31:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4qPhIHeBcVNW; Thu, 27 Jun 2019 05:31:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 935E785FE4;
	Thu, 27 Jun 2019 05:31:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 720591BF578
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 05:31:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6DCAC86B19
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 05:31:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MNBF9oyIT0Q7 for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 05:31:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DF3CF8683C
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 05:31:24 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id k8so630816plt.3
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 22:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ZuaoxV6GFyHn1z3cUmAY4w/28b2Z9JWZtyy2oaYwZV0=;
 b=Ui/C/1jW2tAyjlERjPxj5KBpk0NUGMy49X0L/pPVQuzjU8BfeZdX2qOctJXWp85hsJ
 Hylc83Duxbi0aKB5IOXRG+M+FnVhCSQPbrKL0C3Yhzb8yqfMTNGmGLiskfvy5Y0sl3sz
 YnAtbQ9+dQD4jHZEKo4PwC1m3DaP3C94LNkrt9YubjZ2MtlyJ3n9pY6EjzsCGDXBfSlK
 sGxfx6eqLldGHHRfghSOZ1ySZISHXqHd1iddKygu3fa6ltg3RLN99SUVQwFojL3Pzcfy
 3gFaBvDH8ielB2PY6xb4dndhoKD7fBe8gyHT++0wZ07+IkEid82x4CW2KhEa8u+O0gpl
 XLAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ZuaoxV6GFyHn1z3cUmAY4w/28b2Z9JWZtyy2oaYwZV0=;
 b=cBBJ64pfFNJImhfnJOVlBfWIzxZAXrMfVJO58gzsL2t17FzixrWDskZW8oRama6m7k
 mET3C+WCdu4tVmr7zTwK9brP6Y/J2x3v6YwJ2QpXH0MWSu0ndd6s3ljiD/9BYFxDeojf
 a7HWuwCGjZtbAfGP3TvuAdbEpDIau82qS0Qad4ZCLZmgKG4t5gP1B0YnFWXzNjjWHhRD
 VB206t4MskVtoaGHWSiJwAmvKQFFG962TrcKjzf/iRf8SRtlfC6uDqT3l+mn0/5u2XW8
 J3tBta83Q2svhTzQdlBsvR8RAbyk6EeQOGDinmXtfAiVEYgvFMlSLIdGwfntDZG4pqne
 SNow==
X-Gm-Message-State: APjAAAVYYKy7QvWOD/gGWh6EMVJaVrW/y68QUkniVWKlAdpOkk8Y2Hne
 N9o3tDZidt9f1H08YILkqas=
X-Google-Smtp-Source: APXvYqxnhXnZFImM5GGWNkxcHT8l3tnYeTBzQSOemzbaM3kER/CO4J4Bh09kDG6hg7HxoylOVFIBLA==
X-Received: by 2002:a17:902:6947:: with SMTP id
 k7mr2406187plt.321.1561613484363; 
 Wed, 26 Jun 2019 22:31:24 -0700 (PDT)
Received: from t-1000 (c-98-210-58-162.hsd1.ca.comcast.net. [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id y22sm1145165pfo.39.2019.06.26.22.31.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 22:31:23 -0700 (PDT)
Date: Wed, 26 Jun 2019 22:31:18 -0700
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org
Subject: [PATCH] staging: erofs: Replace kzalloc(struct ..) with kzalloc(*ptr)
Message-ID: <20190627053115.GA20942@t-1000>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: shobhitkukreti@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resolve checkpatch warning:
Prefer kzalloc(sizeof(*ptr)...) over kzalloc(sizeof(struct ..)

Signed-off-by: Shobhit Kukreti <shobhitkukreti@gmail.com>
---
 drivers/staging/erofs/super.c     | 2 +-
 drivers/staging/erofs/unzip_vle.c | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/erofs/super.c b/drivers/staging/erofs/super.c
index cadbcc1..5449441 100644
--- a/drivers/staging/erofs/super.c
+++ b/drivers/staging/erofs/super.c
@@ -383,7 +383,7 @@ static int erofs_read_super(struct super_block *sb,
 		goto err;
 	}
 
-	sbi = kzalloc(sizeof(struct erofs_sb_info), GFP_KERNEL);
+	sbi = kzalloc(sizeof(*sbi), GFP_KERNEL);
 	if (unlikely(!sbi)) {
 		err = -ENOMEM;
 		goto err;
diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/unzip_vle.c
index 316382d..f0dab81f 100644
--- a/drivers/staging/erofs/unzip_vle.c
+++ b/drivers/staging/erofs/unzip_vle.c
@@ -1263,8 +1263,7 @@ jobqueue_init(struct super_block *sb,
 		goto out;
 	}
 
-	iosb = kvzalloc(sizeof(struct z_erofs_vle_unzip_io_sb),
-			GFP_KERNEL | __GFP_NOFAIL);
+	iosb = kvzalloc(sizeof(*iosb), GFP_KERNEL | __GFP_NOFAIL);
 	DBG_BUGON(!iosb);
 
 	/* initialize fields in the allocated descriptor */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
