Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40022207B65
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 20:20:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 52D0120463;
	Wed, 24 Jun 2020 18:20:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lnwmD8rERFhO; Wed, 24 Jun 2020 18:20:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5F8EB20403;
	Wed, 24 Jun 2020 18:20:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 791BC1BF40E
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 18:20:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 671A620403
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 18:20:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KLLvVlIARmO1 for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 18:20:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 31A5B20002
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 18:20:47 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id j18so3196543wmi.3
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 11:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8rHRm/h+AlJiee9HwiRXh+8CnXqMQ3P2Y6wxuKMImc8=;
 b=tNB3t/yKcUPFw/T4MPQv8Lj6F1FFx7SVJYSKKGLk5oRdMsTItsbCqvnNcWCwGYRkHP
 YILKPwfjAivGbLyTigXz+Nw8RDXwFX0dasH5D7ua+EAXwx8zG+RIwHTQ7C5u2zDHioMd
 mN6cAS87omUgKyuZdQ1++/1JcLNLD4+hzq0UHYgwKr+acGPILdz5iFL0p8JV9c1ZD7Um
 WPp/vS2kfQT0GtgZg8f73UayKZSMNqfs6ZncVinJF57V5k7Q07n0JXwZlXiWMuKbjv2t
 lfjpOrjQ9+5zLULT2Ljk7XrHYpn59Cr461FTU9mP7EBUoNENEs65jX2LxirvTUsSrBpu
 Pguw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8rHRm/h+AlJiee9HwiRXh+8CnXqMQ3P2Y6wxuKMImc8=;
 b=jVy2ikNDY5fDLxXU1qLD6jXh+y04sGcHzzd2WZiLYx8x4Vkhfv+7EJYKIpXZln9UhG
 extuxJ+ti5bTqxiNHjdvQI7NY8VYjDQFVnq+IQWLDmwN9KGzf9yN9nXtMbU2cP8Et7oU
 vkvjAnpdRdAgRXDqV82TE7Y8gHbdwtH0zmV4GITqMuWANyYzH1ru9Fe3DBo1fjGdxkHx
 rEiHQvhvLyAJY2H+E6UJMw74JTpP4gHVnZJ4cM5q3A+tauuzif+kNCKE2f9wVVbmTJe5
 9yl8ZZloXLwwZ8TtnNcVbuvQf3kVjHEWtbPcbBIPphKMTTGSdBsOdtUjVA8/H6EkY3pw
 elbQ==
X-Gm-Message-State: AOAM5307OUrybt07TMp8B9zn3VmbeFNQ/aVlx/lG1OV6QCHbifW1AY1v
 u3DctjI58xUATpcmSJYhGjg=
X-Google-Smtp-Source: ABdhPJxPUj/1NcG1ovFuUVDgdvWm6mN3iahXbiAKNOYl7xNPPcT4a3oUeuONt0ef4sVKvGjCu3zsAw==
X-Received: by 2002:a1c:b182:: with SMTP id
 a124mr29585707wmf.114.1593022845424; 
 Wed, 24 Jun 2020 11:20:45 -0700 (PDT)
Received: from garrit-VirtualBox.fritz.box ([94.31.102.44])
 by smtp.gmail.com with ESMTPSA id w13sm28532046wrr.67.2020.06.24.11.20.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 11:20:44 -0700 (PDT)
From: Garrit Franke <garritfranke@gmail.com>
To: dan.carpenter@oracle.com
Subject: [PATCH v2 2/2] staging: vc04_services: vchiq_arm: Remove unnecessary
 parens
Date: Wed, 24 Jun 2020 20:20:35 +0200
Message-Id: <20200624182035.16740-3-garritfranke@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200619080121.GV4151@kadam>
References: <20200619080121.GV4151@kadam>
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
 Garrit Franke <garritfranke@gmail.com>, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: Garrit Franke <garritfranke@gmail.com>

---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 5a6d2bd59ec0..e0027148963e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -533,7 +533,7 @@ request_poll(struct vchiq_state *state, struct vchiq_service *service,
 				service->localport>>5]);
 		} while (atomic_cmpxchg(
 			&state->poll_services[service->localport>>5],
-			value, value | BIT((service->localport & 0x1f)))
+			value, value | BIT(service->localport & 0x1f))
 			!= value);
 	}
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
