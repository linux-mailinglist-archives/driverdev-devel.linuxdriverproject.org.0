Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B24E24B1D6
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 11:14:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 32BFF87D1A;
	Thu, 20 Aug 2020 09:14:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zmm6NgVopCvr; Thu, 20 Aug 2020 09:14:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2FBEB87729;
	Thu, 20 Aug 2020 09:14:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 80F0B1BF362
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 09:14:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7CB0D88031
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 09:14:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VugJSJsBXuoX for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 09:14:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 703E087FEA
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 09:14:27 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id m34so822599pgl.11
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 02:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iKNU74NJdZK5cyzQFbM7uQHSgaBwB5CboR+e0oglByo=;
 b=f53NuOrsS3mDzLLgHf/lVcMv2rI0XJgW2xMiLctDDBFzrksxOqhcTxm1XIVQnBQkE5
 +kMAMDdXzLKtSit04ro2JszrQPyd+kMW6DQyX3Fqi5F4PZDe779pikdz44FcUDrjmvQc
 jjFTXmzw429GB5mNaBH2Jij5WbpAtdFvjw+D8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iKNU74NJdZK5cyzQFbM7uQHSgaBwB5CboR+e0oglByo=;
 b=LqjKsM2uQXJh5M1sNZaGV9bWYWmSglm9KXliLNVwfjuyvBP5GhwPBtJ3occL7qyEiI
 9uRgqRq9fXm2XiCG6YVWlET5DXcXspIwGyyNG57jOOLvGPQK0HZo6sffSt97x6svyhh3
 I5SoxKa4JHRJ7+9kMr64/upU0OD+7Kppf6FwF+oVdeNuPVYA1MRo78daqqpbS9logB7T
 ZTd2eSKFr6d2B7u+WMFRgvuN5l2fC+KYbnApknKfsAofBMWBFaD5znkheDV4+hCF2d0z
 wUe84cIhXJxuV9RdBly6Kgkwa+9SEUGw1VAeOBQURpoPXzi2szo6Vsifp7PMAWUPruY7
 UHZg==
X-Gm-Message-State: AOAM533oytqH42bxcXNP99dP54QPkhtHKtJ6nhnYWED+cYKZ+QeAUFn+
 ++tDn+tqv+UA/WmTE7Ma/Q9Ksg==
X-Google-Smtp-Source: ABdhPJxP50eTeBITIcRQC6yWdtCxNMHAvn0Wises0b5yFF9JV14XlN/Ry4qvDKlv1dBi9YhOxSAgjA==
X-Received: by 2002:a62:7bcf:: with SMTP id w198mr1569326pfc.90.1597914866996; 
 Thu, 20 Aug 2020 02:14:26 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:7220:84ff:fe09:41dc])
 by smtp.gmail.com with ESMTPSA id o15sm1954448pfu.167.2020.08.20.02.14.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Aug 2020 02:14:26 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 3/3] media: atomisp: Only use trace_printk if allowed
Date: Thu, 20 Aug 2020 17:14:12 +0800
Message-Id: <20200820170951.v4.3.I066d89f39023956c47fb0a42edf196b3950ffbf7@changeid>
X-Mailer: git-send-email 2.28.0.220.ged08abb693-goog
In-Reply-To: <20200820170951.v4.1.Ia54fe801f246a0b0aee36fb1f3bfb0922a8842b0@changeid>
References: <20200820170951.v4.1.Ia54fe801f246a0b0aee36fb1f3bfb0922a8842b0@changeid>
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
Cc: devel@driverdev.osuosl.org, Nicolas Boichat <drinkcat@chromium.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We added a config option CONFIG_TRACING_ALLOW_PRINTK to make sure
that no extra trace_printk gets added to the kernel, let's use
that in this driver to guard the trace_printk call.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---

Technically, we could only initialize the trace_printk buffers
when the print env is switched, to avoid the build error and
unconditional boot-time warning, but I assume this printing
framework will eventually get removed when the driver moves out
of staging?

 drivers/staging/media/atomisp/pci/atomisp_compat_css20.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
index 1b2b2c68025b4cc..020519dca1324ab 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
@@ -165,11 +165,13 @@ static int atomisp_css2_dbg_print(const char *fmt, va_list args)
 	return 0;
 }
 
+#ifdef CONFIG_TRACING_ALLOW_PRINTK
 static int atomisp_css2_dbg_ftrace_print(const char *fmt, va_list args)
 {
 	ftrace_vprintk(fmt, args);
 	return 0;
 }
+#endif
 
 static int atomisp_css2_err_print(const char *fmt, va_list args)
 {
@@ -865,9 +867,11 @@ static inline int __set_css_print_env(struct atomisp_device *isp, int opt)
 
 	if (opt == 0)
 		isp->css_env.isp_css_env.print_env.debug_print = NULL;
+#ifdef CONFIG_TRACING_ALLOW_PRINTK
 	else if (opt == 1)
 		isp->css_env.isp_css_env.print_env.debug_print =
 		    atomisp_css2_dbg_ftrace_print;
+#endif
 	else if (opt == 2)
 		isp->css_env.isp_css_env.print_env.debug_print =
 		    atomisp_css2_dbg_print;
-- 
2.28.0.220.ged08abb693-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
