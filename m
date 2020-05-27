Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB661E3DAC
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 11:35:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 29D11882AD;
	Wed, 27 May 2020 09:35:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TMCNzxiTnaoM; Wed, 27 May 2020 09:35:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E6F687A00;
	Wed, 27 May 2020 09:35:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 049F11BF2EF
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 09:35:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 011A085B3D
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 09:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wcZ2PibOKmnn for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:35:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 92E5F85797
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 09:35:49 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id j16so10870945wrb.7
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 02:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=cVKiFifSQaq77jAJ1OyRAVFF5uju10zINbtcPxjN5rU=;
 b=LAu6QNT9TkqcenepQtTeZgSJ0LP8wQ6NPqMcUl+hosDLVZY9Z6s6YWR2Rc8sWsOh+E
 cljsyVG/pmpRwQhed5yZm05E+KJuyy2Al+K45M4uC7yxBbM4mfERe2y6vXGwYGbWLwKe
 7O1ZZvsENtPUQKclfESJTWzldYGcxLTgx9LFIBBItbTcg8zVn0X+ZWYCux6JC/PiFlB2
 sAMF6kVvEZr6nzD+VrrT2iosVOH7KCrP2JWD3k56vSoYR1xIxls1CCa9lym8RuY4NMXa
 mea69O0BOj6joyOA/8OBKuja4gqT5TmeB/W+g6dJac6cYI+QJygdqxTqrndCEGn26uKc
 DlBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cVKiFifSQaq77jAJ1OyRAVFF5uju10zINbtcPxjN5rU=;
 b=tm5Fj6r4MvQSoH4uA9EIYHNozEZK7PP/uYNkZp4zuMVLyQOFa3/a/VQhJEmhgBkbM/
 j93xW/nUpvLm7cahWvfwZS9t/sCnFnVn6ymetIP9yR7Fp6CbXHJBtPkZr1Pb77ReXsCq
 rDcrtw7xXjOnxBpgGsHqFJCX0xRgJFG19KG1tTYff9fZFCQRv9JIluQFurj7WxM2EnPr
 yAvtR3B0NGVVX/tM6ca1mNW0W1rzMBu1is48RPmxwUiaNhd+X7PwEqDMgpiagJ775bbu
 sYG/VSMnwfkfuqVkTUGBvHPDb19mIhxXZwlHnG6uyNudFaSjzAAYVxANRx5v08ZS8sCQ
 8kJA==
X-Gm-Message-State: AOAM5338DUjMRkr/CVnA0A6k+UoYCHJINQMVd+dTw7AJNVPhcuvU0P6P
 lf1UKXMXxpGTqsPt4gpAwj7HB4sq
X-Google-Smtp-Source: ABdhPJw1gXoIpCaHWyZujv61W7FMS9+15GoDvu51NTiGCvL+ZM/Ta4nj/Kt9y0zjqXXXNJkRSTa7oA==
X-Received: by 2002:a05:6000:146:: with SMTP id
 r6mr24997508wrx.9.1590572147796; 
 Wed, 27 May 2020 02:35:47 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.237.0])
 by smtp.gmail.com with ESMTPSA id e21sm2066844wme.34.2020.05.27.02.35.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 02:35:47 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH v2] staging: vt6656: Fix warning: unused variable
 vnt_frame_time
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <202005241918.IseLzHqZ%lkp@intel.com>
Message-ID: <5096f399-03e7-77e1-b334-947aabc44d14@gmail.com>
Date: Wed, 27 May 2020 10:35:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <202005241918.IseLzHqZ%lkp@intel.com>
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
Cc: devel@driverdev.osuosl.org, clang-built-linux@googlegroups.com,
 kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In commit 61bb798767e4
("staging: vt6656: vnt_get_rtscts_rsvtime_le replace with rts/cts duration.")
not quite all of the code was removed.

Remove unused vnt_frame_time variable.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
v2 corrected the commit 

 drivers/staging/vt6656/rxtx.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 5530c06ffd40..5dd6b4d2bf20 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -39,10 +39,6 @@ static const u16 vnt_time_stampoff[2][MAX_RATE] = {
 #define DATADUR_B       10
 #define DATADUR_A       11
 
-static const u16 vnt_frame_time[MAX_RATE] = {
-	10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
-};
-
 static const u8 vnt_phy_signal[] = {
 	0x00,	/* RATE_1M  */
 	0x01,	/* RATE_2M  */
-- 
2.27.0.rc0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
