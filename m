Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6328420C099
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 12:15:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 503CA86D33;
	Sat, 27 Jun 2020 10:15:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1gL89pjxqu-3; Sat, 27 Jun 2020 10:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA85686C25;
	Sat, 27 Jun 2020 10:14:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 121351BF405
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 10:14:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0EAA98669A
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 10:14:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bMAQNQpxBeEA for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 10:14:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 63AF588085
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 10:14:57 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id q90so5221005pjh.3
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 03:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b9KMNkmmQm7iNOEAo+yKo68PfctFmXmL46pr240tppU=;
 b=kyVsDf2K4rhzoBKtQ/MfLtQWEgNpxbFaTupzijzbMdiW0J+bKW3pWuCc/oaMw4S+dq
 ytok9Br9LQqNGLCAGQpQGoZQg2VUV+2c1tg91u76Neqw5ba1LaXN9Ow9YCYxd+0LWCE7
 BVKt3ky/GGIrB8rufxK7s93W2PlOcAFO1PyTQe8TbtBdsN0lXxLM/d0gZgXyYQAPJSfO
 TFZTmF2n6quHrPl/1nQl+EN9zm8kk0HbUvnEgUSJ9xK4tJj09hVn7/j8imhgxyM8bsuI
 poJhkqJOK3VdgXWlilaI9HUhR2lGXukP6H+wZ8KrbDG8an8LkdTn4be8dwHOA3sqMa+R
 dAPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b9KMNkmmQm7iNOEAo+yKo68PfctFmXmL46pr240tppU=;
 b=gQTKgXkCSHTeed0bvWBzFnswxzX8Rx3fVKqsYpzE+X5G3lZNAG8yCr6Xrks24SLUCI
 m8JqVR92yu52BDwi4Vg4BJoORgDDoj2Crn37+KdCG4059eEeAIfg5+kceiwAqrUB182C
 BCRRUtQZEFdjQX+c5eFpkopnJYlPKjlRGNOYhXSvuaZRXafFo2nQyfb2bewteIdsXsPF
 EJjEflCY8eoCmBxz6boGrcVkLg4Cs9ozL4YbVYG6ncFcJQ0pgESWLApzTF5HE27QBKvt
 jcKcO6OSg7v0n7WOGdClm+l6oo5nwiZ0Ltby7C31V3exiYMrZJTZyQGPp9btJFvzQ5+g
 BsmA==
X-Gm-Message-State: AOAM533R/Y2v5vCLDhcgf7Lugq50gjNvWoXM/mxXf2NvJvTHYliZ7W2G
 VlDuQNrsvXSKaK2wBiZe+EI6MNikpYI=
X-Google-Smtp-Source: ABdhPJyXNGMLvOxsXFC+SqZaqXW4wdUeNFJbxC5xq3BTdo+Cn44DDPf5R2lxJMNf1L1wK2infBw+cQ==
X-Received: by 2002:a17:90a:db02:: with SMTP id
 g2mr7337653pjv.43.1593252896710; 
 Sat, 27 Jun 2020 03:14:56 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id b8sm4430796pja.54.2020.06.27.03.14.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 03:14:56 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH 0/4] staging: qlge: coding style fix for the qlge driver
Date: Sat, 27 Jun 2020 18:14:43 +0800
Message-Id: <20200627101447.167370-1-coiby.xu@gmail.com>
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
Cc: joe@perches.com, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These patches fix three coding style problems for all files under
drivers/staging/qlge,
    - trailing */ in block comment
    - unnecessary else after return or break
    - pr_err preferred over netdev_err

and a bug about releasing lock.

Coiby Xu (4):
  fix trailing */ in block comment
  fix else after return or break
  fix ql_sem_unlock
  replace pr_err with netdev_err

 drivers/staging/qlge/qlge_dbg.c  | 583 ++++++++++++++++---------------
 drivers/staging/qlge/qlge_main.c |  11 +-
 drivers/staging/qlge/qlge_mpi.c  |  14 +-
 3 files changed, 309 insertions(+), 299 deletions(-)

--
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
