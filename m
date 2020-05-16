Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6601D60E1
	for <lists+driverdev-devel@lfdr.de>; Sat, 16 May 2020 14:44:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D1CE787F04;
	Sat, 16 May 2020 12:44:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g8zYAoFBXUp7; Sat, 16 May 2020 12:44:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 67D3986C53;
	Sat, 16 May 2020 12:44:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E53CD1BF5B3
 for <devel@linuxdriverproject.org>; Sat, 16 May 2020 12:44:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E0E2820440
 for <devel@linuxdriverproject.org>; Sat, 16 May 2020 12:44:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UcAmWvHl7lBJ for <devel@linuxdriverproject.org>;
 Sat, 16 May 2020 12:44:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id D8560203B2
 for <devel@driverdev.osuosl.org>; Sat, 16 May 2020 12:44:03 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id k13so4410098wrx.3
 for <devel@driverdev.osuosl.org>; Sat, 16 May 2020 05:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=IgUxf8/whiEMr3BbVOGT5V0QZ7sOsie1bVJvZSf8S14=;
 b=DoUT3iuc7yg2quN1SGyXucg5mnzzb1MR1XFsA7sQ0pb0fTun0+FOaII2lZSTs1zwfl
 +gbXfQWaTAuDFB++d4+/tRJjtsqnRKOQY4V6OSd0w1O3ZMlDJElaNGqe/zlj9+f6/rCb
 w1ETF1Wpb1ssO9D36EgPncTiE/Nn+ZCTMWMfLw6huqm7i3zuxdMb06CdbGG/OyeCgN/m
 PgGLnis9V9R4w9xnKo9xj1dSbtT2yPy8FJkSleF6QP0iUTedqs5kcXeL6ESOr5F6WdKK
 mfRj1SfWC6Yft1PdcLsefI2HSmUsapbadZri2d4gyKb1BCLih4tSsqmKB8eqpRz106mo
 rwXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=IgUxf8/whiEMr3BbVOGT5V0QZ7sOsie1bVJvZSf8S14=;
 b=h/fjV2C1/vke9m+VdHk/E+xLaDb6bBzJBVb2cXkK2ujoRHO2NnDwB0Ba4RxZk26gtn
 dbwnFElaT5hRdfyoIW83LgBPTFAPW+EjHIWXIQKj0yspsOvI8B7puaBcoCP7EN1UZJc+
 m/FW8b7FurLxfkcyVnMW8w/sV0sb1OC0x4tTQcXGGwN0aj9njSol2y8Q1FKwSLW3kXnT
 4MmJ5VMp+OJqE2GjMLcw+f7cuMG/cJRxKLNgaVDG/VHyghVBuE7AJWiFo7zTYslM9WLx
 0MOg+QPcHKNl5uGT+liKoOiAAJ/NnnVIfaHFB0dGkUxA4sBXCDJxb2Q5+3UhoUm++FzU
 glXg==
X-Gm-Message-State: AOAM532DK0B7y4TgS3amnVAUyVZkxD8/umsW2XWsg/xyrdg6oqTSC+YW
 3QMSqc4HQelIYiwLBxWok2CO5E8p08usTw==
X-Google-Smtp-Source: ABdhPJxN9ZJRjIQ8GVgRLvAGsdVZGRyUnJ3GOfMPJS9ZiO3Ug1mweQPZBq2IE4PVHb2BiCud4krMwQ==
X-Received: by 2002:a5d:4702:: with SMTP id y2mr9157384wrq.136.1589633042179; 
 Sat, 16 May 2020 05:44:02 -0700 (PDT)
Received: from dinux ([102.188.168.74])
 by smtp.gmail.com with ESMTPSA id w82sm7561495wmg.28.2020.05.16.05.44.00
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Sat, 16 May 2020 05:44:01 -0700 (PDT)
Date: Sat, 16 May 2020 14:43:59 +0200
From: Mohamed Dawod <mhm.dawod@gmail.com>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: wfx: typo fix
Message-ID: <20200516124359.GA11592@dinux>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixing some typo errors in traces.h file

Signed-off-by: Mohamed Dawod <mhm.dawod@gmail.com>
---
 drivers/staging/wfx/traces.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wfx/traces.h b/drivers/staging/wfx/traces.h
index bb9f7e9..80e131c 100644
--- a/drivers/staging/wfx/traces.h
+++ b/drivers/staging/wfx/traces.h
@@ -32,16 +32,16 @@
  *             xxx_name(XXX)       \
  *             ...
  *
- *   3. Instanciate that list_names:
+ *   3. Instantiate that list_names:
  *
  *          list_names
  *
- *   4. Redefine xxx_name() as a entry of array for __print_symbolic()
+ *   4. Redefine xxx_name() as an entry of array for __print_symbolic()
  *
  *          #undef xxx_name
  *          #define xxx_name(msg) { msg, #msg },
  *
- *   5. list_name can now nearlu be used with __print_symbolic() but,
+ *   5. list_name can now nearly be used with __print_symbolic() but,
  *      __print_symbolic() dislike last comma of list. So we define a new list
  *      with a dummy element:
  *
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
