Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B046C219DBF
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jul 2020 12:28:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B4F486141;
	Thu,  9 Jul 2020 10:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id infL5YTqm2u0; Thu,  9 Jul 2020 10:27:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 36ABD85EA4;
	Thu,  9 Jul 2020 10:27:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 717F11BF37C
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 10:27:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6E1BD897D0
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 10:27:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LWo80fXYhco3 for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 10:27:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B94E9896F8
 for <devel@driverdev.osuosl.org>; Thu,  9 Jul 2020 10:27:39 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id a14so846523pfi.2
 for <devel@driverdev.osuosl.org>; Thu, 09 Jul 2020 03:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZjSXZR3FNSufIrtXfZE7yigmBZ+MTS6USGX6kAflGaU=;
 b=Tm2IeYdzXRc+tutG2Ki56wiDAtLZV8yDvJmsZOObSCNuCgS9fVGa4pvvZg1aTH7jiy
 E8HI1sb8VB5DoZ0plJwJCUzLyIa7TZFaPh1fNMMZ/yMY6Spq7OLSYkkKY4QdGFXCU9XX
 Q5H8Ry7kkVGQN2QKG98tKZ9i4kRcdt32sENcKDRyQnRhsiGXqshCyn2j6DtRmmZBnM+g
 vNsN8YIYyGSzC10FYKieEkGcAcCcNVstPu1tHxdY2I+lZ9UeuldFyBcarI6jn+eED47c
 r3eu1c5KwE22S0xVNFb7tSoZMycsBRXo3fFx+BuGPqeWKQjp/ky27NtkN6JY6m8DS7bY
 U5xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZjSXZR3FNSufIrtXfZE7yigmBZ+MTS6USGX6kAflGaU=;
 b=ulF4cF1xj6v6lQPKbgCq2AtcNkZYGaZNC1B3c7H77lqgjv/C0M/DUJQGirIXvPKI1u
 kKyB4AtMjOv8bpTZ8lQuwXYaizogCoZsBZZAp+pEUtZpMMyS9yJFhCtgdePaqZ3LopBI
 nFGZCOeOQRaEn/rQDsWXjJrYXzX+kfN0/W+kZVhKay3VvoUFva2Xs+NnTY675Gel8vRb
 OybH8dCA0kwWHlhEZV82mwiRLJWN75BgvG0jHCCVUQ5AYL0NDdXB8UnZ7AOjIWEVdh1a
 i1tkF4pthmyqVM4cF/cFyuZ6YDLCBrXooNhIjJAnKrSJSmSlxwlFYPf4wcmTEWfpvErx
 FxHg==
X-Gm-Message-State: AOAM530jNft8mi09HxMj176JecTHFXBJ85q2iY8Usj79fbCK+8hu1tP2
 vTUl/spucoUWq75nUPPuFCs=
X-Google-Smtp-Source: ABdhPJwOttN/c6ZOvhQNZVKcz/AmmxLzPBN6yDPOrriaV1tLe9zVPrkbWS1mM0b5vE9md3mAamgjRQ==
X-Received: by 2002:a63:c50a:: with SMTP id f10mr54749296pgd.167.1594290459164; 
 Thu, 09 Jul 2020 03:27:39 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.54.40])
 by smtp.googlemail.com with ESMTPSA id y8sm2125163pju.49.2020.07.09.03.27.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 Jul 2020 03:27:38 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>
Subject: [PATCH v4 0/7] Enable Greybus Audio codec driver
Date: Thu,  9 Jul 2020 15:57:16 +0530
Message-Id: <cover.1594290158.git.vaibhav.sr@gmail.com>
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

v1:
- Include the changes for the review comments suggested by Dan
- Rebase to latest staging-next

v2:
- Avoid defining unused 'update' pointer
- Fix the missing connect bool value required during mixer_update_power
- Added Reviewed-by tag from Dan
- Rebase to latest staging-next

v3:
- Fix the warnings reported by lkp[3]
- Rebase to latest staging-next

[1] https://lore.kernel.org/lkml/20200507212912.599433-1-alexandre.belloni@bootlin.com/
[2] https://lore.kernel.org/alsa-devel/20200612160620.GK5396@sirena.org.uk/
[3] https://lore.kernel.org/lkml/202006200150.mNVj1Duq%25lkp@intel.com/

Vaibhav Agarwal (7):
  staging: greybus: audio: Update snd_jack FW usage as per new APIs
  staging: greybus: audio: Maintain jack list within GB Audio module
  staging: greybus: audio: Resolve compilation errors for GB codec
    module
  staging: greybus: audio: Resolve compilation error in topology parser
  staging: greybus: audio: Add helper APIs for dynamic audio modules
  staging: greybus: audio: Enable GB codec, audio module compilation.
  drivers: staging: audio: Fix the missing header file for helper file

 drivers/staging/greybus/Kconfig          |  14 +-
 drivers/staging/greybus/Makefile         |   6 +-
 drivers/staging/greybus/audio_codec.c    | 178 +++++++++++---------
 drivers/staging/greybus/audio_codec.h    |  12 +-
 drivers/staging/greybus/audio_helper.c   | 198 +++++++++++++++++++++++
 drivers/staging/greybus/audio_helper.h   |  17 ++
 drivers/staging/greybus/audio_module.c   |  15 +-
 drivers/staging/greybus/audio_topology.c | 131 +++++++--------
 8 files changed, 414 insertions(+), 157 deletions(-)
 create mode 100644 drivers/staging/greybus/audio_helper.c
 create mode 100644 drivers/staging/greybus/audio_helper.h


base-commit: 14442181d20490945f341644bb8257e334b01447
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
