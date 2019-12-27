Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8194E12B34A
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Dec 2019 09:42:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B8D28557B;
	Fri, 27 Dec 2019 08:42:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IMeLhM-D0cDm; Fri, 27 Dec 2019 08:42:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3CFE985567;
	Fri, 27 Dec 2019 08:42:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 62A661BF327
 for <devel@linuxdriverproject.org>; Fri, 27 Dec 2019 08:42:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5EFE88553C
 for <devel@linuxdriverproject.org>; Fri, 27 Dec 2019 08:42:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N3JrycRBAKQ9 for <devel@linuxdriverproject.org>;
 Fri, 27 Dec 2019 08:42:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A7A83854B3
 for <devel@driverdev.osuosl.org>; Fri, 27 Dec 2019 08:42:15 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id l12so24092730qtq.12
 for <devel@driverdev.osuosl.org>; Fri, 27 Dec 2019 00:42:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=Anodsp7HhKNo2COqD0EzVnUmrpQEB4ruVuLqYxaKVKI=;
 b=FaaKKhNodJIMTsMa8679JHazvL379a59zpE7JGE0WoT0ajb/r5nQioatXVOK/0zGUi
 Lt0c2EdHg+Kwhl8f6XHqugkkAFEnNaYPB1PCp9UP+Ii4gvDO+b6xckebXtExVzDgUyb8
 A7wTmOPvmse7VdGVShYgiKcHBmdBAzDhKspsoO1V/4XeIHZnN5DN2KC44kmqxRCI8/oy
 rwvWuS4hg+JkdO2sQ35dq4IgklE0VcbhSKkRNnhIrAbTsNqotAo4E+FA8DeyGXq7ekhm
 r1j6sREdX0j1PqO+x9lR2+zre0aJUqPuyDB4NW7v4KUBVIpSk5YV79+o4/uiJ4h3f7Q4
 W6DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=Anodsp7HhKNo2COqD0EzVnUmrpQEB4ruVuLqYxaKVKI=;
 b=dNaNPE/DTzsi//qRUbv86fjpmbN0n7dNYBmY0M69ZOp5q+P0yPEuD1k46sDHkqvy5P
 vgsOSZcUcOtQnezuuzjenMT32A+MXAVoKugK5pOfLh6mENWlm0ZCNtCsa4PIYx1MUO5F
 /8eV1hbzq/8KJfib8vSPPu5DYFMr+fo01QYpAMiW0GafTh2S/TBSRAlSyG8V9SUYSYKH
 Ng9PfNNtygg4Nimtyfgc6hmXVZ3ylYlS2sjSA6chEYCfFXqeSyEeoYUfjIUTTuc7uHkj
 WWm5zFCRue7MvVdsYT85JH2fjFZbA8A8Q0NdR9ZA7IjBPLWn5BmFyW9BLd5ud2NuvHG0
 B34Q==
X-Gm-Message-State: APjAAAXPFUcrEMup6eNikhGCgLWS9FNbJg9dhmp4DQzOnMVNmlcu9iL/
 mW9O9fH1NMPIyuI852zdBXk=
X-Google-Smtp-Source: APXvYqxoXNxINuI+zJVJWk5IUvkPkuygIji6JWYiWR32IMWCk44nVD+LOYBFTBvJK/tNSiqTtgfHJw==
X-Received: by 2002:ac8:6f04:: with SMTP id g4mr36752946qtv.314.1577436134769; 
 Fri, 27 Dec 2019 00:42:14 -0800 (PST)
Received: from mandalore.localdomain
 (pool-71-244-100-50.phlapa.fios.verizon.net. [71.244.100.50])
 by smtp.gmail.com with ESMTPSA id g62sm9499559qkd.25.2019.12.27.00.42.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Dec 2019 00:42:14 -0800 (PST)
Date: Fri, 27 Dec 2019 03:41:55 -0500
From: Matthew Hanzelik <mrhanzelik@gmail.com>
To: gregkh@linuxfoundation.com, christian.gromm@microchip.com
Subject: [PATCH v2] Staging: most: core: Fix SPDX License Identifier style
 issue
Message-ID: <20191227084155.xpmv2thwrrsij5kx@mandalore.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a style issue with the SPDX License Identifier style.

Signed-off-by: Matthew Hanzelik <mrhanzelik@gmail.com>
---
Changes in v2:
  - Fix trailing space in patch diff

 drivers/staging/most/core.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/core.h b/drivers/staging/most/core.h
index 49859aef98df..1380e7586376 100644
--- a/drivers/staging/most/core.h
+++ b/drivers/staging/most/core.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * most.h - API for component and adapter drivers
  *
--
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
