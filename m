Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05986317309
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 23:15:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1DC0187541;
	Wed, 10 Feb 2021 22:15:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eRx9wQE2pmzH; Wed, 10 Feb 2021 22:15:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9442A8752D;
	Wed, 10 Feb 2021 22:15:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E4041BF3D7
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 22:14:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 79A8486B70
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 22:14:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tsaIFiuUVyHg for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 22:14:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BE07186B9E
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 22:14:57 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id c6so4905085ede.0
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 14:14:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rqc/GNzS3OhAYcsjBHiaYbzkuH2zCrmHds0Gceno4C4=;
 b=QY0/hsZvZE7CrklzWb3YGjinfA/mjhKQj4IV6arHMFhP/6YgIQzR08XgCTm/8YdVer
 dLAhJ6EhowREU2pZQqsd0PX+rjs7C7xuLfCq7djXvg6L59iwpDoM42IKMEGg+/ZMHjod
 1WyGENSbiKcS51IQBE0iNs95e14ds1mg5kEp7+lU1DeMr9L5+X3dspllWwuA+yLRMfOl
 zocBeH6CjJnZ6lLCE/ZuAB4Y5JE9ThLrLoly6uFB2lQgLtd5Ez2G1EIo9ksbiT7T0dix
 iAUPCEORmQFyN8K9XnMiE0GwuKPF5a0h0ddK2xyLVerMxTZBIH9cfCwjPl48tjhJr3R7
 Huwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rqc/GNzS3OhAYcsjBHiaYbzkuH2zCrmHds0Gceno4C4=;
 b=E5of1vm1fPKhGuNiUT6FbOOGWM+MveV6ffgApGe3ewPazNu4ogpHz/mKMfqu/wmT45
 tMsG93KvHIxKjal+yKcceeIslAZD2lhuYiiCFwjjZLbo3ZYzUcutJ2MwJE9BWZw5cIE5
 YmjYt0KzZSKBQ2jg6Thd4bI1AYXVWHgrdBWt/VIOpOflJJ5qf/MSVkAFxDZpoJIRvp2J
 lEnSXgZpPmbE7Y/pzbJZmmkYdCeBs8rB1hqePRFRu9VxTgW3BrTUJGQQrY8RJPgO6ORe
 ZPnQPGbyvwS3qTVqzsW8ZZbvTCz2qAWVBbf25UptNOEygdEVIZExfgj3uk7zzDdeQqgH
 2lyA==
X-Gm-Message-State: AOAM532z0sAyka5xhqonIL6V8qnWiVscMI4dj2RNL6J7gpFvq2Y4yLYC
 s5+eEipX0y+/fXeuYLlZWwg=
X-Google-Smtp-Source: ABdhPJwuC4q7QPIxZVE9dlElpGqJ1xYm+4iq1/sN4CEJTcgXM8gpWe6TrvOGrsyMsZUAV+V4+mVu4g==
X-Received: by 2002:a05:6402:1589:: with SMTP id
 c9mr5441722edv.282.1612995296012; 
 Wed, 10 Feb 2021 14:14:56 -0800 (PST)
Received: from TRWS9215.usr.ingenico.loc ([78.190.146.52])
 by smtp.gmail.com with ESMTPSA id b3sm2130578edw.14.2021.02.10.14.14.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 14:14:55 -0800 (PST)
From: Fatih YILDIRIM <yildirim.fatih@gmail.com>
To: pure.logic@nexus-software.ie, johan@kernel.org, elder@kernel.org,
 gregkh@linuxfoundation.org
Subject: [PATCH 1/1] Macros with multiple statements should be enclosed in a
 do - while loop.
Date: Thu, 11 Feb 2021 01:14:39 +0300
Message-Id: <20210210221439.3489-2-yildirim.fatih@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210210221439.3489-1-yildirim.fatih@gmail.com>
References: <20210210221439.3489-1-yildirim.fatih@gmail.com>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 linux-kernel@vger.kernel.org, yildirim.fatih@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: Fatih YILDIRIM <yildirim.fatih@gmail.com>
---
 drivers/staging/greybus/loopback.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
index 2471448ba42a..c88ef3e894fa 100644
--- a/drivers/staging/greybus/loopback.c
+++ b/drivers/staging/greybus/loopback.c
@@ -162,10 +162,12 @@ static ssize_t name##_avg_show(struct device *dev,		\
 }									\
 static DEVICE_ATTR_RO(name##_avg)
 
-#define gb_loopback_stats_attrs(field)				\
-	gb_loopback_ro_stats_attr(field, min, u);		\
-	gb_loopback_ro_stats_attr(field, max, u);		\
-	gb_loopback_ro_avg_attr(field)
+#define gb_loopback_stats_attrs(field)					\
+	do {								\
+		gb_loopback_ro_stats_attr(field, min, u);		\
+		gb_loopback_ro_stats_attr(field, max, u);		\
+		gb_loopback_ro_avg_attr(field);				\
+	} while (0)
 
 #define gb_loopback_attr(field, type)					\
 static ssize_t field##_show(struct device *dev,				\
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
