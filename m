Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A10022B383
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 18:32:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 65E6D86D8A;
	Thu, 23 Jul 2020 16:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 48UWtkjgMcfC; Thu, 23 Jul 2020 16:32:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5982D86D6A;
	Thu, 23 Jul 2020 16:32:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3A4C91BF373
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 16:31:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3619186D6A
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 16:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zNDaT09Yzsep for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 16:31:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7208586D5D
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 16:31:58 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id w3so5775211wmi.4
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 09:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=AOR9CWeJuwlfcC0ivw1l00zq41D7Ws4IJqmIaQTlIjE=;
 b=aZTM8s034VEPV3IZTwcmgbP+Hfo6KRWNFN2fNY5wOilJpaIpIZZVBXNt5974xhVK5w
 xkAuP1Sj59ZlJWXrg7D4ABuINLuIlZGf2RISF++y6l6hOVFmcKZlO4mLIwLc1IhoUjQN
 nJTJuVVIzLXQlcuqEyvPRPlF5Y9PCHNWO6JJ1ZGFCY6BsSsoRPICtlAWBnIXDqTI+dc8
 N+xbO3a2Rn62SvTHL2/EjePjZReOc1wHCiqeb/8yGHk+OrKj3POEE+93k1oaXj427wNs
 C6Nriv6kwYGeZAX4TlhKCOG0B6djIswDl6tEkuqF9q0fRNFW+DuA/Ad5y+tCnrNeUaHE
 v3dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=AOR9CWeJuwlfcC0ivw1l00zq41D7Ws4IJqmIaQTlIjE=;
 b=rS5otdZ1yZUFphFLLb+403i5lIBVITKYj++/sAka8A7Dh/rDt4rthmb7wzqsShBLwL
 sImeSD7LTDo70W+FUVaCJBeWmFe09wwnA70dAgy6bDl9A+Nevxp60+lGGYNxOJ3fVvds
 iDbsZsuxa0hQI9BirjQ1gc9iJSdQu2RWIDBlvsh4dWr4AthjmEA4HCYOEhkTyrKd6Uk6
 x2Hlurt+eufKuc56T/qwgHNUWEnF0VOaxq8MmIOf17GmqdGTUKgT14+r/Go7hZX+nDkd
 tL6bhvQDYNZ7cp+JxLDce3GRkiRhO47GKEhIUjAOyWAmX286Q1eabqLyIwzPlSnLBN9C
 +LzA==
X-Gm-Message-State: AOAM533rx9LtJQPS6zgEQWB0IWZyfMlFoFsUgsl6Pv7MXN7OMRPUpKOi
 y7DaU5U9YrrVvSKYeApLxzc=
X-Google-Smtp-Source: ABdhPJw9jobW8joAQpGFg2mEwGlf+Nou+0YtHulyia4rcCKeaQHc+ebdoHrw1Obs1Un/nUEKUPg7xg==
X-Received: by 2002:a1c:dcd5:: with SMTP id t204mr4712375wmg.17.1595521916786; 
 Thu, 23 Jul 2020 09:31:56 -0700 (PDT)
Received: from musamaanjum ([103.150.154.211])
 by smtp.gmail.com with ESMTPSA id t15sm4051221wmj.14.2020.07.23.09.31.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 Jul 2020 09:31:56 -0700 (PDT)
Date: Thu, 23 Jul 2020 21:31:50 +0500
From: Muhammad Usama Anjum <musamaanjum@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: octeon: Add the license identifier
Message-ID: <20200723163150.GA10505@musamaanjum>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: musamaanjum@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the checkpatch.pl warning:
WARNING: Missing or malformed SPDX-License-Identifier tag

Add a the SPDX-License-Identifier tag on line 1

Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
---
Other files in this folder have GPL-2.0 license. So this file should
have the same license which was missing before and checkpatch.pl was
giving the warning.

 drivers/staging/octeon/octeon-stubs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index d06743504f2b..3f8e5713b8a8 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #define CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE	512
 
 #ifndef XKPHYS_TO_PHYS
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
