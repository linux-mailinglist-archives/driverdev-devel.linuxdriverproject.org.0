Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFD745EBB5
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Nov 2021 11:34:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 161AD4033C;
	Fri, 26 Nov 2021 10:33:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O7djNxZutkGs; Fri, 26 Nov 2021 10:33:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 833CA401E0;
	Fri, 26 Nov 2021 10:33:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BFBCE1BF35B
 for <devel@linuxdriverproject.org>; Fri, 26 Nov 2021 10:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BA511401AD
 for <devel@linuxdriverproject.org>; Fri, 26 Nov 2021 10:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id acM971jFlYwj for <devel@linuxdriverproject.org>;
 Fri, 26 Nov 2021 10:33:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 82670401E0
 for <devel@driverdev.osuosl.org>; Fri, 26 Nov 2021 10:33:45 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 77-20020a1c0450000000b0033123de3425so10390554wme.0
 for <devel@driverdev.osuosl.org>; Fri, 26 Nov 2021 02:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C8q1AchaMWb0GKIv7zr+g4ND1GFzTN4Jde2EJf4unnY=;
 b=Yrn/h4AphtEQy7tgQMLbTcUSvM0DlR9dXEV//uQXWew3Qjmt6XALjjMVoOfRIfyJbT
 klSt8AlHWHfWtf5zj+wqpTcEfsdxIn64NOwDEIlKoLX+5Hm0gZMBKdzIhe00U/f6shQM
 vhkTxc6Izdk6sLHVT8coN0HlkRev5glZRWmIlWV7D6JehXDhsL5Y/jdqhJ03amVXn9sx
 HdilZTIlcxb/6LAI/SOCE0MIrfssZlDvO/YXfCg6hMP2SG3W1Zo8zO0rGekHRTaufLVj
 TAhtqHrOTcMmw+/+KyTr+S7kUgXQ5LfR0BzYawmrds1EwWPr9vvNXeqIwPgvm5VXCluS
 fR1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C8q1AchaMWb0GKIv7zr+g4ND1GFzTN4Jde2EJf4unnY=;
 b=wz6VFVdRRVEmRVEwp/BTuX2VO+ow8QOpQDiOy1hFnN25r0U8DT/Jm49uf7/XTAUIot
 yzijZpvNuT1OixBvs285rLZKQSUdnGlrE9Nh5a1ntpdyfIvPLoRK7eIyB6pVgM/w/TKX
 zSvxzzDYtTaqFNwTfjfWJiaq9uVXrzMcymv1GghV5ESyCrAFZTAfgUfOxpynJF7n7zgt
 pB8z3Y1LKU42TW8g1OSJ/mIcAvt1xWMiumtWX7TblFNW225iiz1fkrs1n1Yh0Y6wG2y1
 CIqVAVcdhJ7NEI5csbU/cGKbfa/uwbR5Qh8ycRWjdkncTqvqBiAzP09WpLVN4ZGC2h5y
 hz2Q==
X-Gm-Message-State: AOAM53186JSjo9Udj4P5XUHfv9m7IGmDbb13MgCyyXLY1TX5cQmZEczJ
 mbNb7NvZZ8v77sl0zwzPJ59/77fX3Zd1bg==
X-Google-Smtp-Source: ABdhPJwTFh+hjNJsJ7f8xorEQnyQxtE2eXzPjrIGAWxPBjt8DUI81eopgtvL0TM69o89VoX4P9Ox5g==
X-Received: by 2002:a05:600c:19c8:: with SMTP id
 u8mr14082514wmq.155.1637922823624; 
 Fri, 26 Nov 2021 02:33:43 -0800 (PST)
Received: from localhost.localdomain ([2.31.167.18])
 by smtp.gmail.com with ESMTPSA id q4sm5016591wrs.56.2021.11.26.02.33.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 02:33:43 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Subject: [PATCH v3 1/1] staging: ion: Prevent incorrect reference counting
 behavour
Date: Fri, 26 Nov 2021 10:33:35 +0000
Message-Id: <20211126103335.880816-1-lee.jones@linaro.org>
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
 riandrews@android.com, labbott@redhat.com, sumit.semwal@linaro.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Supply additional checks in order to prevent unexpected results.

Fixes: b892bf75b2034 ("ion: Switch ion to use dma-buf")
Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
Destined for v4.4.y and v4.9.y

 drivers/staging/android/ion/ion.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
index 806e9b30b9dc8..aac9b38b8c25c 100644
--- a/drivers/staging/android/ion/ion.c
+++ b/drivers/staging/android/ion/ion.c
@@ -489,6 +489,9 @@ static void *ion_buffer_kmap_get(struct ion_buffer *buffer)
 	void *vaddr;
 
 	if (buffer->kmap_cnt) {
+		if (buffer->kmap_cnt == INT_MAX)
+			return ERR_PTR(-EOVERFLOW);
+
 		buffer->kmap_cnt++;
 		return buffer->vaddr;
 	}
@@ -509,6 +512,9 @@ static void *ion_handle_kmap_get(struct ion_handle *handle)
 	void *vaddr;
 
 	if (handle->kmap_cnt) {
+		if (handle->kmap_cnt == INT_MAX)
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
