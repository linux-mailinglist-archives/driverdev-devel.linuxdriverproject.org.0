Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0ED1A6BC8
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 20:01:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7BC8586373;
	Mon, 13 Apr 2020 18:01:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9gtqJzM0pfrB; Mon, 13 Apr 2020 18:01:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 651B886224;
	Mon, 13 Apr 2020 18:01:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 70B521BF319
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 18:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6C31E85A41
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 18:01:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b1-hV8y0rT7j for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 18:01:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9924585A2E
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 18:01:41 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id i10so11035833wrv.10
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 11:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oFzTWhcRCR5eyAjpAIHdWF4cXdPQYj4ClKz3tMRVpzg=;
 b=ubMoQe/5WSJeHwx3UpJa1Mtt81fxLIXsxRkMHb8dBbGrt/rR4TfvT4oTPYOXc51Drx
 RkyYS//7/mexHk+rA3Tzpw3w5SJpH3wLxkPJP2TGuOtlLnmmHKIiykPiCDaZY7IffzNM
 j+NKAS3DVil6UgjAWVb3I38iXqsomo39z4HOk0VOTx7MsrEIu0hCUBFH7Ot2ugN0eHRV
 ZbGZH5PFMX8UVeW7KbIiOtpeh0KCobADfgB1zQ3WYNrhPF5FOS50fj04ocg+bGtkPiof
 YbnLb5Msqix7IKHFxWuiY6clvLfkEficis4v0shkoK2eSrvj1wBHIPZqcWE8R6tPpIAh
 O8hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oFzTWhcRCR5eyAjpAIHdWF4cXdPQYj4ClKz3tMRVpzg=;
 b=FhNPEh1GHv+rcLqJADh+e7rHWdNm1WaxVev6RUuIAMPlMa1tUevvj0E7CXMTM0z5gc
 JfhxXSypvq3gNWtUPzeMn1I5UxCxSJOokzjjmjHOL9LkgthcMszTt3sWVY5y76j/+zSz
 6v6xWCJXnlcUFurYlGsnuGMpBDnxSJEst07B/GxZ6RvfaDUddMEBxLHPKzXxpCRfoC7s
 rJfUgQfOtZt/h2+7O20uxzuWNfNQ4FGt7mP1Vfu8pHmXaCRbaZGqwqyMblVwdJp76+MG
 w8OSQ9E8R4BGSYxinf73rOqvUwmsxNtLMrr/y8ND4V1XKRbiR/YsAjarV1/OzQ/2Zvba
 m+Gg==
X-Gm-Message-State: AGi0PubOTJYGOHOWi7J2cBnV/AfHAGWcFv+QRcpxWGuhR/JUffUaqXr9
 2C7CwHwPQXa8UxwF9+ZeW0zUGI0S
X-Google-Smtp-Source: APiQypJFUfq9aZ17IeqNWqfsZUzSUieOZY1CTUKO7tYEePEY+8fTp0B1QWN0CbLQ/2XrrAhP7rcn9A==
X-Received: by 2002:adf:cd12:: with SMTP id w18mr19420215wrm.311.1586800900161; 
 Mon, 13 Apr 2020 11:01:40 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-092-073-054-241.092.073.pools.vodafone-ip.de. [92.73.54.241])
 by smtp.gmail.com with ESMTPSA id u3sm6476181wrt.93.2020.04.13.11.01.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 11:01:39 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/3] staging: rtl8188eu: cleanup long line in fw.c
Date: Mon, 13 Apr 2020 19:59:56 +0200
Message-Id: <20200413175957.30165-3-straube.linux@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200413175957.30165-1-straube.linux@gmail.com>
References: <20200413175957.30165-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add line break to avoid line length over 80 characters.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/fw.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/fw.c b/drivers/staging/rtl8188eu/hal/fw.c
index dbf7883f9ed7..432e6bea5ea1 100644
--- a/drivers/staging/rtl8188eu/hal/fw.c
+++ b/drivers/staging/rtl8188eu/hal/fw.c
@@ -192,7 +192,8 @@ int rtl88eu_download_fw(struct adapter *adapt)
 		rtl88e_firmware_selfreset(adapt);
 	}
 	_rtl88e_enable_fw_download(adapt, true);
-	usb_write8(adapt, REG_MCUFWDL, usb_read8(adapt, REG_MCUFWDL) | FWDL_CHKSUM_RPT);
+	usb_write8(adapt, REG_MCUFWDL,
+		   usb_read8(adapt, REG_MCUFWDL) | FWDL_CHKSUM_RPT);
 	_rtl88e_write_fw(adapt, download_data, download_size);
 	_rtl88e_enable_fw_download(adapt, false);
 
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
