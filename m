Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 727B213E22
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2019 09:26:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4349687A12;
	Sun,  5 May 2019 07:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1GCvrT5sZ48W; Sun,  5 May 2019 07:26:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AD313875B9;
	Sun,  5 May 2019 07:26:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D804D1BF47D
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 07:26:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D031386018
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 07:26:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 20LZP7ayUMKu for <devel@linuxdriverproject.org>;
 Sun,  5 May 2019 07:26:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2279D85F9B
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2019 07:26:50 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id w197so7453162oia.2
 for <devel@driverdev.osuosl.org>; Sun, 05 May 2019 00:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=p2ELP52IjlSRBhCCg6cmkTQC+UANYchO6gHwo7zqQjo=;
 b=cI1XunnxRe/VDLJjo7QyDkvojB9kQWlvEtH8EteupRtostZWIPLc2m2KUrN6nQ0s2L
 +2vfMzzF5Ci32KSt00W7KHbeCSPE752TdAo0QbJiP9Ab3IUHQczT+VXToqBBzji8BYST
 HWGt1viZbdfLMN9NUfaBtY1gZfJJx2qua5zs4iO2AqwO+WQbqy++cRMM67qD+aj81iOs
 Tp40d2XCL4U5OkUT30aSGpKFhkT0kvKmwlcfadWF60zOKj26uSOLiGPfkEEvpK4j0/Ck
 fRHNUYS3NPitU5cH8WAGGuiXHKTVNvV7DPFtmHGDqMxDQfo9uReysQySTBqZawO/kc2o
 vpug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=p2ELP52IjlSRBhCCg6cmkTQC+UANYchO6gHwo7zqQjo=;
 b=XFTOi6I7i1vqFjyfNOjGmnwe4VAa0Q+/EG6A3kRyhZ+CoQxfbXKIZkCggvmJyVzsx4
 kcAe6JUoDf/jNRDUkD+uXrcYvNzbzRCBF2xT82unK/ZEJWhwHDNO/WATkO27HJqbNYsv
 R3KHlqFj3/YxLYnOLxDxsu6g5V7RWFQA+BLVs7J5ixcM243nhnYlcGcarV7/TM24iVHj
 xJs0+AOZNEzrnqwU58kvQLuN7iYWjfcJ5eJaLYpkzraNebhx6ZTl4WJJpwbLEOG7XsG/
 7g8rpnTovXaxEzvkiF251pPOyzQjunAChdJPjvKyZmdYC3ccWYHGh0Nu/KFMVvpLibN+
 cplQ==
X-Gm-Message-State: APjAAAUWL2Re1ZvCDXfQ8kXR0Et1B7J7gDJJA4apiQtEbvJbbEijP9T5
 xIUUYhT31ywe4xS9D7iax7jXpE4C7w0=
X-Google-Smtp-Source: APXvYqy8rzneFtiDDDc+kBy9kcTyKhqHfeoclKB0izBpEeRsJDRCWrRykHksbgctZPtl+2paMI954g==
X-Received: by 2002:a05:6808:48c:: with SMTP id
 z12mr498896oid.36.1557041209184; 
 Sun, 05 May 2019 00:26:49 -0700 (PDT)
Received: from madhuleo ([2605:6000:1023:606d:2897:6cea:c841:53a2])
 by smtp.gmail.com with ESMTPSA id a23sm2256956oto.58.2019.05.05.00.26.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 May 2019 00:26:48 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
 samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org,
 speakup@linux-speakup.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: speakup: Replace return type
Date: Sun,  5 May 2019 02:26:45 -0500
Message-Id: <20190505072645.3940-1-madhumithabiw@gmail.com>
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
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace return type and remove the respective assignment.

Issue found by Coccinelle.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/speakup/i18n.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index ee240d36f947..a748eb8052d1 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
 	input++;		/* Advance over %. */
 	input = skip_flags(input);
 	input = skip_width(input);
-	input = skip_conversion(input);
-	return input;
+	return skip_conversion(input);
 }
 
 /*
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
