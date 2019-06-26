Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9379C56289
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:45:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD527867C0;
	Wed, 26 Jun 2019 06:45:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KXoZQ-sNM6Qh; Wed, 26 Jun 2019 06:45:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1CCF881FAA;
	Wed, 26 Jun 2019 06:45:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C22901BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:45:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BF6D985FFD
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:45:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qjiaP8yNd0Zm for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:45:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9EF3285FEB
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:45:02 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id g4so866659plb.5
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZaPptmReQuzo4siTdAbVNE+klhm52Cm2tM2YAZ7O52s=;
 b=SsI+aRda2h/9Mes0YDcV7JVbiOJgLvzJosl3nMcYzStKWK7BIWfAzsQrqzpynctRvk
 wPZ/EdTGMs/+NVFAbizHN4FEZd9aMWvPZ/Md6fW/gKRsSw+fWk+Tkfg43yQZoSdm7av0
 7pZzDqoZazDu/bxcjTJ7094qE0ebgXBIy0XBCQ0NzI0OIjFzIHMUu9XvJEdmexeMPHLJ
 ORVHpHSle9a4DOgAppREGc66WVi0KxzPiJj2jIBEYyFI13DpATxT2Z1iaKhbZJ3PA635
 hE2E24PWnsLzyd+STLzVwBCZC8sIlpQUb5dSNF1adYnGQcsPGnl1yXLJ08J/G2fhC0hF
 gGcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZaPptmReQuzo4siTdAbVNE+klhm52Cm2tM2YAZ7O52s=;
 b=rItj82dvGNt381ukQruqkGgxBl6HGuge0ycxI1Ev8kIgyj0f4X2uxgh1EIBr5UfGLQ
 LAmXT+BsfVepF2qPt6YMmnTS9W8vAYTA8l691LOlBuSFxTmpkb0Qout5Lwx2ViAzqQ3J
 OumJm28v0mYJvuDwnN3UROqaT2VQYOfFFwt0HedcEzkJAkppj96ZL/KhKSBB47F+GUa5
 H+9YCEUczdyZ3ARHSPhtXzo3XFulnjT//cNJETke+jdpwRknJCcbPU6t5Tb+ij/chiSX
 d8/Ju5LGoNY5Y+5KnU/KQwjYaib8sqgRzb2FkBQuQjwUw3zZlMr5kEjMN+HlVzHh+Bwp
 9K/w==
X-Gm-Message-State: APjAAAVubdKlGDxeyLXNrk6BKZNeJzNneonRYuJ15+wjQ97GVVDT9aq3
 Vi/7X+yPVIYNTMfZ8tlyov8=
X-Google-Smtp-Source: APXvYqwiIk+6bkJjgOnNTjcJ7DXQLqws0hwPhj1sYHi8ZlHcXWKX0YSttzea+pxUDC/xPYl1JZfcbw==
X-Received: by 2002:a17:902:24c:: with SMTP id 70mr3526708plc.2.1561531502380; 
 Tue, 25 Jun 2019 23:45:02 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id m6sm2378063pjl.18.2019.06.25.23.44.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:45:01 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org
Subject: [PATCH] staging: greybus: tools: Remove function log_csv_error()
Date: Wed, 26 Jun 2019 12:14:50 +0530
Message-Id: <20190626064450.3062-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unused function log_csv_error.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/greybus/tools/loopback_test.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index 2fa88092514d..cebc1d90a180 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -414,12 +414,6 @@ static int get_results(struct loopback_test *t)
 	return 0;
 }
 
-void log_csv_error(int len, int err)
-{
-	fprintf(stderr, "unable to write %d bytes to csv %s\n", len,
-		strerror(err));
-}
-
 int format_output(struct loopback_test *t,
 		  struct loopback_results *r,
 		  const char *dev_name,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
