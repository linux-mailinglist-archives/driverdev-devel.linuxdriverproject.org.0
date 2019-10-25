Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B487E5730
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 01:39:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E2DE88462;
	Fri, 25 Oct 2019 23:39:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id faMmAgIzDkBM; Fri, 25 Oct 2019 23:39:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CE0B887D6C;
	Fri, 25 Oct 2019 23:39:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 43E581BF333
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 23:39:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 40EEA86B87
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 23:39:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z_QJQvxJu3p1 for <devel@linuxdriverproject.org>;
 Fri, 25 Oct 2019 23:39:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C1C8B86B77
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 23:39:15 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id o25so5811986qtr.5
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 16:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=8iYCMmqsnyVKfjy5XqZLpSW571c10vuJU4rS6T4W2j8=;
 b=jtkNJOe7tP2lgkdaSqNKbilQeINB4ZhCve/X1I1OkenW/X6k7BUqiWg6Nfz5WiY4ND
 xC4W0u8oAtU+Do61c3FgQTJl0Qh/gNMAPM22kmZyg3ftTYFsp03Xs4i8Ql0ThhJM5zf5
 5B32gt5cnusgq6Ra1H1XGB9rn51LWKQykTU5xhtcghebcCWETrYhNXc8VeHS4RhV5e+B
 o7E5VNUntIyNbDWesiUEi9MnjcyrUR4wBDdYWKAQkV67BF0Y5u+jax8fLTnc5J5X+GYN
 M/QqAfGuAVQiyhPleF1vjg0R4ZJYGW9wU4mzjPYCWYS1qnfGcTtIhyc0X77MseI38POE
 YVEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=8iYCMmqsnyVKfjy5XqZLpSW571c10vuJU4rS6T4W2j8=;
 b=sttKXM5eDfHUl8gsUq+pm22MszAD7nys7BlrwFPUR0yC1J013imO4LZ84flt9Ub88V
 BPNDvvDTBzgf5doosOrVv77OdrMTNmwl2Z/B/0pX5ZZEdZShCPWyiJ74o/NiVfWDsBMD
 Kt+bxKA/lBJ6Z3Sr+s2RYUsBAhW2PbfA9XTOpBQzZODH4hw/+gHl9LDPxOQylzDZKfy3
 rVQLdO/vGTsAbb4tBbGLlKWEyh4/7t++fvTll2lD5lxIqgVuTrdWIC7fV0PyLssbzzLx
 IisKLrAbSI+6m+39cAVQBN4j91LXUiiCg2QCjlr/pNHcYaDaZSazTDmdJAwVy67kNvCw
 4kJw==
X-Gm-Message-State: APjAAAW4juuufTztfJYf07i8Rrv8M4gkBxFTUwjzFXR8iYEzZtD0M64z
 bexaD23iDQaSNeJElVaEUIg=
X-Google-Smtp-Source: APXvYqzf1Y4E3r2c3YyF+f5hgrgaXDZReYeqvTZ/lTdPu/F6s/wT7asfsvuGRcanfUyfBLG6/EZ6gQ==
X-Received: by 2002:a0c:ba26:: with SMTP id w38mr5919794qvf.24.1572046754893; 
 Fri, 25 Oct 2019 16:39:14 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id j4sm1796407qkf.116.2019.10.25.16.39.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Oct 2019 16:39:14 -0700 (PDT)
Date: Fri, 25 Oct 2019 20:39:09 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH] staging: gasket: Fix line ending with a '('
Message-ID: <20191025233909.GA1599@cristiane-Inspiron-5420>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix line ending with a '('

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/gasket/gasket_ioctl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
index 240f9bb..d1b3e9a 100644
--- a/drivers/staging/gasket/gasket_ioctl.c
+++ b/drivers/staging/gasket/gasket_ioctl.c
@@ -34,8 +34,8 @@ static int gasket_set_event_fd(struct gasket_dev *gasket_dev,
 
 	trace_gasket_ioctl_eventfd_data(die.interrupt, die.event_fd);
 
-	return gasket_interrupt_set_eventfd(
-		gasket_dev->interrupt_data, die.interrupt, die.event_fd);
+	return gasket_interrupt_set_eventfd(gasket_dev->interrupt_data,
+					    die.interrupt, die.event_fd);
 }
 
 /* Read the size of the page table. */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
