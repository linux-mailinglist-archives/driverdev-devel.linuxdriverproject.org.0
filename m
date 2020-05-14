Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C47641D3FA2
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 23:09:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F53688C32;
	Thu, 14 May 2020 21:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aikj-ykyl6Eo; Thu, 14 May 2020 21:09:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 69AC488C06;
	Thu, 14 May 2020 21:09:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CDA571BF31A
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 21:09:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CA8EC89764
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 21:09:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FpUAkr2SDD1A for <devel@linuxdriverproject.org>;
 Thu, 14 May 2020 21:09:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0395289562
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 21:09:40 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id g1so5071909ljk.7
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 14:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FmoIa0AdudNDzlTpZ0uiZDtdJ4Pgj1/DLge9mABr+4w=;
 b=m2eydK5TfbDdgIiR1qoaJyWjU/1xapfTY6oGjlexVUmxSSabO9gqLc9WTMyzQJpITB
 fWA7uSBy+kRiov7VdhjnIW/G7XIqLPg8vnRdwu8Ek6AAJcy1dBZAVNUIze8IwrxyMUx/
 Z4H0/SHYEfA6t9h4V0l+x56uowOHydj3fNFi8H+ysFas5VSU0QKAx3TjU+c5NkLpz3qj
 4nuAFNKkmzLiBBFrtsi4WRfpKI0w25q5MWlbx72LOqGAM90A1UMtfkUE/jE0H6jNkhEU
 nMEEL50QIXSspUMDfIHZnaf4KySCpup3aAZXd4Sfkt+Yd34s+4IoW5dW82APBhehs77j
 6Gjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FmoIa0AdudNDzlTpZ0uiZDtdJ4Pgj1/DLge9mABr+4w=;
 b=BWDLyiGRfUHbG9HA4pwircJkz/Ip7FoSofycb9aaHLbk+ccVyNn3bzhLE9fSCY1Iqg
 NiLcZI3QMpAnUaQj4jdyWxoC+0C26ZyO3ct/EbPz4qFKtPtiPrfW9rn/5/1tC3P7Zxqn
 MgkKDSF5u4B7jb6Nfg6MSBEGR5Xlc45agRbVnQT6G5NMxbfSu4gCCJZWhZ+qXIDB566y
 s9qr+HHkLvz8IQgBA+MpexX2rJGW/dYVdagbmSF+KiF5kAX4NmpHKmKzW+VfbAm3f/Ed
 1mVifEcCLeTfGgYtZiBqSWHUgKtGoLit/DFhKBpCjdiyDnibIuNjGETN6208ROaEOefV
 Jyqw==
X-Gm-Message-State: AOAM530I4kF2XUybqZlXv5PlpFRoOpOGOhSZAxLmLpDqU1yKmYXGB+L8
 upfT+z7aeZFiIVEqdPDOkQ8=
X-Google-Smtp-Source: ABdhPJw3+tg4ZIkP0KD8isuSzsxGILoMKI+AxadyW6yCzc0e0wn6qyD7t0c7jWNSG1OzLhiEzNd/Bg==
X-Received: by 2002:a2e:6c08:: with SMTP id h8mr134750ljc.48.1589490578217;
 Thu, 14 May 2020 14:09:38 -0700 (PDT)
Received: from localhost.localdomain (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.gmail.com with ESMTPSA id g3sm45215ljk.27.2020.05.14.14.09.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 14:09:37 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: [PATCH v1 1/4] media: staging: tegra-vde: Balance runtime PM
 use-count on resume failure
Date: Fri, 15 May 2020 00:08:44 +0300
Message-Id: <20200514210847.9269-2-digetx@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200514210847.9269-1-digetx@gmail.com>
References: <20200514210847.9269-1-digetx@gmail.com>
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

The RPM's use-count is getting incremented regardless of
pm_runtime_get_sync() success or fail. It's up to a driver how to
handle the failed RPM. In the case of VDE driver, the RPM's use-count
should be restored if runtime-resume fails.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/staging/media/tegra-vde/vde.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/tegra-vde/vde.c b/drivers/staging/media/tegra-vde/vde.c
index d3e63512a765..803e5dda4bb5 100644
--- a/drivers/staging/media/tegra-vde/vde.c
+++ b/drivers/staging/media/tegra-vde/vde.c
@@ -776,8 +776,10 @@ static int tegra_vde_ioctl_decode_h264(struct tegra_vde *vde,
 		goto release_dpb_frames;
 
 	ret = pm_runtime_get_sync(dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_noidle(dev);
 		goto unlock;
+	}
 
 	/*
 	 * We rely on the VDE registers reset value, otherwise VDE
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
