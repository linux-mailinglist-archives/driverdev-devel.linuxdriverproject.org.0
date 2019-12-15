Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4194E11FA58
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Dec 2019 19:10:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A0DCE85F79;
	Sun, 15 Dec 2019 18:10:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NXcJrP8ZzuJQ; Sun, 15 Dec 2019 18:10:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 43AAF85F69;
	Sun, 15 Dec 2019 18:09:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4977D1BF59D
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:09:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 43E53865C4
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:09:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FZNELGQ01Dgi for <devel@linuxdriverproject.org>;
 Sun, 15 Dec 2019 18:09:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5577386505
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 18:09:29 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id e10so4231371ljj.6
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 10:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6BwnLgIw1O6Pl9DGM8GPZ2MRa8LW0r8gaeFDwLz4cXY=;
 b=Bipom6FUC0WO3TCqvzVyO12ZkoPXYR/rXIPD3qGKXxWhqDR3zF/bPgqWf5ivb0Ivdy
 fUjjMP9/DSFCZRptRknJoupOgk+MpqJYJK9bl7Kxc/+h78uhAiPS9wctOZBk+uW75su8
 WwPUXrh4VI9NKsRn5zm5lA7yILGTNtWQV7d0IudazRL6qZU1rqocy7TKwwpa2Fa3ezO4
 Dk+iPMAwhXuAGQvWzI3pa3iJKHKp5yKAZWlcbfbk+g8Axk/843n7tK5MsC42mshuoob9
 j/s7mD8XMIyOXNufpQ77/lzWcFsC2T3crt7Fk/DG60XN113q8pixbjtlo+7hV+sUoE8J
 On8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6BwnLgIw1O6Pl9DGM8GPZ2MRa8LW0r8gaeFDwLz4cXY=;
 b=sawBHlF/f88L1DpXfQM5Od2feq+p/rWpqdEvHGCWsCBt4Ff/tb/NvB9xfi+Rjm9p3Z
 iJcpOB8KAOT/UusKFl9DdrcutaLRz8cRue+C5Sk4OtX0BdMj9SqvlxT2NvDsuvM7Z9pl
 zrFHKKJTcOS5G+xg3uOCo7+IFIr9vZbduyR6hm4wWXAGGPsLTV6Uz+GVfnhF42Egy2Ob
 n0jonpSJDRMTky+3uSh1RTmkCZ9vKBbQBwBQ5fMOSFvN9QkeyPDdkzP+yYFUBMoB0YYa
 IIGsFoD4nGhqWFnPAHl4rL2Ua0gkBnm9dkUpq1KccJj81bpNfLfCq4WkSMjWlV5fW8N5
 xaAA==
X-Gm-Message-State: APjAAAWlvEkb5RbEIK4sCwL9EPZuXKBBYFyS6DcAidwmD7msdXVcGN4a
 aR3Q1CBfblT03CS2YdG21No=
X-Google-Smtp-Source: APXvYqzBE614d51TKdCJodABHNuKxNyNlbBjrp69WJZ5wESzrJnGB5fpNG1iDS6jv04Zq0cO+bASSg==
X-Received: by 2002:a2e:99cd:: with SMTP id l13mr16798134ljj.243.1576433367539; 
 Sun, 15 Dec 2019 10:09:27 -0800 (PST)
Received: from localhost.localdomain (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.gmail.com with ESMTPSA id t27sm8871875ljd.26.2019.12.15.10.09.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 10:09:26 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>
Subject: [PATCH v1 0/3] Tegra VDE: Minor code clean up
Date: Sun, 15 Dec 2019 21:07:49 +0300
Message-Id: <20191215180752.5408-1-digetx@gmail.com>
X-Mailer: git-send-email 2.24.0
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
Cc: linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

This small series just makes a minor clean up of the driver's code,
addressing COMPILE_TEST build problem that was reported sometime ago.

Dmitry Osipenko (3):
  media: staging: tegra-vde: Select IOVA unconditionally in Kconfig
  media: staging: tegra-vde: Sort headers alphabetically
  media: staging: tegra-vde: Use __maybe_unused attribute instead of
    ifdef

 drivers/staging/media/tegra-vde/Kconfig | 2 +-
 drivers/staging/media/tegra-vde/vde.c   | 6 ++----
 drivers/staging/media/tegra-vde/vde.h   | 2 +-
 3 files changed, 4 insertions(+), 6 deletions(-)

-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
