Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC3D2A8F0
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 May 2019 09:13:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0F7D3232F2;
	Sun, 26 May 2019 07:13:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MVqlCsvOCx4c; Sun, 26 May 2019 07:13:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C9AF52322B;
	Sun, 26 May 2019 07:13:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B93CD1BF45A
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 07:13:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AF6638767F
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 07:13:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id km6wzXUUO797 for <devel@linuxdriverproject.org>;
 Sun, 26 May 2019 07:13:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 33F5385AD6
 for <devel@driverdev.osuosl.org>; Sun, 26 May 2019 07:13:29 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id u22so445147pfm.3
 for <devel@driverdev.osuosl.org>; Sun, 26 May 2019 00:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=cz2fi9b1NEdvG3USz4empRfMlJ8de9OfWLCS3YX3h5I=;
 b=vZ+5axblbVTq6lqFclbj+ZWvS6CR33hW7FI3rTwB08+YsSclCieOvcZKR0BYiKd246
 wPWV6pqKQ0o9IMGhNxPduLOwa3kOP/XqV/Tf3r70Nz2iiGOAZQftzsqPmesb4mjRhGIT
 j8cOq902MreDIdxtNL+BbCYMEb4kix5xvAK/sh4F8JNZKJCaw9Xh7JNiBzXFHlnWYMdW
 ZKiIYvljPHe4WyVochIUE08b78Gg05gorUM8SK27BuBrjAiSFmg5tMaxxBO6Zrk0SCea
 XbgSKYFbF13vYgDRe/WsYXVpfaRPigMBlYdovZN3ahxzcYtUm3h1rYFN+z65zvuXJjqq
 pyqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=cz2fi9b1NEdvG3USz4empRfMlJ8de9OfWLCS3YX3h5I=;
 b=IyrYZtlYUMvGOudKbXrCbHxTTlXCIjHUkH1q/UwS3p7Fi5Jf7ODKFPo447ZcZC35p0
 It6Ew943xLoWYOQLQiB4vnr1Y7grmjNkr916n3GLeMtNvjnW5ZSEtGAUf6rFXnxkIMl5
 e/54maH+tSquU16vhzzcWQ4LXfGho5zqeziA/Hr8kVACGfvBTUItafqW7hglaGBkgWkw
 ARZCAwlHtf1njxYjtTeZwKBcLselaFWuy9uvZz7dZ5cGfCUxO37FyT1DhiXMCmi8wn6x
 0KWOMR4cZ4ZAaANytLnQ2bZnmb+dzoApEf5n0f6jvKu7Vu9jk4b+ornSvwanqCKHhgq2
 bOew==
X-Gm-Message-State: APjAAAU6zzIoN1uf5xdVCwd59rZHbgPXkJ82OmFi427Ce1qva31E72BP
 ujWVN4hxErCCGQHbXFN19Ss=
X-Google-Smtp-Source: APXvYqzfx47Hb0iOhg81v85bCDZ2+5/0lnmGrEVIuTBo06UnNUVy7bpwJ3UxVttqvYAdqz0DBJ47tg==
X-Received: by 2002:a63:d615:: with SMTP id
 q21mr114467914pgg.401.1558854808818; 
 Sun, 26 May 2019 00:13:28 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id c129sm9381274pfg.178.2019.05.26.00.13.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 00:13:27 -0700 (PDT)
Date: Sun, 26 May 2019 12:43:22 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
 Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 speakup@linux-speakup.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drivers: staging: speakup: serialio: fix warning
 linux/serial.h is included more than once
Message-ID: <20190526071322.GA3830@hari-Inspiron-1545>
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

fix below warning reported by  includecheck

./drivers/staging/speakup/serialio.h: linux/serial.h is included more
than once.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/speakup/serialio.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/speakup/serialio.h b/drivers/staging/speakup/serialio.h
index aa691e4..6f8f86f 100644
--- a/drivers/staging/speakup/serialio.h
+++ b/drivers/staging/speakup/serialio.h
@@ -4,9 +4,6 @@
 
 #include <linux/serial.h>	/* for rs_table, serial constants */
 #include <linux/serial_reg.h>	/* for more serial constants */
-#ifndef __sparc__
-#include <linux/serial.h>
-#endif
 #include <linux/serial_core.h>
 
 #include "spk_priv.h"
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
