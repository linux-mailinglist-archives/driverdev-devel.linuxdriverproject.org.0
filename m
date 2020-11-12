Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3927C2B0633
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 14:20:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 05D4A2E1B2;
	Thu, 12 Nov 2020 13:20:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LLmilptPUhOd; Thu, 12 Nov 2020 13:20:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C2EB02E1EE;
	Thu, 12 Nov 2020 13:20:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E2CDF1BF9B9
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 13:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DC7F986EC1
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 13:20:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QlQVJ4MAVF2c for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 13:20:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C1CC486EBB
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 13:20:08 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id s8so5946010wrw.10
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 05:20:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eX+GAAptHKXOgkhhbpbMgVCvd1r24QVRM1QUTVGcPnU=;
 b=r7ks3WZ03Rk/rlNiqW0vrdZ5f0tUwn8RyVrmHJ1/rAjKIhGNF03nERo+UOAnUayb5N
 ODPD8xNuJAxnt6bbKRCGGVtWQHsmibelQ7xDkgzEr34xgcVHJREwDVxTz1X4UQgu/okD
 WmQ6h3XZ06G/XaRepGbUq600vle6QN1hBmIQiyfLSlFPaAPgwBXGadAJYjfKp5KkZU/a
 bUQ4Fi/VnN0JiOc3piOLAA0BnfsWgFXtyQQ6NkG9ifBx0z1cDLmSfnm2vTuNzL8BVQiL
 sP1960KNh3E4xelGNqsJRYut3RaNaYttcmp8EKIwRg4RJvwNxlnHiEbgO8eCS94/xMnA
 86jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eX+GAAptHKXOgkhhbpbMgVCvd1r24QVRM1QUTVGcPnU=;
 b=AfBN8CaUP6jbr8A+yDySQiJbc53Jm+HhdTgLTIspJP+N0lB+wFRs2SJIm762slXeVu
 iakfOlx9KMoy6fA+JeSrAlUBh+9mkykea/F6axE8zEpg6yMjD+FsH+4fOuqSe0WhrmvF
 9cIDy127nzJz61GWgy+0rkzqyIFov2zlGNlz90FQrjYTZjmwe+FnrYMcPxzVbcuXTaHZ
 eVqI/Av9A8VPKj10nrMXrjI13i2zOqADbOs1AcvObdOmxuQA7t/vWb53f+s2lw56gY22
 cliVyn0c96v8leR5Uj4cXe6hMhB6YnFK1Xl+Diyi3gshw8FmIuyzmEJT8fQic50RVjwL
 3Wlw==
X-Gm-Message-State: AOAM5307KbZkw0R1VJx9deq5dbFi0U8RXOZZQBRJwkmYbOf7jAA9F6w3
 qENyrwZBqM2h0Wvzc6Do+NUeYQ==
X-Google-Smtp-Source: ABdhPJzsoVfypyyuwRu8eGiLpd7PHZ28rxmqqrOUalYwoTiEGfgOFZhqMed3k/sxRA3Yf98av2k42A==
X-Received: by 2002:a5d:548b:: with SMTP id h11mr16509802wrv.306.1605187207325; 
 Thu, 12 Nov 2020 05:20:07 -0800 (PST)
Received: from dell.default ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id t136sm2806326wmt.18.2020.11.12.05.20.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 05:20:06 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/6] staging: net: wimax: i2400m: fw: Fix some function header
 misdemeanours
Date: Thu, 12 Nov 2020 13:19:56 +0000
Message-Id: <20201112131959.2213841-4-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201112131959.2213841-1-lee.jones@linaro.org>
References: <20201112131959.2213841-1-lee.jones@linaro.org>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>, linux-wimax@intel.com,
 Yanir Lubetkin <yanirx.lubetkin@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes the following W=1 kernel build warning(s):

 drivers/net/wimax/i2400m/fw.c:584: warning: Function parameter or member 'i2400m' not described in 'i2400m_bm_cmd'
 drivers/net/wimax/i2400m/fw.c:584: warning: Excess function parameter 'returns' description in 'i2400m_bm_cmd'
 drivers/net/wimax/i2400m/fw.c:646: warning: Function parameter or member 'chunk' not described in 'i2400m_download_chunk'
 drivers/net/wimax/i2400m/fw.c:646: warning: Function parameter or member '__chunk_len' not described in 'i2400m_download_chunk'
 drivers/net/wimax/i2400m/fw.c:646: warning: Excess function parameter 'buf' description in 'i2400m_download_chunk'
 drivers/net/wimax/i2400m/fw.c:646: warning: Excess function parameter 'buf_len' description in 'i2400m_download_chunk'
 drivers/net/wimax/i2400m/fw.c:1548: warning: Function parameter or member 'flags' not described in 'i2400m_dev_bootstrap'

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>
Cc: linux-wimax@intel.com
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Yanir Lubetkin <yanirx.lubetkin@intel.com>
Cc: netdev@vger.kernel.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/staging/wimax/i2400m/fw.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/fw.c b/drivers/staging/wimax/i2400m/fw.c
index 6c9a41bff2e0a..9970857063374 100644
--- a/drivers/staging/wimax/i2400m/fw.c
+++ b/drivers/staging/wimax/i2400m/fw.c
@@ -534,6 +534,7 @@ ssize_t __i2400m_bm_ack_verify(struct i2400m *i2400m, int opcode,
 /**
  * i2400m_bm_cmd - Execute a boot mode command
  *
+ * @i2400m: device descriptor
  * @cmd: buffer containing the command data (pointing at the header).
  *     This data can be ANYWHERE (for USB, we will copy it to an
  *     specific buffer). Make sure everything is in proper little
@@ -566,7 +567,7 @@ ssize_t __i2400m_bm_ack_verify(struct i2400m *i2400m, int opcode,
  *
  * @flags: see I2400M_BM_CMD_* above.
  *
- * @returns: bytes received by the notification; if < 0, an errno code
+ * Returns: bytes received by the notification; if < 0, an errno code
  *     denoting an error or:
  *
  *     -ERESTARTSYS  The device has rebooted
@@ -634,8 +635,8 @@ ssize_t i2400m_bm_cmd(struct i2400m *i2400m,
  * i2400m_download_chunk - write a single chunk of data to the device's memory
  *
  * @i2400m: device descriptor
- * @buf: the buffer to write
- * @buf_len: length of the buffer to write
+ * @chunk: the buffer to write
+ * @chunk_len: length of the buffer to write
  * @addr: address in the device memory space
  * @direct: bootrom write mode
  * @do_csum: should a checksum validation be performed
@@ -1533,6 +1534,13 @@ void i2400m_fw_put(struct i2400m_fw *i2400m_fw)
  * i2400m_dev_bootstrap - Bring the device to a known state and upload firmware
  *
  * @i2400m: device descriptor
+ * @flags:
+ *      I2400M_BRI_SOFT: a reboot barker has been seen
+ *          already, so don't wait for it.
+ *
+ *      I2400M_BRI_NO_REBOOT: Don't send a reboot command, but wait
+ *          for a reboot barker notification. This is a one shot; if
+ *          the state machine needs to send a reboot command it will.
  *
  * Returns: >= 0 if ok, < 0 errno code on error.
  *
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
