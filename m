Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D1335117B
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 11:10:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C394D60BAC;
	Thu,  1 Apr 2021 09:10:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0R6g324FvRxx; Thu,  1 Apr 2021 09:10:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 371BD60B96;
	Thu,  1 Apr 2021 09:09:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 53C6A1BF38E
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 09:09:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4DD9B40520
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 09:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=bytedance-com.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pFmhlO1akQka for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 09:09:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 13D7C400C2
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 09:09:45 +0000 (UTC)
Received: by mail-pf1-x42a.google.com with SMTP id m11so944447pfc.11
 for <devel@driverdev.osuosl.org>; Thu, 01 Apr 2021 02:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3E3WfnmsRcCOXraj/CRRvpeiE4ZMxFvi1kpPttSBTBA=;
 b=puPf+QorSmvJ1a/xime3aehCman5i+p9Lm7CKq+fv0mD/WjUCeqzkHhdlT6TfXNLxQ
 UTQaHRFebT+gfT8MGV3i2WjUHDZLTw9TI4dUFEQLdaYxKql7K3LJuhWd0RMy44GlRBkt
 U/ZxYrd7DuQUvV9n/NJ44kR10AuYxjkWP6wOQtjEWtqDzdaDpI8316E7G5INo3sS64J8
 ayn6udEIArfT6Dv867fv08JMzCGXhdWB13T0lN7GzBoUuLJi+6ZPsxmQ5NGsfJcrfuSd
 kBRE84DzeHRvYxqvaEzwL+zqm+EZXqFmnTN7V1S0C0dikMFsuRyYX9evG1FTNEemrnUO
 /nNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3E3WfnmsRcCOXraj/CRRvpeiE4ZMxFvi1kpPttSBTBA=;
 b=JnC0gxTD+0wuBP61S1dpr0GO+PvbJOl40LnhgQFAJIVWE2GMCfmHgcBS/SIB22SNMC
 6TFVWs9csyNzSo1IeeXj1og4m9sz1TM3DZ1qSBYpOHm0IQBICgK6o9QSybcrf9mu4kNx
 2zxECeanXOzxO07IZmO8SWeD0iHklPn1q8sr+TQi3F7g5FgEgRUE8LPEhOjW6MRoG7Kt
 3oUSP54LTEsz4W+j/TNaJQas7xCnI5oki+x7tHzyQzZXLr3S2KZobe7HdSMxt0bqKWQa
 HWe7gqoHB21MEo0uCOReaJryxY+VlD+BeCpgZJfs3sgiAve1kKYLc2Hg1cn+W6K05xse
 Pv9g==
X-Gm-Message-State: AOAM530+BN6z56+GyB4aEJL/qNZzdc+wSt/AOU1Km3BiLzKyU+KYUf0c
 qQViDvD5zeXS/OmKBuz27VZw
X-Google-Smtp-Source: ABdhPJz66+Gm1zWC1Zd92jqOvzeWFOnIeQysdpnWAYf11POOjdzKuJBDPIP8yDBlp2RQKwQFJgXUJA==
X-Received: by 2002:a05:6a00:cc8:b029:217:4606:5952 with SMTP id
 b8-20020a056a000cc8b029021746065952mr6748921pfv.50.1617268185082; 
 Thu, 01 Apr 2021 02:09:45 -0700 (PDT)
Received: from localhost ([139.177.225.243])
 by smtp.gmail.com with ESMTPSA id a26sm4910686pff.149.2021.04.01.02.09.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Apr 2021 02:09:44 -0700 (PDT)
From: Xie Yongji <xieyongji@bytedance.com>
To: christian.brauner@ubuntu.com, hch@infradead.org,
 gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, hridya@google.com,
 surenb@google.com, viro@zeniv.linux.org.uk, sargun@sargun.me,
 keescook@chromium.org, jasowang@redhat.com
Subject: [PATCH 0/2] Export receive_fd() to modules and do some cleanups
Date: Thu,  1 Apr 2021 17:09:30 +0800
Message-Id: <20210401090932.121-1-xieyongji@bytedance.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series starts from Christian's comments on the series[1].
We'd like to export receive_fd() which can not only be used by
our module in the series[1] but also allow further cleanups
like patch 2 does.

Now this series is based on Christoph's patch[2].

[1] https://lore.kernel.org/linux-fsdevel/20210331080519.172-1-xieyongji@bytedance.com/
[2] https://lore.kernel.org/linux-fsdevel/20210325082209.1067987-2-hch@lst.de

Xie Yongji (2):
  file: Export receive_fd() to modules
  binder: Use receive_fd() to receive file from another process

 drivers/android/binder.c | 4 ++--
 fs/file.c                | 6 ++++++
 include/linux/file.h     | 7 +++----
 3 files changed, 11 insertions(+), 6 deletions(-)

-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
