Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58696463E1B
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Nov 2021 19:52:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86AED83280;
	Tue, 30 Nov 2021 18:52:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rR4dRFrIl4wk; Tue, 30 Nov 2021 18:52:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6FE881A4E;
	Tue, 30 Nov 2021 18:52:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 209441BF5AA
 for <devel@linuxdriverproject.org>; Tue, 30 Nov 2021 18:52:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1B608403CE
 for <devel@linuxdriverproject.org>; Tue, 30 Nov 2021 18:52:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A_odlotHQkYG for <devel@linuxdriverproject.org>;
 Tue, 30 Nov 2021 18:52:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 773394012E
 for <devel@driverdev.osuosl.org>; Tue, 30 Nov 2021 18:52:13 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 4-20020a621604000000b004a4ab765028so13353698pfw.13
 for <devel@driverdev.osuosl.org>; Tue, 30 Nov 2021 10:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=Ax2cs9gnIhnLhPV4f/S92IYbeytX9QqEe2LLX10LPbM=;
 b=GyB1V5n5ZJ1DqlPv1nDxRk91+7AmpJig+WkLz4HrD3TWO/dPhUm+papPU8BHFxbZzw
 q4acpB/xnWgukYkRn50u3TApCr0vhlHUJl0iDfFa3p17wbJOr3ySMdPdvvSGRbfw2C/I
 BWEqCbgMdRGPRi6zNkLCHqRtGYM7/EO6NqOJ3heifgMBv+B/jzYFQA4m/Vr0FSCbINFn
 qRT7s2K9Tf3B6a3yfFBvhHu98XBpr9OLQsIL21jLuCskCqRNIohevwZP15P4vwyMXjhC
 SS1UF0niFoPyXkEphUV0h3LoTlUkICrR+DSSZ9ea4m4RrDemdgJrwP1xRQ5pxc5N80OD
 MEkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=Ax2cs9gnIhnLhPV4f/S92IYbeytX9QqEe2LLX10LPbM=;
 b=wWVKjmirSp+RiuzrwySJynpWr52CC2TmaZppzTUPhOpEhGBjPfzB8M5p45KN6wnDO6
 X92aw0jNFxAwwkL2dBSeGRYDPtiKN3IyZdneKhuHp9BHU3z9PGP7XY8xUKF3WYytfDc+
 Fx/qLNtHvr2s9ETl76s1Xi/35dkwETtdDjfUdd5f0TsvphLFUZqc0Lz6HINeLE84NxYz
 hFhI0ixAxiLxG6qOeQW7RzMJJz/8V1S9YfCS+D4hwHCamTTCe6nYFfY1JjCLOMU6JkQU
 kplMfmkAUtXfqsitBtf1Y5fb6iCGFDgRpOIJGYcFVj8rnS5jxCD0LPN7i8s0KYCIcKJy
 /MGw==
X-Gm-Message-State: AOAM532v5R235L1z6g8ocSliljQ7AqxfRPQd3ACedPP/HwaKZg7cAmdH
 r5QWVXChxYKaJ+Dr5Vjt3jISgo2eiA==
X-Google-Smtp-Source: ABdhPJyE3Ak7KQaYu5oLp8Q8aO9eeRuwNI3j0agSDy055CtVhXmdwtfJvpi5l/0GY1Re1G8fNzCOf+Vigg==
X-Received: from tkjos-desktop.mtv.corp.google.com
 ([2620:15c:211:200:2355:b4ef:3d57:5d7d])
 (user=tkjos job=sendgmr) by 2002:a05:6a00:2405:b0:4a8:3294:743e with SMTP id
 z5-20020a056a00240500b004a83294743emr673446pfh.61.1638298332805; Tue, 30 Nov
 2021 10:52:12 -0800 (PST)
Date: Tue, 30 Nov 2021 10:51:48 -0800
Message-Id: <20211130185152.437403-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.0.rc2.393.gf8c9666880-goog
Subject: [PATCH v2 0/4] binder: Prevent untranslated sender data from being
 copied to target
From: Todd Kjos <tkjos@google.com>
To: tkjos@google.com, gregkh@linuxfoundation.org, christian@brauner.io, 
 arve@android.com, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
 maco@google.com
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
Cc: joel@joelfernandes.org, kernel-team@android.com, avakj45@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Binder copies transactions directly from the sender buffer
to the target buffer and then fixes up BINDER_TYPE_PTR and
BINDER_TYPE_FDA objects. This means there is a brief time
when sender pointers and fds are visible to the target
process.

This series reworks the the sender to target copy to
avoid leaking any untranslated sender data from being
visible in the target.

Todd Kjos (4):
  binder: binder: fix handling of error during copy
  binder: defer copies of pre-patched txn data
  binder: read pre-translated fds from sender buffer
  binder: avoid potential data leakage when copying txn

v2:
- add "binder: fix handling of error during copy" to fix
  bug noticed by Dan Carpenter
- address Dan Carpenter's comments

 drivers/android/binder.c | 442 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------
 1 file changed, 387 insertions(+), 55 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
