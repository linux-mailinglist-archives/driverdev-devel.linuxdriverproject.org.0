Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 178852B0634
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 14:20:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A167C877AD;
	Thu, 12 Nov 2020 13:20:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SrIMgVjkz2GP; Thu, 12 Nov 2020 13:20:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA20587791;
	Thu, 12 Nov 2020 13:20:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7799C1BF3ED
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 13:20:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6A3942E1E5
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 13:20:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EPy7JqQRlYoi for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 13:20:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 440CB2E1D9
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 13:20:13 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id b6so5980085wrt.4
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 05:20:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8bT6NBr573z4dRmUGzdy7vOSo0LG9hQOBgI7J9L19n0=;
 b=mgsPSO4Vv1I0HLl+/EpK+bO64s6O30aHTiVXWSNkXtrWiKVu0TONIobdV8BewmbFoU
 gmKhJSfyHbxWuLsrWBbzord4ktUmXpF/JfK8W7GPrkQpwdmHOCV99d8/+u7G6rslcGi4
 T7UW3lD2hbNoZmZOzUqmApvnILA+G/TnMnWP9S6Fb06hjZ+dXQJLn9aSiGrAPx5fGakG
 W8pK1mZW+Frwk+3qur8oKSxcbaZ9gHPuCo6A+OdWIrnZZab8C+2zIpftvjynOTmNKUNw
 JwbYgaKPc/iqYVbpiSRhuVSUKBDzj1++R3rOQjwnVHgJo4nJXLSIHVdqHdgJiPjH6K/o
 DZBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8bT6NBr573z4dRmUGzdy7vOSo0LG9hQOBgI7J9L19n0=;
 b=peUcpqoHv1xBskG4HGkWhXSY7g3D7uiWVN1eCLKKxEQnrqP8ZIVFrB9QSqPMoV+FmM
 G3Wm6w0aB8z67d0JCUIG4DFmEBtak2KWiRO1JfpWGm7ohstc7dYVS8ONJFUnJctfeMPH
 8xD/eX255dKYNGb5kUPgu77eCIlyNGqNs21H1WUIB3DcK9ciOocBVSn4akc/br685ZO8
 reJ86bjqFrlJfw498WWxzno/KcTZ5p2taZIlGagdGCyJCSyimD+heGWk3817sMiuPq15
 xzBeUb9Vv76Eo/P26QJowwyJ58XVxCk18ILfuh4044R5Csd9lMPdb1Y/etBt8xOTpS30
 Juvg==
X-Gm-Message-State: AOAM532TS0Nlpg3Tl3q4JjzIa1uJXR+0zypRyWn1DMKdm/hDAEuz5fDf
 i31uF9IS+jodM/3Koj48mmJk6A==
X-Google-Smtp-Source: ABdhPJyI+2L0X57vYtQloasVb3OMTpYuD6fawy7Bq6HwXGcJSYZ6xpBDXg1Jb9tIfoXKnZ4Ww4pnvw==
X-Received: by 2002:adf:ebcb:: with SMTP id v11mr35129463wrn.408.1605187211647; 
 Thu, 12 Nov 2020 05:20:11 -0800 (PST)
Received: from dell.default ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id t136sm2806326wmt.18.2020.11.12.05.20.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 05:20:11 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 6/6] staging: net: wimax: i2400m: fw: Fix incorrectly spelt
 function parameter in documentation
Date: Thu, 12 Nov 2020 13:19:59 +0000
Message-Id: <20201112131959.2213841-7-lee.jones@linaro.org>
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

 drivers/net/wimax/i2400m/fw.c:647: warning: Function parameter or member '__chunk_len' not described in 'i2400m_download_chunk'
 drivers/net/wimax/i2400m/fw.c:647: warning: Excess function parameter 'chunk_len' description in 'i2400m_download_chunk'

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
 drivers/staging/wimax/i2400m/fw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wimax/i2400m/fw.c b/drivers/staging/wimax/i2400m/fw.c
index 9970857063374..edb5eba0898b0 100644
--- a/drivers/staging/wimax/i2400m/fw.c
+++ b/drivers/staging/wimax/i2400m/fw.c
@@ -636,7 +636,7 @@ ssize_t i2400m_bm_cmd(struct i2400m *i2400m,
  *
  * @i2400m: device descriptor
  * @chunk: the buffer to write
- * @chunk_len: length of the buffer to write
+ * @__chunk_len: length of the buffer to write
  * @addr: address in the device memory space
  * @direct: bootrom write mode
  * @do_csum: should a checksum validation be performed
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
