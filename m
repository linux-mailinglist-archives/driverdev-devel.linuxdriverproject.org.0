Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F36986D3C
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 00:27:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0F5D188367;
	Thu,  8 Aug 2019 22:27:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1J+DEwVKYxDk; Thu,  8 Aug 2019 22:27:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 67EEC8831B;
	Thu,  8 Aug 2019 22:27:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53FA61BF35F
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 22:27:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4B3468743E
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 22:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ORsEwkkkul+o for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 22:27:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f201.google.com (mail-pf1-f201.google.com
 [209.85.210.201])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B4F11855FF
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 22:27:36 +0000 (UTC)
Received: by mail-pf1-f201.google.com with SMTP id x18so59989795pfj.4
 for <devel@driverdev.osuosl.org>; Thu, 08 Aug 2019 15:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=SAgL5jWhKshtX+Ve/3etoFoiXzS3zGjwWIhCQNMQlx8=;
 b=TyQVFXvf/kFQ0bvQ86SWxMEjt4o9KrYaB+Trgezb/Bcgjgn4vD2RJXh/9mMN/R+1g3
 zWjumVbsW1O2SwO93Wvk/2d2HV6gdkTyaYAVxyxE4HDOLaVkN2oUDXmF0WNrUvEdpGWe
 LTLS9MRc/w5cd3uwG/VBZwwv9LOQvSWGwjvCQoHGZ5QyWGilhKZ7vM9KrrUm/+bGwzeg
 YoXbiHjuP3uh8yYk85R08bO6EzqzyUM3ZahO/W1m85nsTtxGqTnaiKrzk5PA9mEWh+Nm
 o+OYx5YirPiUtLnWfU+7rzT/Ff/lPWKk/r2NhGnIycply2w962dtHbE+ogzZVKGMhrxp
 fO0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=SAgL5jWhKshtX+Ve/3etoFoiXzS3zGjwWIhCQNMQlx8=;
 b=Ms9F+MlVmU9bNrlQVQ1JO5YB/5K5Kn23o/bXlPvV2Tde23fOtAn4zVIMGjn7882jA6
 dQj9UZHwD2CPSrNrU+vQLnO0Wvh/9ImSdmU1dpw9vrmqOCKhvdM4npDxANA/z1sQgJTk
 tQYdoba54HIlobAIfL57yDOShpgRi05YsXZ1stR1FSGtcmuT5NhCbALXU/vp1ain8COC
 2mU1TQzdi6UejueqxJI/cLWYZ30vOpMSBKhDQhXKrswczytL746Ebx/TAeXIUIecLtr+
 HhqpAqJUNT4bH5HMpA+2iMU3X7s4k2I/VjCkT2ZGqbQ/AOIZcGsy1BaehInpV3+I8RM9
 N/8w==
X-Gm-Message-State: APjAAAXX6uL6uk/PPs0nks689lAMo5Ya/OHyJ6OGoEGz+Af380C0Gsay
 Tlap47IX1mkKms6bx4pBvhX/L2Clk30=
X-Google-Smtp-Source: APXvYqwu5frW+Wzs28+LrFXoDWWdYZ9T0FrWU2oqJjGiJYltMdSIViaX5d2+U7k19kcFScW35AoYhkkpiOU=
X-Received: by 2002:a65:6904:: with SMTP id s4mr14655909pgq.33.1565303255834; 
 Thu, 08 Aug 2019 15:27:35 -0700 (PDT)
Date: Thu,  8 Aug 2019 15:27:24 -0700
Message-Id: <20190808222727.132744-1-hridya@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH v3 0/2] Add default binderfs devices
From: Hridya Valsaraju <hridya@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
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
Cc: Hridya Valsaraju <hridya@google.com>, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Binderfs was created to help provide private binder devices to
containers in their own IPC namespace. Currently, every time a new binderfs
instance is mounted, its private binder devices need to be created via
IOCTL calls. This patch series eliminates the effort for creating
the default binder devices for each binderfs instance by creating them
automatically.

Hridya Valsaraju (2):
  binder: Add default binder devices through binderfs when configured
  binder: Validate the default binderfs device names.

 drivers/android/binder.c          |  5 +++--
 drivers/android/binder_internal.h |  2 ++
 drivers/android/binderfs.c        | 35 ++++++++++++++++++++++++++++---
 3 files changed, 37 insertions(+), 5 deletions(-)

-- 
2.22.0.770.g0f2c4a37fd-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
