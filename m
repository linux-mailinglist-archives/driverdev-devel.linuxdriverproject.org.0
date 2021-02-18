Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B7531EAF9
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 15:32:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3767786EB0;
	Thu, 18 Feb 2021 14:32:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jzLECvXZbvr5; Thu, 18 Feb 2021 14:32:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3FE6F86E7F;
	Thu, 18 Feb 2021 14:32:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9AEF11BF3C3
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 14:32:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 978F886E86
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 14:32:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dzEjFmm14z-4 for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 14:32:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
 [209.85.210.180])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 33B5E86E7F
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 14:32:13 +0000 (UTC)
Received: by mail-pf1-f180.google.com with SMTP id j12so1392392pfj.12
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 06:32:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Z8JGVPoDk6C0GygHaIvieM1VYWj30R2VXfC11nFdH/c=;
 b=X0aOFqFvmjFpY9xgl3yKZmEpRqki1EKkRuRoylf+XjMDp6WaVdWU4ZAm3eaB3NxiiB
 cMu5KvTILY25mR7aeswieXmhOApOV/jrd/lxQ/p8OmKnTyG9RYAL2e0sOMd/28XxTeWb
 AeGj49ylCG0JYoRrq6OgGkEuLK4C8uSCRhTtgqHMEcDZi4oxslKUc470XIgXkZS4JGQA
 US2uCo7ZsWt4epXDLPY24YQNrHJG7/JrZcrEciWpz8q1S7np7V/fdseFHOiNk9vWnWmI
 I7wvxpEc7XpJamkVQiV7wdTWWFspu30oQZMKLmN2UFou6qRSm+YuASHO7wYUfs9Nw205
 Cnag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Z8JGVPoDk6C0GygHaIvieM1VYWj30R2VXfC11nFdH/c=;
 b=gD34azYsUimAfeVQW3UbUPRg1SGz4qnd7nUuJtY23TiOF7UTjtlJIRglbNWnMvGGYh
 7Auv/AZw1gBI/9/Tp67gsPTHsVdH8ymuKcLohC+T0BKGCF46IDFgSOIYuh4AbL9LbWlN
 quve/U9fmsUbKiQVuytgkr9ZJNgvjNh4JV5O5ztNq+WWPfZROknWZI9LnU74NOWV+5Wm
 56G5gfLKDjoqQ1H+e7fS1jmx+mGOCTCsgXNkoxgRzSOY0lYiwTUjB8o1Lsa5OfwvkADM
 gM7Ro4YWthYwzVwQWtaFsyJt90w5R/VwO1KcBn08c9hYpdUmrtuQmrBJr6QZw5YdTqAl
 SnSg==
X-Gm-Message-State: AOAM5338jSGBd/H56LRG+Ooq7PvTjKLSAl2NDVlVwjZpcUCe1+ZJSnfx
 aVXFxvJegfarxvyB6FIlj6k=
X-Google-Smtp-Source: ABdhPJx6YgqCo+rd/vRYhoFamNZsdAUgT1FFDjdBhOrdqiCf7wB8XwEpPQLZ4P2cN29po6xzSh11LA==
X-Received: by 2002:a63:907:: with SMTP id 7mr4195885pgj.96.1613658732794;
 Thu, 18 Feb 2021 06:32:12 -0800 (PST)
Received: from rayare.domain.name ([106.51.141.71])
 by smtp.googlemail.com with ESMTPSA id a5sm5985919pgh.15.2021.02.18.06.32.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 06:32:12 -0800 (PST)
From: chakravarthikulkarni <chakravarthikulkarni2021@gmail.com>
To: 
Subject: [PATCH] Staging: comedi: Replaced strlcpy to strscpy
Date: Thu, 18 Feb 2021 20:01:49 +0530
Message-Id: <20210218143152.3957-1-chakravarthikulkarni2021@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Xin Tan <tanxin.ctf@gmail.com>,
 Michel Lespinasse <walken@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 B K Karthik <bkkarthik@pesu.pes.edu>, linux-kernel@vger.kernel.org,
 Daniel Jordan <daniel.m.jordan@oracle.com>, Ian Abbott <abbotti@mev.co.uk>,
 Al Viro <viro@zeniv.linux.org.uk>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 chakravarthikulkarni2021@gmail.com, Dan Carpenter <dan.carpenter@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Warning found by checkpath.pl script.

Signed-off-by: chakravarthikulkarni <chakravarthikulkarni2021@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index 80d74cce2a01..df77b6bf5c64 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -939,8 +939,8 @@ static int do_devinfo_ioctl(struct comedi_device *dev,
 	/* fill devinfo structure */
 	devinfo.version_code = COMEDI_VERSION_CODE;
 	devinfo.n_subdevs = dev->n_subdevices;
-	strlcpy(devinfo.driver_name, dev->driver->driver_name, COMEDI_NAMELEN);
-	strlcpy(devinfo.board_name, dev->board_name, COMEDI_NAMELEN);
+	strscpy(devinfo.driver_name, dev->driver->driver_name, COMEDI_NAMELEN);
+	strscpy(devinfo.board_name, dev->board_name, COMEDI_NAMELEN);
 
 	s = comedi_file_read_subdevice(file);
 	if (s)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
