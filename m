Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 182F1209FC8
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 15:25:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4F0A2231B1;
	Thu, 25 Jun 2020 13:25:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7P9R3AyrH1Z2; Thu, 25 Jun 2020 13:25:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 42C57230F6;
	Thu, 25 Jun 2020 13:25:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C4E461BF842
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 13:25:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BFC91230F3
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 13:25:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vt5QEgg5jaIx for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 13:25:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com
 [209.85.219.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 6C971230F6
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 13:25:46 +0000 (UTC)
Received: by mail-qv1-f65.google.com with SMTP id cv17so2726563qvb.13
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 06:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eJ3/Mq7vJPR+x6UGF9hjTyfpV3MClmGOAkmC+A8dGsw=;
 b=pQJmNzfdvlcRM9JVSyrhj/oMZG+i5rKFtQq0Qk9xomMbXD4rG2HGCs3tTvWJcyL+RN
 ZhGROVilEALNcyrN9LSGS5UdAfOqt6qLQDa+hwg1ZjTpHmo32ZeyiluZYd8456eFq9/Q
 tHQ3iuAIBpWP/6vRX46jGq8rB88Y31toNEHItwoPsnzBvp8KkrBBj8vqpm6KVdxTixEh
 bFCGJAbi7DbaOyORsDIx7TrVgkkQ7pkGj5UuXCmF989fgpDKrZSRqSE0fdZrHA1P8Gep
 UcLJVLh0WiULO1XE9yriSgaF9HadZjvra1NcPPECoadhGzSVi4pNzkMCdad8QKZQ0qsT
 kbnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eJ3/Mq7vJPR+x6UGF9hjTyfpV3MClmGOAkmC+A8dGsw=;
 b=QOgyGS7nf+MvQls9yJnlEiXTT9VtG/CxigLkS416+L/ZE6fvj9aFx1L3C9Y7a/IWmL
 0aU9Y3q0/iPETtJV4mutrUH9xGDHjV13thmFlJ6QrOLvjkib4V5N5o7WwgFnRSxw9PNo
 70dy/pmBq2aBsChXXdEySAMAcr2PoUEkfdSdgPSTqAwoVyJnsQ1g33kgYZmJWWeNZXQi
 kMc+WBe+61rKKNVPgcEHjk3tzSthFDsIfxtfX+Q46D3SJKlXwlxLEe0GIgXsculsh0gy
 iXBONofKhPLKqt+laTNcMIWoLR+A3Z4xWb6dyQnvNomjroPrze0BdeHirvDSmJpDB/qE
 wXhg==
X-Gm-Message-State: AOAM531nozETi60Tt62Q76eK1oQNhBs6/dXLQDL4i2r889WN5NfbgPE1
 JvntBfjRcfTJtTwXWDzBIqI=
X-Google-Smtp-Source: ABdhPJyCApRXjFEu8aKC07g6xSI7imbJE7s5oeq7Fsp/i/5IUsQLbIKz8y4K+ZaiWjwtdwlCv+YA7g==
X-Received: by 2002:a0c:eccd:: with SMTP id o13mr37073576qvq.49.1593091545506; 
 Thu, 25 Jun 2020 06:25:45 -0700 (PDT)
Received: from mooncell.myfiosgateway.com
 (pool-173-75-208-99.phlapa.fios.verizon.net. [173.75.208.99])
 by smtp.gmail.com with ESMTPSA id t35sm412107qth.79.2020.06.25.06.25.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 06:25:44 -0700 (PDT)
From: Brooke Basile <brookebasile@gmail.com>
To: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org,
 rcy@google.com, gregkh@linuxfoundation.org
Subject: [PATCH] staging: gasket: Convert symbolic permission to octal
Date: Thu, 25 Jun 2020 09:25:13 -0400
Message-Id: <20200625132513.10805-1-brookebasile@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, Brooke Basile <brookebasile@gmail.com>,
 trivial@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixing checkpatch WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.

Signed-off-by: Brooke Basile <brookebasile@gmail.com>
---
 drivers/staging/gasket/gasket_sysfs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
index ab5aa351d555..eb0fd3b0490f 100644
--- a/drivers/staging/gasket/gasket_sysfs.h
+++ b/drivers/staging/gasket/gasket_sysfs.h
@@ -71,7 +71,7 @@ struct gasket_sysfs_attribute {
 
 #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
 	{                                                                      \
-		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
+		.attr = __ATTR(_name, 0444, _show_function, NULL),	       \
 		.data.attr_type = _attr_type                                   \
 	}
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
