Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF0445D9AF
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Nov 2021 13:03:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB510401BD;
	Thu, 25 Nov 2021 12:02:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RiMomOvdV5dr; Thu, 25 Nov 2021 12:02:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F053A400E5;
	Thu, 25 Nov 2021 12:02:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F28DA1BF31D
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 12:02:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DEBEF6090B
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 12:02:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R2MkIJhvCrZT for <devel@linuxdriverproject.org>;
 Thu, 25 Nov 2021 12:02:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7107606A6
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 12:02:43 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 r9-20020a7bc089000000b00332f4abf43fso5843114wmh.0
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 04:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zsARScXN7590D6bLDv6wWFi6yhd0pHvccxAh6T7cVAQ=;
 b=n+tiHgtMEA8zfGbtImvDoJ1ycHk00t2ODuMNcI2bFQYosoUO1aP4Ey/nMeromm6+L3
 KoSTDQm1BIQjoL2CcpqhY1ULnl+ooyAuNt1k47k8PoQnJZO5h7VIJVUQk1NcbdqYyYRu
 jgEu7zxN3Lq8ARnH8ax9xXf3qbAwnwhR32qIzsXwsUoCtpEPblBmToMIg/5Ly+bePfM2
 TkoLViUFd60Ye4t6M932bwesqGaDnTrUg4wPcUm8Vfn6wgyXOrqlcfFcXxSHw/CgaiWH
 D/OTFevmMFf5/RpmNtUFwp04x2TcZDizQfIZVl842OWC9Qio7MgBlOqwX3d7D8CFPTeY
 lokA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zsARScXN7590D6bLDv6wWFi6yhd0pHvccxAh6T7cVAQ=;
 b=k+IU4YjJZwHfbSAorgGWEwMuy504Od6VO9x6lUNmqhpN/gEJhSjaQeCm3DH4vW0t3E
 453ErRh2h8tBn3Ov1lyp6vILxbqCNAWlUADeRqeWbVOnKcVGVImELqA04PRtr8+OMJIR
 z2HdN3CnfFYaTpdQbTpYV/Lmf9mP/yojagE0/oXUBD4qR9sFUG3anjn6KO7Pvx6kpWM/
 5tkA7Jv+O65YiSwWyvqKzUv9seFqiNMVKyk8iAEEovRqNNBUzzby8Z+UKY9MhPWWFKB4
 5uKfAqGTiTZxEWLFHKBqXp3HD62fVuz+WBWhmJyat56vcrFpJgdujz1JALtMIh2cIFwq
 97ww==
X-Gm-Message-State: AOAM531OzjEvhtrW2AhLnoUH8q/JvEhZpICJo7nGIt4RJkiIy5HzCPFc
 VbG2xk9v6kDVBI/WCExLmitiBQ==
X-Google-Smtp-Source: ABdhPJw2DxV7co2ofmEA4CJ0u6dScH8VmjMKNfJ5iLU3WQR5EzyS3785FbsfzwzcTNPwtzBrLi0RgQ==
X-Received: by 2002:a1c:a301:: with SMTP id m1mr6770684wme.118.1637841761830; 
 Thu, 25 Nov 2021 04:02:41 -0800 (PST)
Received: from localhost.localdomain ([2.31.167.18])
 by smtp.gmail.com with ESMTPSA id b14sm3455691wrd.24.2021.11.25.04.02.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 04:02:41 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Subject: [PATCH 1/1] staging: ion: Prevent incorrect reference counting
 behavour
Date: Thu, 25 Nov 2021 12:02:34 +0000
Message-Id: <20211125120234.67987-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.34.0.rc2.393.gf8c9666880-goog
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
Cc: devel@driverdev.osuosl.org, arve@android.com, stable@vger.kernel.org,
 riandrews@android.com, labbott@redhat.com, sumit.semwal@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Supply additional checks in order to prevent unexpected results.

Fixes: b892bf75b2034 ("ion: Switch ion to use dma-buf")
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/staging/android/ion/ion.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
index 806e9b30b9dc8..30f359faba575 100644
--- a/drivers/staging/android/ion/ion.c
+++ b/drivers/staging/android/ion/ion.c
@@ -509,6 +509,9 @@ static void *ion_handle_kmap_get(struct ion_handle *handle)
 	void *vaddr;
 
 	if (handle->kmap_cnt) {
+		if (handle->kmap_cnt + 1 < handle->kmap_cnt)
+			return ERR_PTR(-EOVERFLOW);
+
 		handle->kmap_cnt++;
 		return buffer->vaddr;
 	}
-- 
2.34.0.rc2.393.gf8c9666880-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
