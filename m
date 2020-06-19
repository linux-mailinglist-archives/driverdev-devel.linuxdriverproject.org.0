Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B99EA2007A1
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jun 2020 13:20:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3822887AB1;
	Fri, 19 Jun 2020 11:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iXctn7xR-nCx; Fri, 19 Jun 2020 11:20:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D25687AB7;
	Fri, 19 Jun 2020 11:20:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE3EE1BF5A8
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 11:20:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E4704899A9
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 11:20:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fLcgWPtDUhlh for <devel@linuxdriverproject.org>;
 Fri, 19 Jun 2020 11:20:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3987C8995E
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 11:20:52 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id jz3so3963827pjb.0
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 04:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=82ZpbBZmPoGIYKi4X7qcLJ5HQ4WEhVLHyB6WAT9TAf0=;
 b=Qp8Q9pfVq4nvwh6FnwFgq7Znv4j/DRaBmokxtOX1ZhMXVj5GXEDHQXAEnDUVjx/w1G
 /ozgQc8nEg2xz9P+4Qxi3DHkpFNMhNx68JhdDbLQ/miLZA+aTWjjMblh6VfVuXPWsC+h
 SmV5bfiwmgeDi4O6RkbuKD4Jt323+fmp9EHm6OTQDg/+z2SHoWQwJXPhhzoTN1N9ucj5
 SVSGBOalCNu9G9LxaKkQJFcxF07PBMlmk9RDW+uzZ7/wtyIoRS7eiLewuXrc0l+Wnb2d
 e22z2bRpIqV1S7REW41RP3SVLNg/9AnPqLnZtUARdfStpF8Brz9ZT9MSIVsmH5E1IMaD
 /FqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=82ZpbBZmPoGIYKi4X7qcLJ5HQ4WEhVLHyB6WAT9TAf0=;
 b=Mc1sH/KTuUd+PHaQsDvdkLoHBOHS6d6HBahhEICR7UEkC8JFT9T5h2KoCRGJekUw3E
 HwGAWMaaSfDa60yiD11VwXIC6EUUJ29oEycrMmxBVAGUz/owmpv7HEkeUWLcUV+5ObB0
 rrXNKPbpD02wLBmEX15SflRhSHrUydBbSvy1sdGIHEwGHePmxoYJniDIZknY2mmwOdk9
 83v2MZh1ePjqlyR43c2DHjjI6wxN/lcTWH3OTYsADN5Sd/Z5RLSqasSdfuXCMTukFIob
 tAQ0UzwRaaRKpAwvaBdWxQuuIxistyEEgszhB5r+hOpCBoM7XrnkxcvEBReeomyNLBjE
 tjLg==
X-Gm-Message-State: AOAM5322QlKAof2EpyqT+pcTUic9h4/rsN8iOtfvlJcQnauFTSH0Aicx
 ap2M+1P/BD964yVxKCg5XPA=
X-Google-Smtp-Source: ABdhPJyQKktAbGK2vaOg44HxDtXF1HuPiQA4UzHMXBleJHDMQxcSuLf0QiMtAnnd8U/Ema9XVF+7lg==
X-Received: by 2002:a17:90a:7c48:: with SMTP id
 e8mr2988145pjl.235.1592565651563; 
 Fri, 19 Jun 2020 04:20:51 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.55.41])
 by smtp.googlemail.com with ESMTPSA id d9sm4974293pgg.74.2020.06.19.04.20.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jun 2020 04:20:50 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>
Subject: [PATCH v3 0/6] Enable Greybus Audio codec driver
Date: Fri, 19 Jun 2020 16:50:20 +0530
Message-Id: <cover.1592537217.git.vaibhav.sr@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Vaibhav Agarwal <vaibhav.sr@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The existing GB Audio codec driver is dependent on MSM8994 Audio driver.
During the development stage, this dependency was configured due to
various changes involved in MSM Audio driver to enable addtional codec
card and some of the changes proposed in mainline ASoC framework.
However, these are not the real dependencies and some of them can be
easily removed.

The folowing patch series includes the changes to resolve unnecessary
depedencies and make the codec driver functional with the latest kernel.

Patch 1,2: Incudes jack framework related changes.
Patch 3,4,5: Resolves compilation error observed with the latest kernel and
also provides helper APIs required to allow dynamic addition/removal of
modules.
Patch 6: Finally provides config options and related Makefile changes to
enable GB Codec driver.

Thanks to Alexandre for raising the headsup [1] and motivating me to provide
the necessary changes.

This patchset is intended to resolve the componentization issue only.
And as per the suggestion [2] from Mark, I'll share a separate patch series
aligned to ASoC tree. Once the relevant changes are accepted in snd-soc
framework, I'll share relevant patches to pull GB Audio out of the
staging tree.

[1] https://lore.kernel.org/lkml/20200507212912.599433-1-alexandre.belloni@bootlin.com/
[2] https://lore.kernel.org/alsa-devel/20200612160620.GK5396@sirena.org.uk/

v1:
- Include the changes for the review comments suggested by Dan
- Rebase to latest staging-next

v2:
- Avoid defining unused 'update' pointer
- Fix the missing connect bool value required during mixer_update_power
- Added Reviewed-by tag from Dan
- Rebase to latest staging-next

Vaibhav Agarwal (6):
  staging: greybus: audio: Update snd_jack FW usage as per new APIs
  staging: greybus: audio: Maintain jack list within GB Audio module
  staging: greybus: audio: Resolve compilation errors for GB codec
    module
  staging: greybus: audio: Resolve compilation error in topology parser
  staging: greybus: audio: Add helper APIs for dynamic audio modules
  staging: greybus: audio: Enable GB codec, audio module compilation.

 drivers/staging/greybus/Kconfig          |  14 +-
 drivers/staging/greybus/Makefile         |   6 +-
 drivers/staging/greybus/audio_codec.c    | 178 +++++++++++---------
 drivers/staging/greybus/audio_codec.h    |  12 +-
 drivers/staging/greybus/audio_helper.c   | 197 +++++++++++++++++++++++
 drivers/staging/greybus/audio_helper.h   |  17 ++
 drivers/staging/greybus/audio_module.c   |  15 +-
 drivers/staging/greybus/audio_topology.c | 123 +++++++-------
 8 files changed, 409 insertions(+), 153 deletions(-)
 create mode 100644 drivers/staging/greybus/audio_helper.c
 create mode 100644 drivers/staging/greybus/audio_helper.h


base-commit: 98fe05e21a6e0ca242e974650ed58b64813cb2dc
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
