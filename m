Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF46D5181
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Oct 2019 20:06:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76D61885A8;
	Sat, 12 Oct 2019 18:06:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9H0aDuIetrKj; Sat, 12 Oct 2019 18:06:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81F7F880C7;
	Sat, 12 Oct 2019 18:06:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EDA351BF28C
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 18:06:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E78F920130
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 18:06:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yKX2K6ljMmxU for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 18:06:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 521E120119
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 18:06:04 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id y5so7993343pfo.4
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 11:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M0IO3QVHvP8iuWc7wMX3UeVoicJhBdbrs0nmaFfvgXI=;
 b=cKSczFSU2zV5NJoLOSzUVc9jLOqNZ8plp6l+JTG6mIKrUT0kLwwHdzrrqdTmW3K2Ap
 hTaONGQQWgN9MtghRVYKIM7ZR2wKtklibu2cBXCFAZTuMhXVQKGHyoJUdboogMsBLGkC
 +r5ra5fIwC0j2+2Y/8hkRITfOo4bEP49KYqy48Hbu5bMDC4JKneBvol2E7fU1ITtYF4A
 N/PL+xT1gzG9Fu4r3Bo4EaYZ5ptPrywgeJq5Do392d4087jSxu+nZMsOhoMakNmAZ5JI
 TZFSwxpy6sSXQmJ/KfBTEUaWwQru/rjLRtSHfCV+rvXplG9m7wWu5DWmntDbGAfpJlod
 NcMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M0IO3QVHvP8iuWc7wMX3UeVoicJhBdbrs0nmaFfvgXI=;
 b=qJslmIRcFsPQYWnp4p9NWWCfde1xG09aNmU/1JUCY++BNHAHFgWOJJWFrQ55g61oB5
 JkV7Xo3MFW29QSDfnrVdxr90y3Bk+j8sQf6PeYoLQzxR/K5Av8Lu/O4uFxmvyRxNIg4P
 pYs0u6g0ow8Ei1jvwmOtBMnuy11ih+oR5+wUkIv0DiU61cBz63/PliLQ/1lkl8yBQcu4
 kLQ8r/rIBLFoHsRnIbjg/hirM/hcCovVneTyec4XkTfPTb1St8RhFA1SgIhKakkKdoh/
 QY0ggMqMdGtfmLlKj4c49kKLiDO03G12XnRl6IIV/+ayF2YSg5YnQ6w8x8beYkEySqB+
 zlmQ==
X-Gm-Message-State: APjAAAXf6GQFtAWl5bNx2khZNAO1pUC8Y6Ude6KGnXlSb2ut1fZMQEVh
 3LCufBcfiIHa6TaLBDYTLNg=
X-Google-Smtp-Source: APXvYqzbJTU0Ww2dFcjbyWB0o9m7SWckZWm8DBQ53VOE0u2S5GqouzMos3qWH8ZEg81NQz9Ezw+yrg==
X-Received: by 2002:a62:870c:: with SMTP id i12mr23374694pfe.247.1570903563907; 
 Sat, 12 Oct 2019 11:06:03 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id p17sm12183475pfn.50.2019.10.12.11.05.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:06:03 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/5] staging: octeon: remove typedef declaration for
 cvmx_fau_reg_32
Date: Sat, 12 Oct 2019 21:04:33 +0300
Message-Id: <b7216f423d8e06b2ed7ac2df643a9215cd95be32.1570821661.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570821661.git.wambui.karugax@gmail.com>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove typedef declaration for enum cvmx_fau_reg_32.
Also replace its previous uses with new declaration format.
Issue found by checkpatch.pl

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/octeon-stubs.h | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index 0991be329139..40f0cfee0dff 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -201,9 +201,9 @@ union cvmx_helper_link_info {
 	} s;
 };
 
-typedef enum {
+enum cvmx_fau_reg_32 {
 	CVMX_FAU_REG_32_START	= 0,
-} cvmx_fau_reg_32_t;
+};
 
 typedef enum {
 	CVMX_FAU_OP_SIZE_8 = 0,
@@ -1178,16 +1178,18 @@ union cvmx_gmxx_rxx_rx_inbnd {
 	} s;
 };
 
-static inline int32_t cvmx_fau_fetch_and_add32(cvmx_fau_reg_32_t reg,
+static inline int32_t cvmx_fau_fetch_and_add32(enum cvmx_fau_reg_32 reg,
 					       int32_t value)
 {
 	return value;
 }
 
-static inline void cvmx_fau_atomic_add32(cvmx_fau_reg_32_t reg, int32_t value)
+static inline void cvmx_fau_atomic_add32(enum cvmx_fau_reg_32 reg,
+					 int32_t value)
 { }
 
-static inline void cvmx_fau_atomic_write32(cvmx_fau_reg_32_t reg, int32_t value)
+static inline void cvmx_fau_atomic_write32(enum cvmx_fau_reg_32 reg,
+					   int32_t value)
 { }
 
 static inline uint64_t cvmx_scratch_read64(uint64_t address)
@@ -1364,7 +1366,7 @@ static inline int cvmx_spi_restart_interface(int interface,
 }
 
 static inline void cvmx_fau_async_fetch_and_add32(uint64_t scraddr,
-						  cvmx_fau_reg_32_t reg,
+						  enum cvmx_fau_reg_32 reg,
 						  int32_t value)
 { }
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
