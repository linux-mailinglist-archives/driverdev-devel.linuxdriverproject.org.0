Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 379B532DA1A
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Mar 2021 20:12:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CACB6843A2;
	Thu,  4 Mar 2021 19:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w1v-BrzwILyz; Thu,  4 Mar 2021 19:12:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C68084318;
	Thu,  4 Mar 2021 19:12:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B5DC1BF983
 for <devel@linuxdriverproject.org>; Thu,  4 Mar 2021 19:12:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7AA4243262
 for <devel@linuxdriverproject.org>; Thu,  4 Mar 2021 19:12:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IbrcC0jpEFyg for <devel@linuxdriverproject.org>;
 Thu,  4 Mar 2021 19:12:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vk1-xa2d.google.com (mail-vk1-xa2d.google.com
 [IPv6:2607:f8b0:4864:20::a2d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4CC1142FC2
 for <devel@driverdev.osuosl.org>; Thu,  4 Mar 2021 19:12:00 +0000 (UTC)
Received: by mail-vk1-xa2d.google.com with SMTP id f145so6366883vka.8
 for <devel@driverdev.osuosl.org>; Thu, 04 Mar 2021 11:12:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/dTebcdcxUQXXbJ4HBiTmegx9W3AXj6bSgb3FLSFk3Q=;
 b=I7jZuAqDs4LWK0bz4wZkKZuNUtR2fskbpmjBRqtjdvVpzUW58ExS42c29QC7mMoDQt
 itxl8CCiZ6gKDIKXQU0L/03henGHSxfd3ugF7OIbnRw45lcqPjGOV9694WmszOEIxa9B
 kL7vqVD4ckJsVZkFGmDECfmv2hEPkCMhVw1H5i+FqcrTNqdobk8Ln7APsxP0F03ZxuGz
 r81WnKe/vaOXN23S6W+4mBKJYq5Tm67OUTcp2Dgv7+RHcf3PmYDZU7IdksFZ6q2NisxS
 y0EykuBQkYQPZfiENJ4gJiVMvrLJnHHPD/dtRjfyzUkHQSxHfATnlr8jc3PthdxvmmoG
 OAcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/dTebcdcxUQXXbJ4HBiTmegx9W3AXj6bSgb3FLSFk3Q=;
 b=Rq0MKQTtf5KRW1+nFQmwgfd/nXHX/r81zOjsZh/r/7OtueMsDQAMfG28RcSmVljmRZ
 Oed8Xkf+Fn7j7aOh/2jWWYxz89YtKo7CMyLK8ay42x5SpPEEk5y01lgl/eXyc1W1ox8p
 6gYCpLXXn+PXUAVAO+gVLSjPUJffFGqDAm8Xkp5OjL04+J0qDRCj026tnNwvZNA1tJrF
 SnvfpvZLAzAvMl1rgI8Jcrt+KV2uCDjHy+6piRmMcxKGrLT9v9ISr3JEz5KrOj6b1xk/
 j4q5ZLCCis1lbC7g0REh+iC5JT3RFb3Lwn1lBLj8RtlHjbioTAZIpYPyeLCAdJfdAYda
 RDYw==
X-Gm-Message-State: AOAM530KV/QmQpew3k8jfIgo7jb3Q6YtGbsle4Oor+MpZ33cvvGV+UKW
 kS7lsa61U9sKPzg79WRmpLnO55lGmyGKeQ==
X-Google-Smtp-Source: ABdhPJy+D9OmNGckphIwW0x1NlSGLAzSAvkg2ZpC3WBwW8JOHi3t0ME3PGQF3+6vKCYThLmNvMWLIQ==
X-Received: by 2002:a17:902:6845:b029:e4:4d0f:c207 with SMTP id
 f5-20020a1709026845b02900e44d0fc207mr4078231pln.36.1614866561954; 
 Thu, 04 Mar 2021 06:02:41 -0800 (PST)
Received: from localhost.localdomain ([45.135.186.129])
 by smtp.gmail.com with ESMTPSA id l15sm10197668pjq.9.2021.03.04.06.02.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Mar 2021 06:02:41 -0800 (PST)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: laurent.pinchart@ideasonboard.com, mchehab@kernel.org,
 gregkh@linuxfoundation.org
Subject: [PATCH] staging: media: omap4iss: fix error return code in iss_probe()
Date: Thu,  4 Mar 2021 06:02:33 -0800
Message-Id: <20210304140233.8030-1-baijiaju1990@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Jia-Ju Bai <baijiaju1990@gmail.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When omap4iss_get() returns NULL, no error return code is assigned.
To fix this bug, ret is assigned with -EINVAL as error return code.

Reported-by: TOTE Robot <oslab@tsinghua.edu.cn>
Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index dae9073e7d3c..085397045b36 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -1236,8 +1236,10 @@ static int iss_probe(struct platform_device *pdev)
 	if (ret < 0)
 		goto error;
 
-	if (!omap4iss_get(iss))
+	if (!omap4iss_get(iss)) {
+		ret = -EINVAL;
 		goto error;
+	}
 
 	ret = iss_reset(iss);
 	if (ret < 0)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
