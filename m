Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B09C3D3910
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 08:03:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 63D0225893;
	Fri, 11 Oct 2019 06:03:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CaJsFRViUi1q; Fri, 11 Oct 2019 06:03:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 67E4E20461;
	Fri, 11 Oct 2019 06:03:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 885271BF841
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:03:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5D08F87FB9
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:03:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Y30+Jwq0DPc for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 06:03:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 84B2B87FE3
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 06:03:29 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id d22so3967485pls.0
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 23:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZhH7y9bWqrYq0GkntR2sqe3cFWsNeqnTiNZ167qd4Ww=;
 b=QCsQiH4zWuKHwsrNSls2v4R+pgugagGbeWEx0Jxi05GUkcoh3J8oTImD/N5SqDx11B
 DKgkcanC09fKw+B+TmxVc8a5cEBEg75rnu47ckfW3U/ariFlcLaSfcKay4RdHgc71Sv7
 UyPem8oI1w5WSHT+6pdXHHOGLoqcb1S+93dT1rlBWr5NcLznYSzaiRmTbwfnICVl3pUe
 RSsLpBCAHFmNC0rKM4Hiy8eevrSCU4G/FS4D402e8pJ8qa6swip9P/UsRmtLa3kXGJ5a
 VBJfiBa62PBLkawRSn/QA7A2POcOhqMprIz7xU5cpGj5boKYxe4vUF9/jD7Uilm83BuX
 Vpsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZhH7y9bWqrYq0GkntR2sqe3cFWsNeqnTiNZ167qd4Ww=;
 b=PCuiVFicplOXc+lw4FcTw3aKuUBqOyG4pWlMWgMzr4LZZ5/qeFQnCQst6sxcn30x7s
 QQgX/vQYT0yrZ0/LhQmzXXbirm7pBOUq1KLgvr/Py1TYKGFPVsczmJwHFUOxhohYivxn
 9nPY5Fa+rCiapOBGc2OD6fgfZufH3oQpLIHchOudIpoDmtUVwERKH/2jLQ7RZnr3kbLs
 69AjI01AC73l6tT2AF1VuQqjWvjuD4lgjj5bvG0fCr5wZGqL1f2ozK7Stxf0tKdkvUDD
 fVK0/YYQ/qL2U/M043xP/a8PWEQrGmwIl1kY74+g+RnNOcPtym9EYG3WA6tc03hCg8WL
 rhmQ==
X-Gm-Message-State: APjAAAUDZH3sMky6tSTvkZRj61EdgIYueo8wyU8IWy+XjY6wF2s+Q+6j
 zndL9Gd5+DM+4KQBTNyBNF0=
X-Google-Smtp-Source: APXvYqznc/4K8eKHZ0HdkF8LED+YFxKkZxoms/0qMxEZcPi6+7/VNjd9bd2jMFWr/6i33HKwFK1QTA==
X-Received: by 2002:a17:902:aa07:: with SMTP id
 be7mr13517839plb.242.1570773809093; 
 Thu, 10 Oct 2019 23:03:29 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id p11sm9395715pgb.1.2019.10.10.23.03.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 23:03:28 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] staging: octeon: remove typedef declaration for
 cvmx_fau_reg_32_t
Date: Fri, 11 Oct 2019 09:02:40 +0300
Message-Id: <b4ac58c4f17ec98e014980ae7084db16ffd9d97c.1570773209.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570773209.git.wambui.karugax@gmail.com>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
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

Remove typedef declaration for enum cvmx_fau_reg_32_t in
drivers/staging/octeon/octeon-stubs.h.
Also replace its previous uses with new declaration format.
Issue found by checkpatch.pl

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/octeon-stubs.h | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index 78f42597cee5..1725d54523de 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -201,9 +201,9 @@ union cvmx_helper_link_info_t {
 	} s;
 };
 
-typedef enum {
+enum cvmx_fau_reg_32_t {
 	CVMX_FAU_REG_32_START	= 0,
-} cvmx_fau_reg_32_t;
+};
 
 typedef enum {
 	CVMX_FAU_OP_SIZE_8 = 0,
@@ -1178,16 +1178,18 @@ union cvmx_gmxx_rxx_rx_inbnd {
 	} s;
 };
 
-static inline int32_t cvmx_fau_fetch_and_add32(cvmx_fau_reg_32_t reg,
+static inline int32_t cvmx_fau_fetch_and_add32(enum cvmx_fau_reg_32_t reg,
 					       int32_t value)
 {
 	return value;
 }
 
-static inline void cvmx_fau_atomic_add32(cvmx_fau_reg_32_t reg, int32_t value)
+static inline void cvmx_fau_atomic_add32(enum cvmx_fau_reg_32_t reg,
+					 int32_t value)
 { }
 
-static inline void cvmx_fau_atomic_write32(cvmx_fau_reg_32_t reg, int32_t value)
+static inline void cvmx_fau_atomic_write32(enum cvmx_fau_reg_32_t reg,
+					   int32_t value)
 { }
 
 static inline uint64_t cvmx_scratch_read64(uint64_t address)
@@ -1364,7 +1366,7 @@ static inline int cvmx_spi_restart_interface(int interface,
 }
 
 static inline void cvmx_fau_async_fetch_and_add32(uint64_t scraddr,
-						  cvmx_fau_reg_32_t reg,
+						  enum cvmx_fau_reg_32_t reg,
 						  int32_t value)
 { }
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
