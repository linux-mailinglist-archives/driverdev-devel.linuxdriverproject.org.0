Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFEEF6AA1
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 Nov 2019 18:56:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BEE18669A;
	Sun, 10 Nov 2019 17:56:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mr+zRNJMkD+b; Sun, 10 Nov 2019 17:56:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D7D1C8653D;
	Sun, 10 Nov 2019 17:56:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3DF0A1BF5D7
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 17:56:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 39BDE8555A
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 17:56:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3rW5X7pIKoih for <devel@linuxdriverproject.org>;
 Sun, 10 Nov 2019 17:56:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 870958584F
 for <devel@driverdev.osuosl.org>; Sun, 10 Nov 2019 17:56:28 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id q26so8825392pfn.11
 for <devel@driverdev.osuosl.org>; Sun, 10 Nov 2019 09:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=PtqYt1fGL7WFdKH+RvL3PePfXJx2mou2pQEcrG9jbZU=;
 b=eVmU9oeMjmQDjIG/u141aHB4siTpgnOngq2Vm7FyIX5/WuPm6g8wB7QIkf6tc8DFZe
 TaZN211+gXNsTlie89ha1k3T7BEvzB5lOtuOoyDyISrPE/wyOPU3vKxPZoq7QVVTcsQG
 bbvVZtDkfVGV5GI76doDZTkUyYZoXgkIzs6R/+nHgc1LxIuKuHHwnG+lnuNyQPV1YtqU
 fmt4wtEWVthRJYtyvnbxaGzBPTMl4QDwd7L0JuqVHKuN4zavs3K0ZmTUaXPMn8hV/rHB
 TFnWY5PtwWQZRD9ulOPkIKIOzylqEoDf7q+YDkbfHt3PZTU2oHZq5tIqu8oPiMnHePcy
 7F0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=PtqYt1fGL7WFdKH+RvL3PePfXJx2mou2pQEcrG9jbZU=;
 b=bTsV5gAZlDqN+V9MtewQfBhTV0BIfMIOYwLQ/prOYEEr19jDu+yklVCWx3ujKnZemo
 NBhVQBvvthwuJOXxT+Sj/7YSmUPtxRS3dOhndpWb2XZmApOHcehiCVZjCvDHJW8+JdXP
 IOtCZoe0rS1y4/8nXZIE96EgghTbulnF57LWcBfRARA9hnUJ/awZ8HhwmaKMktJg0Whf
 458PViQWEXxzF5Kv+9N+VfOopr7TZQfX3khFv8bLnKcvCjavEE/Emhy7tT7OZTQYSYpJ
 rL2bLLoRSItDbRYu7O58MlxxjfK9OHigNv95/P6iIQL8eT+NrZ/y/gT4gGbD1vJm8jCl
 MXAg==
X-Gm-Message-State: APjAAAXA10Fi6F5o3Ku+eScaqBr4L8R2dNBiZ+FhfKlCyZJ3bN8tHEKl
 KGJxeLsvYV+i8CWNvpL4VwU=
X-Google-Smtp-Source: APXvYqxcsOvCIMeB2vwv7Hk4q37bewW4KNu4hwZ+1YEdJWYKPnUYyheC3m5dhgqu8IxOz6admeV8xw==
X-Received: by 2002:a63:5b1d:: with SMTP id p29mr24023814pgb.209.1573408588139; 
 Sun, 10 Nov 2019 09:56:28 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id z14sm15104414pfq.66.2019.11.10.09.56.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 10 Nov 2019 09:56:27 -0800 (PST)
From: Guenter Roeck <linux@roeck-us.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging/octeon: Fix test build on MIPS
Date: Sun, 10 Nov 2019 09:56:20 -0800
Message-Id: <20191110175620.20290-1-linux@roeck-us.net>
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
Cc: devel@driverdev.osuosl.org, Matthew Wilcox <willy@infradead.org>,
 linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

mips:allmodconfig fails to build.

drivers/staging/octeon/ethernet-rx.c: In function 'cvm_oct_poll':
drivers/staging/octeon/ethernet-defines.h:30:38: error:
	'CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE' undeclared

Octeon defines are only available if CONFIG_CPU_CAVIUM_OCTEON
is enabled. Since the driver uses those defines, we have to use
the dummy defines if this flag is not enabled.

Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
Fixes: 171a9bae68c7 ("staging/octeon: Allow test build on !MIPS")
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
---
 drivers/staging/octeon/octeon-ethernet.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/octeon-ethernet.h b/drivers/staging/octeon/octeon-ethernet.h
index a8a864b40913..70848c6c86ec 100644
--- a/drivers/staging/octeon/octeon-ethernet.h
+++ b/drivers/staging/octeon/octeon-ethernet.h
@@ -14,7 +14,7 @@
 #include <linux/of.h>
 #include <linux/phy.h>
 
-#ifdef CONFIG_MIPS
+#ifdef CONFIG_CPU_CAVIUM_OCTEON
 
 #include <asm/octeon/octeon.h>
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
