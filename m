Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEEA1F8475
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Jun 2020 19:37:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F01252153B;
	Sat, 13 Jun 2020 17:37:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FVeKa8A8BKyu; Sat, 13 Jun 2020 17:37:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5CC6B21505;
	Sat, 13 Jun 2020 17:37:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C2EE1BF616
 for <devel@linuxdriverproject.org>; Sat, 13 Jun 2020 17:37:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 87A6B8890B
 for <devel@linuxdriverproject.org>; Sat, 13 Jun 2020 17:37:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id shJzbCvFqD0m for <devel@linuxdriverproject.org>;
 Sat, 13 Jun 2020 17:37:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9CA11888DE
 for <devel@driverdev.osuosl.org>; Sat, 13 Jun 2020 17:37:15 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id i4so5199947pjd.0
 for <devel@driverdev.osuosl.org>; Sat, 13 Jun 2020 10:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=7hwEyyxwUYdF2Guu+e/vMTnzyE7eAhVBBsibSIizD8I=;
 b=ZK3+qRQ9MEgzaQnN0sw5cx1VU8LUSl6sYcO1FgxX0/z+6z4802WNxcKc1SToc+Dpdx
 Oa3hXj2d+tz9W4Yo9N9WfOwy4jR54GMTrsYzTrazR/MCA1T2/f0fXuMADHlEfv8aboFH
 zLZxrJGblUY3cuiGsske4xmoJTgpBCprbZVhplNFzdnaCXMwfyYMXlGme8HVI+Sk6uv4
 AoOTT5pytSEx8cBR4hsjIy1uXARh5PNEfeBn25YWaVDevjuPIP59EW36ilfbCgfQxm5j
 QQIZzlcV7DlSleYRzGoWJ8nhld0I0HtVnPPgz3c8UqZElPKaMUBAE1WGHuyza58tGghk
 CuoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=7hwEyyxwUYdF2Guu+e/vMTnzyE7eAhVBBsibSIizD8I=;
 b=dfB/XO7DNsHC0k/7phqiLswUidBF9qvaDmHSMkJQCff6GyxAko04+83DVas4Mjl2KD
 Emm1e1R3ptlNtbBsn2lPwODd76oEdza3mmGahtPua/b678TTh6p+flupQrLbZGcbNyFm
 FoLkxOcwqGvECWbWQjhS2ekJ3Md9oZ9rGlAjWDltmwd2/hWRlHwjSRMbLQnacap+pqSg
 8lEcvQefjHynnQzfITd4YnIDNv6M0i+DptkzuYPA6kBrsXa3c3EtjBE1d3h2m2uSbpTT
 1CjWf4R0m7bxyNeqez/kCK6mKHf1JQu2KBTYyM/0rdwZ0G4ZVoGhCv889YjB7kAAh04K
 3SEg==
X-Gm-Message-State: AOAM530DNeeCDdnFTHBYt+uSWViWKzpH49NTXU3Oi/ISTcjzHUR1RQ+A
 IwFdHJV5n/bb9V7EhXUBgNc=
X-Google-Smtp-Source: ABdhPJxYsfjAFdm78oynRBxtOMyhELttPaW0N0G0PuldldL+YPOprKPLiuk5Bl3IXWBnbWB6DhakbA==
X-Received: by 2002:a17:90a:aa8f:: with SMTP id
 l15mr4546515pjq.211.1592069835215; 
 Sat, 13 Jun 2020 10:37:15 -0700 (PDT)
Received: from ASMDT.1 ([114.125.253.62])
 by smtp.gmail.com with ESMTPSA id y7sm9321768pfq.43.2020.06.13.10.37.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 13 Jun 2020 10:37:14 -0700 (PDT)
To: gregkh@linuxfoundation.org
From: Dio Putra <dioput12@gmail.com>
Subject: [PATCH] staging: android: ashmem.c: Cleanup
Message-ID: <4ba43a70-c29f-6c41-9c81-66a25b0432af@gmail.com>
Date: Sun, 14 Jun 2020 00:37:09 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, linux-kernel@vger.kernel.org,
 arve@android.com, joel@joelfernandes.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Minor cleanup to make file_operations const once again.

Signed-off-by: Dio Putra <dioput12@gmail.com>
---
 drivers/staging/android/ashmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

base-commit: aa5af974127d317071d6225a0f3678c5f520e7ce
diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 8044510d8ec6..fbb6ac9ba1ab 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
 
 static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
 {
-	static struct file_operations vmfile_fops;
+	static const struct file_operations vmfile_fops;
 	struct ashmem_area *asma = file->private_data;
 	int ret = 0;
 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
