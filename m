Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F201EB4FF
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jun 2020 07:21:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 51D3187EBB;
	Tue,  2 Jun 2020 05:21:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H-7qY0SYyN4f; Tue,  2 Jun 2020 05:21:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C01B987A39;
	Tue,  2 Jun 2020 05:21:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B9311BF34A
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 05:21:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 980E287A14
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 05:21:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BfXUORjjiSdk for <devel@linuxdriverproject.org>;
 Tue,  2 Jun 2020 05:21:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C2F2287A00
 for <devel@driverdev.osuosl.org>; Tue,  2 Jun 2020 05:21:36 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id v2so4516673pfv.7
 for <devel@driverdev.osuosl.org>; Mon, 01 Jun 2020 22:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Kdz9W6x1z78WJYfw94insK8Fd4+Xm8e4ZRVXoKUzvSY=;
 b=Yx8Rvc6H/3eq0UMPJ+mBWxx2n3X10X8TZ2xCt3ufzj/oMJA7EYddKDNEN+xrIbdNa0
 Goz1ThwnFqW6BZ0cbDh6AxaRW2U/x7/gxlvhbuaLQauNhxS8qNACiIEO5vHv7atuJVoL
 O3DrPnA/jIz+lZhpwzYhsApqbKTm9HdcGjpMmMU8MkLYvOug4bJn+YbIzUOTWf9kJFa8
 wjvz2P6TmTF+3qSnePRd3T7ua3QpMtqPXM+4+J714n7EsgcAQ6Gj5jYSRlkEC9OgHqQ9
 zBm/55JpUSdAK0I7I70drBpztTLmlOgYROSDj1DoXLuIJMRb1AWI9o6Lu6cb63yBnFZY
 g2bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Kdz9W6x1z78WJYfw94insK8Fd4+Xm8e4ZRVXoKUzvSY=;
 b=VasGaY9fPsAoQ4HSxxrLJbbQmht0T/O1pxq6O3auYzF1NRMxt26vBCsNN14cFYaAqS
 J3StHfXe4CvG5s/9X4xQtZO54hKBdyKJTg6tGI3l3RThiwGIePBrMoSIgI+KgtpalmKr
 GwuQuSWkfoJ9Cmn5iV9mS2yE0ClT6OKTX/0C7fPC6kKG+o1ZxxIlSYVTiw5zSGcehVM3
 abIDVA2RtdSF4TyC+/nO6qZd0HLRBs0yFz0cnNfmcvKImSQStCw2RGcBuMpnGZGxffCA
 QzfZAiTyOVd9789VzPw0V0TfPe+uOwF50ylAMi79CRCtBL7YW6F6xEgbRANLceE7CKdO
 Alng==
X-Gm-Message-State: AOAM530+M5F5qAUFrw+mE8WtzDXJSEuLkU0mimnN0jyqQznnyEy0P004
 b9QikI0c8qX1GnKwNd0maUg=
X-Google-Smtp-Source: ABdhPJzyy+fKy3+80OPPYMUOh8KsX3+BuN5V6lT7FHP1F8AKIMrKUKcYMuv0+jcSMkuxde+7Z2c9SQ==
X-Received: by 2002:a63:9319:: with SMTP id b25mr23287242pge.374.1591075296239; 
 Mon, 01 Jun 2020 22:21:36 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.55.41])
 by smtp.googlemail.com with ESMTPSA id f18sm1004764pga.75.2020.06.01.22.21.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jun 2020 22:21:35 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>
Subject: [RESEND PATCH v1 0/6] Enable Greybus Audio codec driver
Date: Tue,  2 Jun 2020 10:51:09 +0530
Message-Id: <cover.1591040859.git.vaibhav.sr@gmail.com>
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

[REQUEST]

This patch series intends to "Enable Greybus Audio codec driver"
existing in the staging tree. I have shared the original patch series with
Greybus-Dev mailing list and as per the suggestion from Alexandre, I'm
also interested to push Greybus Audio to sound soc tree. Thus, now I'm
resending it to ASoc maintainers for review.

Following is the top level SW design for GB Codec driver and GB Audio
modules.

                                            +--------------+
                            +-------------->+GBA Module 1  |
                            |               +--------------+
    +-----------------------+
    |            |          |
    |            | Greybus  |               +--------------+
    | SND SOC    | Audio    +-------------->+GBA Module 2  |
    | Framework  | Codec    |               +--------------+
    |            | Driver   |
    |            |          |
    +-----------------------+               +--------------+
                            +-------------->+GBA Module N  |
                                            +--------------+

Patch 5 contains the changes to provide helper APIs to link DAPM DAI widgets
for the module added and remove/free component controls for the module removed
dynamically. Eventually, I propose to extend snd_soc_xxx APIs for this
purpose.

Kindly share your inputs.

[COVER LETTER]

The existing GB Audio codec driver is dependent on MSM8994 Audio driver.
During the development stage, this depdency was configured due to
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
 drivers/staging/greybus/audio_codec.c    | 187 +++++++++++++--------
 drivers/staging/greybus/audio_codec.h    |  12 +-
 drivers/staging/greybus/audio_helper.c   | 197 +++++++++++++++++++++++
 drivers/staging/greybus/audio_helper.h   |  17 ++
 drivers/staging/greybus/audio_module.c   |  20 +--
 drivers/staging/greybus/audio_topology.c | 130 +++++++--------
 8 files changed, 427 insertions(+), 156 deletions(-)
 create mode 100644 drivers/staging/greybus/audio_helper.c
 create mode 100644 drivers/staging/greybus/audio_helper.h


base-commit: ae73e7784871ebe2c43da619b4a1e2c9ff81508d
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
