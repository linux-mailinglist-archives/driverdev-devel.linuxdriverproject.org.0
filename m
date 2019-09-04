Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC5CA9476
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 23:06:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC714855EA;
	Wed,  4 Sep 2019 21:06:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1pZKDkAAUoSc; Wed,  4 Sep 2019 21:06:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 321CB847C8;
	Wed,  4 Sep 2019 21:06:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 899991BF9AD
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 21:06:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 860C184FC9
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 21:06:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id imCEHjpj6WRy for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 21:06:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 36F9C84D0F
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 21:06:25 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id j10so139946qtp.8
 for <devel@driverdev.osuosl.org>; Wed, 04 Sep 2019 14:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UaZIRIb7eWDZUmuFUvyLJZmPVK7Rr9RueiAiw2bvhuY=;
 b=Ar7mAQHarWzTpLuNkoxVGscFW2h5Z1XgkkQgf6T1ze27edjg8vNPRaiXl1tvdFHGKF
 VFBnKOgaShRFEX3uP/UUK9PyE0le4/R7wUeL6ysQUCuB13lQs370sLLc/jK5UdVF8HWw
 1oGzQvU6kYV5c9VbZqCNTb0aqrJNzOeTn/HjjI0+J1Jw2oTIkyzncubeh3Qjj5cM/EEp
 A/iB3BZjPGM5dyBJqmkXedT96aXWQB6l5iWExy8yCss7TRtMMLQVbTsVPsF4QbdIQ5d7
 qYiokp++onnRb9W1XQtbmbH1F9xAvDk+yT8N0Z038LrHIlEXMXqGXsgrloX5qhVdrsFo
 vwMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UaZIRIb7eWDZUmuFUvyLJZmPVK7Rr9RueiAiw2bvhuY=;
 b=K/Koatjs5UsYWIUB7Bh9z3yQB7kVwiIUYyxJ3+JcsSydslBeZxetMZ2APVENPEBT+G
 4wzLaGz1wzOoi4z26pyHrCMZev2RbfHdPHmpXNxGK3pg9RTrbLQaYk9mcKY+3wr2aFN4
 l8+hyP1V1mrryedKfDYVONt3fk8LK2lWtv8lIImW/zV7i3BkBkyNXc9T4tcpYXRHzjTd
 VV3Hqkmgnk/PJG/2ZVudDhmorHPfyggAbeUNS4VFXYdFSa01vveb8u509fqpoL7u1WUy
 epaUWi+LtxZ68o3DmHs117d3Ok1O1o3ThVDP8//HuDZLm0ySh0WtnnJ4yUlKKw/cL/SV
 G/fg==
X-Gm-Message-State: APjAAAVpXOA1hb92YOFEjXV1JAHZA0jlNt4XdVjCJzkaCWY/ee3BqWwd
 GKBdORjbVVWLoNTZkuB0GlA=
X-Google-Smtp-Source: APXvYqwVoEzX6KSezOYOFf+WK2aIAr87DU49pQjAfxp0pf9UKtZOQWsSmSLyU+3HlWu+KMfP6vmIUQ==
X-Received: by 2002:ac8:92d:: with SMTP id t42mr105126qth.206.1567631184313;
 Wed, 04 Sep 2019 14:06:24 -0700 (PDT)
Received: from 24a3ceb039de.ic.unicamp.br
 (wifi-177-220-85-167.wifi.ic.unicamp.br. [177.220.85.167])
 by smtp.gmail.com with ESMTPSA id o127sm86871qkd.104.2019.09.04.14.06.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 14:06:23 -0700 (PDT)
From: Pedro Chinen <ph.u.chinen@gmail.com>
To: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: [PATCH] staging: greybus: loopback_test: remove multiple blank lines
Date: Wed,  4 Sep 2019 21:05:47 +0000
Message-Id: <20190904210547.5288-1-ph.u.chinen@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix following checkpath warnings in multiple lines:
CHECK: Please don't use multiple blank lines

Signed-off-by: Pedro Chinen <ph.u.chinen@gmail.com>
---
 drivers/staging/greybus/tools/loopback_test.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index ba6f905f26fa..1e78c148d7cb 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -779,7 +779,6 @@ static void prepare_devices(struct loopback_test *t)
 		if (t->stop_all || device_enabled(t, i))
 			write_sysfs_val(t->devices[i].sysfs_entry, "type", 0);
 
-
 	for (i = 0; i < t->device_count; i++) {
 		if (!device_enabled(t, i))
 			continue;
@@ -850,7 +849,6 @@ void loopback_run(struct loopback_test *t)
 	if (ret)
 		goto err;
 
-
 	get_results(t);
 
 	log_results(t);
@@ -882,7 +880,6 @@ static int sanity_check(struct loopback_test *t)
 
 	}
 
-
 	return 0;
 }
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
