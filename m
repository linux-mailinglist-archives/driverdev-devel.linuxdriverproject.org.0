Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 500265A1A0
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 19:01:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7096022846;
	Fri, 28 Jun 2019 17:01:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YxhkoIMscaqM; Fri, 28 Jun 2019 17:01:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CD55E2043F;
	Fri, 28 Jun 2019 17:01:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A8A741BF36D
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 17:01:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A5D61203EA
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 17:01:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TUl5IERzJy0Z for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 17:01:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 5ADD6203E9
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 17:01:18 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id q4so1368993pgj.8
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=wch5MM+H0l/uILtdINMEnnNWEA6lOEztjug6TCu857U=;
 b=FQY+R2DnA3Qf3YvRtJPhTAvekIg9gvZOFGlpJExkD5LxnLSrXBzEuxr01irHMHsEfH
 gi07+jeixj+LHqVKz+xjfHl47lq41f5YWph/T3yUwal4Xml8yNhUt0d0rVeVtedrHS6k
 qNB5XDjFFZxw/veugJ/wdJW3i65YVvhwn0auowed2KkDPGqQrnhE16P5NJ2qFKgSsWR7
 GNBwAiqheof/QJf+Ezyj5b5nqsHMsw2KHCktTosyELCZJT41T/xXDav6ZOTj8Jb7OMAU
 8oMACAFrLCMAIrMMFJCAMVON6f+NVFmowhCdi59kZ9qNCnGlGkINQWXymc1a3kAjJaPg
 ikFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=wch5MM+H0l/uILtdINMEnnNWEA6lOEztjug6TCu857U=;
 b=EnhZjiC5FCx03EC6U1giqKK5fHDjdNqilj5DGy0uKDKa6Z4F/aPMZe93Cw4J9nvsir
 8CwFSZ6j5R+83ORSj24XW6TbRe+i7BW0R+7EKoWFuQCh9cdgj0p1HOjNge9ktBP2OnU4
 j5UjLduBZvM2yk3e1M5ap+x8+PJCRarRWBpzQCfYqwqXw3fGtprsrWJWI4wGh6+hEvfb
 DmaB84ovO4PXlDkNF/TMaPuoKGNvRUT9BE0c7c90rxslH7EjG/jezYYFykykgJ514CJE
 tE0znFsZO0WS8DJdNYxawMNTOmvpqVjrFnCU87I8jXE44VlQOpqgz6GkV7HGn19eR4VA
 +RgQ==
X-Gm-Message-State: APjAAAU2SLMfIHcVq75ykCwc38pxq7vep0QuEloWBBXVnm7H6dG6CI5g
 IRvJ+vJ89taKYkLee29+JsI=
X-Google-Smtp-Source: APXvYqxFlvZtf4xwVnsKaTpIGlUpTSe66C+iBAc4DMzGG/Evt4ErEBLnBIt7TO2IRbDP5ugqx5opMg==
X-Received: by 2002:a63:c607:: with SMTP id w7mr10125845pgg.379.1561741277725; 
 Fri, 28 Jun 2019 10:01:17 -0700 (PDT)
Received: from localhost.localdomain ([183.83.73.90])
 by smtp.gmail.com with ESMTPSA id 30sm2971033pjk.17.2019.06.28.10.01.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 10:01:17 -0700 (PDT)
From: Harsh Jain <harshjain32@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, harshjain32@gmail.com,
 harshjain.prof@gmail.com
Subject: [PATCH 0/2] staging:kpc2000:Fix integer as null pointer warning
Date: Fri, 28 Jun 2019 22:30:44 +0530
Message-Id: <20190628170046.3219-1-harshjain32@gmail.com>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: root <harshjain32@gmail.com>

It fixes sparse warning in kpc2000 driver.

Harsh Jain (2):
  staging:kpc2000:Fix symbol not declared warning
  staging:kpc2000:Fix integer as null pointer warning

 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
