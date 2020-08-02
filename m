Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB6E2357DE
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Aug 2020 17:02:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9731C85A78;
	Sun,  2 Aug 2020 15:02:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7gs6OyNZNj_p; Sun,  2 Aug 2020 15:02:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D98A885A58;
	Sun,  2 Aug 2020 15:02:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 715A51BF408
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 15:02:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 60FEA85A58
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 15:02:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l569iZrfZhuI for <devel@linuxdriverproject.org>;
 Sun,  2 Aug 2020 15:02:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CB42C85A00
 for <devel@driverdev.osuosl.org>; Sun,  2 Aug 2020 15:02:05 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id 3so13236574wmi.1
 for <devel@driverdev.osuosl.org>; Sun, 02 Aug 2020 08:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=dc2jyTne/kuOt10YK4BrvGoPmKDCRbld5Cypz0CqkIo=;
 b=dQytedupL1Ato/YOt0Z4EAa9bXc950kyiFjxlL/mDb+wIUfHuqZJvTyE3aAnOkeXHg
 rUeUVp+d4FN8moPYv1jWXKUWMnSW03aun3n++uQgnf+6XHB76TFwinGFS9mmDOpf1o0A
 J8xSABqjqFNYDd3jMIQ9Bhgd3T4lT070y+0I1Y9S+9JagyXpcuZTTQsfVkKfupN/Om+6
 7Ncb/0hyB6Bgavhgwcd2W0dUH4TygSbBboF5puRp1WmEp+p92pycFXtr2wJ3TjcIltmI
 esD301F1sf2I/e+Mm8m1LA+LPCvlTIU92c0n8lBmXu8n7aa4BDlzAFu/69EYmQB60y1I
 k78A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=dc2jyTne/kuOt10YK4BrvGoPmKDCRbld5Cypz0CqkIo=;
 b=hynXVJqvqM2CZmDx6Z890ss/1cebxaw7BZ0Ev17sqNYJZ+wwSYrFcTvzJk6/fnU9FX
 XZAavbcSjjWvXIN0d0fb3/oQ7zUkWhxaK/UYtJRq+7dXc2P/KjO4LTO2cZSP6T4Pq/cI
 +AQpBgRKOUnPVhO+WN3ZPf6Dyfbd9d5I7/ZFfo8CdQJBlCp50cGcp286ZzlXPP3CekQt
 YNRXTJlHYbUtZRRyVrGnVBoKAT4s5FuMTSK07Nl0YtVlsJydbnF1+8MGuRumZ3vEUVIp
 y0RGjqcrrX7O44EWMT08rdWfvFFrxxGFA6oxRF7yYfFTrCi7A73CNDlH2mutd82enIOz
 xTwA==
X-Gm-Message-State: AOAM53095Ze1vKE6PEpwLJ2tOL8baNLSlugfrWKy04wP97HrcE4tHwFp
 2dzzdZPmSA1/VhA0BgE4E7gPX7z5pkejOftg
X-Google-Smtp-Source: ABdhPJxjuHi2vABSz1QxlAE3aRTQbOREPQTDPOFpvYm9Cdwlq20qiL4SvUQ04KJ1lR7qTGLCn3sXvA==
X-Received: by 2002:a05:600c:22cb:: with SMTP id
 11mr12511026wmg.66.1596380524100; 
 Sun, 02 Aug 2020 08:02:04 -0700 (PDT)
Received: from tsnow (IGLD-83-130-60-139.inter.net.il. [83.130.60.139])
 by smtp.gmail.com with ESMTPSA id z63sm21165821wmb.2.2020.08.02.08.02.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Aug 2020 08:02:03 -0700 (PDT)
Date: Sun, 2 Aug 2020 18:01:57 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wfx: clear alignment style issues
Message-ID: <20200802150157.GA3052@tsnow>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

  Clear checkpatch alignment style issues in debug.c.
  CHECK: Alignment should match open parenthesis

Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
---
 drivers/staging/wfx/debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/debug.c b/drivers/staging/wfx/debug.c
index 3f1712b7c919..83ccbab50899 100644
--- a/drivers/staging/wfx/debug.c
+++ b/drivers/staging/wfx/debug.c
@@ -32,7 +32,7 @@ static const struct trace_print_flags wfx_reg_print_map[] = {
 };
 
 static const char *get_symbol(unsigned long val,
-		const struct trace_print_flags *symbol_array)
+			      const struct trace_print_flags *symbol_array)
 {
 	int i;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
