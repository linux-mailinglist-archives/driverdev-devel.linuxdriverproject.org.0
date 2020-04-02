Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD55919BB53
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 07:36:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 768122048F;
	Thu,  2 Apr 2020 05:36:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UntL2GxHBcBX; Thu,  2 Apr 2020 05:36:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CCF562043C;
	Thu,  2 Apr 2020 05:36:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4244B1BF863
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 05:36:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3EFA986E92
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 05:36:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J0JvgekK3f1V for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 05:36:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3EDCE86D6B
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 05:36:22 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id r14so1208642pfl.12
 for <devel@driverdev.osuosl.org>; Wed, 01 Apr 2020 22:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Do+aDibkJ+9Nk2xPpC10tUF5bA+dXnOz/2cqO1MNak8=;
 b=knbC2o+pyAfJPn10/x4p+jSPwqEdUM5vaqMNWU9Le4dYwA55h3tFjJus5wlFnZGXoZ
 iGGn+aIDrle8DsEd44/Qdz4R386IugeGaclIfFzf2HFdt+Y6thv2a2X4/Jfx5eiga5QP
 0UbSPz0O/CuSiDzcPtGx+OWOkQFOq3AgKX3CGZqnrYwDRJYt2KjJNqFkKOcTFUwmxXCt
 7roz2uoNXTY7WGYf7DXRHsW7TIUMgljMou2mWXCbl6lmu9uMIwnkJaC7mSa6qKqo8wWz
 E8zCOCMXjx+vPaKhSL8kfPtiu7pYDIFMQOwdGG5CshQD5A8QqNoFRIUFmnxgBHgbHmNg
 aQ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Do+aDibkJ+9Nk2xPpC10tUF5bA+dXnOz/2cqO1MNak8=;
 b=TIJrYgg6Zz7yQ9AWLZz9by0eBkjWVimZ3ClSh5Q0mIWCf54A6Ha+zaez1uGwdVD4P3
 2BC5SRy1doUv+HcJHilfOs1oviOV9YB1vxrkiE0pEdaahe8uMT8aXpjXdFgoXQ8Wg4V8
 aqwBm+S7CejxF7p0cA0h0wp4IgeUeLJuVZEXDp5+eEYyWiEMAvValC0wBeuJl1TVF5dM
 q8P1TB0Cyb/Sqbnzm3E0sDxoF6LbF5ipUcy9aKXIk3JosGbZKLHzj+jD3op7M1hvt0SC
 HCtfrB+TrIBvT9rZc8GnRHH07Flab+XDT+O6rXs4xr2udD3bhcjQimr+/PgHvEVniYY8
 nH2g==
X-Gm-Message-State: AGi0PuZi0tifYzWPzI6sBUSC2DDnRiOq7/gIlvm1yySOgReQp3SMyBuA
 2DoieU54oIW9CsPTb4ViXfA=
X-Google-Smtp-Source: APiQypJ7XgKegTqXz2SvnZioxcFnmfMvDfpsG1M7dXD4R47yFprVfkXESUJeU0R4FYl3Ew48HDoU6Q==
X-Received: by 2002:a63:e210:: with SMTP id q16mr1785491pgh.26.1585805781730; 
 Wed, 01 Apr 2020 22:36:21 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id y28sm2863136pfp.128.2020.04.01.22.36.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Apr 2020 22:36:21 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>, Ben Chan <benchan@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] staging: gasket: Fix style issues in apex_driver.c
Date: Wed,  1 Apr 2020 22:36:15 -0700
Message-Id: <20200402053617.826678-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cache long enums as local variables to fit under 80 characters. Fix a
comment character limit warning. The goal is to comply with the kernel
style guide. All style issues were identified by checkpatch.

John B. Wyatt IV (2):
  staging: gasket: Fix 4 over 80 char warnings
  staging: gasket: Fix comment 75 character limit warning

 drivers/staging/gasket/apex_driver.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
