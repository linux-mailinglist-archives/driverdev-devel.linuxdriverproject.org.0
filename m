Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7757A1F5A56
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jun 2020 19:29:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0185224F43;
	Wed, 10 Jun 2020 17:29:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eFYlQ3cOG79i; Wed, 10 Jun 2020 17:29:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1FB5120368;
	Wed, 10 Jun 2020 17:29:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8F1D11BF5A9
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 17:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8BEB287F40
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 17:29:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n9bkCzmy4hb6 for <devel@linuxdriverproject.org>;
 Wed, 10 Jun 2020 17:29:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C752485CE1
 for <devel@driverdev.osuosl.org>; Wed, 10 Jun 2020 17:29:05 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id h185so1397932pfg.2
 for <devel@driverdev.osuosl.org>; Wed, 10 Jun 2020 10:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HHuDWwcD46GsqYCnpIwOKdwPxiPdPtfeZ6O9l504PHI=;
 b=NTEeLvTsB773KwO3u1uhA/EelDoidUC0VKkIcpcQrmyOC1w2cR+PIIEC4cgymCPIkB
 D7ur/mAjSTtCMZ3UB0AE2tienoebk9nml/E03FpD6lYsBQKZTzlGQ9g+BdiwoRMuIonu
 QFwa59Nm9PBiqllyRfTrHkzVP/8XP4NNrFCHO5ITW06ZQkdN/NkbZLlmgIFVxpEZNqQY
 r4JLz+eY0WDzRRYsDY5I8QeKDlCnE/MpxuJaxVySqLG14lzlfNJFSO5LSHNThAjDTiCn
 RAA1LV/LDeOP4b3VFxsMcItY2ijjdh9uCOMQazHSIc9XQRmCswJLZ62R1Bj8LwnJsY8d
 tEMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HHuDWwcD46GsqYCnpIwOKdwPxiPdPtfeZ6O9l504PHI=;
 b=fcYDHeLFrUMa6Bl0+pEonLgi1Hkq2j3PHqWnlHRJLaxBaW/mm4duXeBNrha+rJNCrf
 E4H0FyCZOhTj7sjvMPpSert3WfFKa07nHi9yulQYqneeFcQw20Fa4AgQ8XtHfIXlUlYC
 tYIPMH40K6qmG8TTXoFPE6gvX2lgSWE+dM/Fkz5BHvk3wlpor8mt6BgyAcvxj+LNsU09
 /Irgm/Uh6Ku+WOOlAt0ce3/TZYofOzZP+jBQ14ysYA7kuCMLUWWe2/7VdnTzelc1Frsl
 PjxLoKgFXsj9BWeKWjXuh/t/+T/cNuTmNg+a7QZVeMOiVsyB92DFpZMLR2Kf6ofwhM26
 3x7A==
X-Gm-Message-State: AOAM531G69mF2gK1x72/RMA+fu4UYFmrP9rtKb8hToIYBKE73DN2u/Hq
 QRXU9DkmHFqJv67TZlH/7ZY=
X-Google-Smtp-Source: ABdhPJxFC3aE1JPqfxE9yyHQOhKXlvby4i0EuVHpuVNTvbzQGF1PAL+ca8iz/SWsLtCNhFD4L8Xpww==
X-Received: by 2002:a65:6550:: with SMTP id a16mr3411032pgw.183.1591810145159; 
 Wed, 10 Jun 2020 10:29:05 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.54.40])
 by smtp.googlemail.com with ESMTPSA id l83sm490470pfd.150.2020.06.10.10.28.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jun 2020 10:29:04 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>
Subject: [PATCH v2 0/6] Enable Greybus Audio codec driver
Date: Wed, 10 Jun 2020 22:58:24 +0530
Message-Id: <cover.1591802243.git.vaibhav.sr@gmail.com>
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
Cc: devel@driverdev.osuosl.org, alsa-devel@alsa-project.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org
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

[1] https://lore.kernel.org/lkml/20200507212912.599433-1-alexandre.belloni@bootlin.com/

Changes from v1
- Include the changes for the review comments suggested by Dan
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
 drivers/staging/greybus/audio_topology.c | 128 +++++++--------
 8 files changed, 412 insertions(+), 155 deletions(-)
 create mode 100644 drivers/staging/greybus/audio_helper.c
 create mode 100644 drivers/staging/greybus/audio_helper.h


base-commit: af7b4801030c07637840191c69eb666917e4135d
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
