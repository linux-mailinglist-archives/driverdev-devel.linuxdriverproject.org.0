Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7649211BB56
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:16:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2338A86D77;
	Wed, 11 Dec 2019 18:16:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NkMR3zTeDiZE; Wed, 11 Dec 2019 18:16:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E37F86D4D;
	Wed, 11 Dec 2019 18:16:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DBB091BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A2F8C8862C
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OkKofjV8NTBn for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f65.google.com (mail-yw1-f65.google.com
 [209.85.161.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D16728860D
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:26 +0000 (UTC)
Received: by mail-yw1-f65.google.com with SMTP id i190so9322434ywc.2
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WcxYr9RZCBsnbidLa8eleGOYukmYC7BtU1QAQ3T47uk=;
 b=VmBiBCIVN/9mZ5ewjyFn0SXVBO5g9Kex9cLjyo3xJq+9dqNFK08YN2qa25Rs+lyAio
 QMAoItaqttwy+ykk4s1UteT/EAxUgIF5VCoCuwiHsfsVTKBNadUDfmZRH9FJk3N7Cb6N
 G7TRFWw2AabJkv1w58GKzQ6rZF86Y4sfYfwMTwmPJf97Cha8psc/jQ8PFKgzMbxjDGSJ
 B5+aDAIOiWMt+dsYWOJgs6vpJgdMcNKMAinSxAk/Shh5OIk6MkZz8OKe1QeIMQL2INEm
 PeRRn4w5JMNmvOz4wg+fSt76LDf/7Q7O+Zp5UkIITG2fNRIU4hgF98LitNuo5PIYMqe9
 d+iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WcxYr9RZCBsnbidLa8eleGOYukmYC7BtU1QAQ3T47uk=;
 b=Es3fSGUHdiy3/cTtd12TXob/m+EFGxNW04FUR4hB3wbVD3nKT6mDG/Vhy8Lo0WWXhD
 fP667bHdcj/V8DDBTNmwVhmF6Ssu0KBqQDBnCrCR+nvDceYkHS+6yHwb4ZqyWoVWiTH+
 pKlX6xNesHlxS2/CI3X3lAmTOa0If/+2dwzmkZT7X3m46osVxhTHUSP8sWtHqnsG7CiV
 JpFP6sZKqOmwfTZE1vpE6DBQ1ZcJZt8Y26ut3Qu4B6B2HDjVGOp8T7YKkVKRt/PlNSbI
 ZJrz73DgILkD/48eNKEsEPv8Dp3LoRguveurCEHpJFd9p6QO/PRtmIimkL0MqzhqS4yw
 xIFA==
X-Gm-Message-State: APjAAAXfGkMRvtK1RcpMs+SOBoXAgDWrsAZ1Y5sQy7dNanbo5ZVaq/Zm
 1lNjscthOrqG4jK/qW98Lds=
X-Google-Smtp-Source: APXvYqwvjrbh/5FmBwa94ei1z66nQ5R93gCHgVkZdQTEs9tpJL+x1TSQNXy2LWP8oCPoaZ0RVOVX5w==
X-Received: by 2002:a81:f50:: with SMTP id 77mr907958ywp.340.1576088125875;
 Wed, 11 Dec 2019 10:15:25 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id d207sm1298391ywa.62.2019.12.11.10.15.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:25 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 14/23] staging: qlge: Fix WARNING: Unnecessary space before
 function pointer arguments
Date: Wed, 11 Dec 2019 12:12:43 -0600
Message-Id: <b80b28a9e4377bbaa8f33e78311302a97c2e5f41.1576086080.git.schaferjscott@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1576086080.git.schaferjscott@gmail.com>
References: <cover.1576086080.git.schaferjscott@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Scott Schafer <schaferjscott@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

WARNING: Unnecessary space before function pointer arguments in qlge.h

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 9ab4c7ce7714..010d39b4b30d 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -2057,8 +2057,8 @@ enum {
 };
 
 struct nic_operations {
-	int (*get_flash) (struct ql_adapter *);
-	int (*port_initialize) (struct ql_adapter *);
+	int (*get_flash)(struct ql_adapter *);
+	int (*port_initialize)(struct ql_adapter *);
 };
 
 /*
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
