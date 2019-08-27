Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CD69E5F4
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 12:43:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 040E422668;
	Tue, 27 Aug 2019 10:43:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 60j6pCDNyZJj; Tue, 27 Aug 2019 10:43:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C204621541;
	Tue, 27 Aug 2019 10:43:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DCA731BF3E3
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 10:43:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DA28B20522
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 10:43:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M8vuUntWHoTP for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 10:43:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by silver.osuosl.org (Postfix) with ESMTPS id A139E204FB
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 10:43:21 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id p12so45215523iog.5
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 03:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sjClOQSteKx3LTWXyZm2UxHSv44w/eVm8luVhmJVsLc=;
 b=x30t4cw8Bod4Suf0i3x6+dEcpVZy+FEINp/w28MjgKsyeVq8aqCqiSjpdeXV/thD92
 7aCyofF4mI5y3xQUoZmz13sn8swF3C9l5YT1rRlKYy9G++w5r1mwA/p2BA37Q13bWQHa
 yvpxwuAVKhoCdJauTC/qNPhtO3rLJvEo1VS9VuAsr8zsTkpUC5nXONp58F5ht34h9HxG
 VdsDrCwlrfL2eGj+8XBkX2yqUVZZpft0tCTzYBsESMwGYBeaT/0Dc87tv1p9Paisv3aS
 iNsdTFuLv6SL28OpJ4aBF59SUk8gvI3eIKTqnpx1Tpl1VRWKDmuQAGr3chQ3L2QUXQX3
 86QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sjClOQSteKx3LTWXyZm2UxHSv44w/eVm8luVhmJVsLc=;
 b=rZ9WpoEhxF9GA6+CjDXQcLr7riStseGDjjhFhA47+XcqZARZhwCjnrGvasyIW4mWj+
 AFNWMTGwyPyr8+A50hp6Wn0XfiU4Dw0TLBDLSorCpBu55N7LO68k+9mZuKjU3VJ9UKkC
 txKe6hGV8FhZKHvL+jOZ2DDScdKEuE1a44hn9khQ7S9yuo9LMLAVWeoeBlEYJSv9DYBX
 ZIvtT8Q3ONyYenya/cBPgMvk6+GcWZcjs0nYWOdacGYBL79LnDBu48baZvj0K0zY1bH4
 VnHbTepjMgL6epQIZS4AyTJq01ExQ7PxINykq/tLpfjjPi4nTZaYMdVafxw7Fh7D3HDT
 Jo4Q==
X-Gm-Message-State: APjAAAXQkEEBdpW9aTpep99uF/WMZDZW4bfZiZwGQAWmlDyC7cmWcLBP
 Dlxz8kowJ8+12xvrKSF2w7+QnA==
X-Google-Smtp-Source: APXvYqwx2skeXxsBsHH1/asDzS6jePJzxwp8K/Ce3dr/hTg4mIs0xD9+FHr3B6i3ZaeGES4AHWcFfg==
X-Received: by 2002:a02:6914:: with SMTP id e20mr17833128jac.83.1566902600611; 
 Tue, 27 Aug 2019 03:43:20 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id h9sm14002888ior.9.2019.08.27.03.43.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 27 Aug 2019 03:43:19 -0700 (PDT)
Subject: Re: [greybus-dev] [PATCH 0/9] staging: move greybus core out of
 staging
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org, elder@kernel.org,
 johan@kernel.org
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
From: Alex Elder <elder@linaro.org>
Message-ID: <cfefa25a-9ee5-6011-a41c-ce09dd9608e6@linaro.org>
Date: Tue, 27 Aug 2019 05:43:19 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190825055429.18547-1-gregkh@linuxfoundation.org>
Content-Language: en-US
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/25/19 12:54 AM, Greg Kroah-Hartman wrote:
> The Greybus code has long been "stable" but was living in the
> drivers/staging/ directory to see if there really was going to be
> devices using this protocol over the long-term.  With the success of
> millions of phones with this hardware and code in it, and the recent
> Google Summer of Code project, and a number of of new devices in the
> works from various companies, it is time to finally move this code out
> of staging into the "real" portion of the kernel so that people know
> they can rely on it.
> 
> This series first does a little bit of checkpatch cleanups for some
> basic remaining issues in the greybus files, and then moves the include
> directory, the greybus core code, and the es2 greybus host controller
> driver into drivers/greybus.
> 
> To come after this is the movement of the Documentation entries and a
> number of the module drivers that are stable.

They all look good to me.  (I don't always agree with checkpatch,
but standardization is good.)  Thanks Greg.

Acked-by: Alex Elder <elder@kernel.org>

> Greg Kroah-Hartman (9):
>   staging: greybus: fix up SPDX comment in .h files
>   staging: greybus: remove license "boilerplate"
>   staging: greybus: hd: Fix up some alignment checkpatch issues
>   staging: greybus: manifest: Fix up some alignment checkpatch issues
>   staging: greybus: log: Fix up some alignment checkpatch issues
>   staging: greybus: loopback: Fix up some alignment checkpatch issues
>   staging: greybus: move core include files to include/linux/greybus/
>   staging: greybus: move the greybus core to drivers/greybus
>   staging: greybus: move es2 to drivers/greybus/
> 
>  MAINTAINERS                                   |   3 +
>  drivers/Kconfig                               |   2 +
>  drivers/Makefile                              |   1 +
>  drivers/greybus/Kconfig                       |  32 +++++
>  drivers/greybus/Makefile                      |  26 +++++
>  drivers/greybus/arpc.h                        |  63 ++++++++++
>  drivers/{staging => }/greybus/bundle.c        |   2 +-
>  drivers/{staging => }/greybus/connection.c    |   2 +-
>  drivers/{staging => }/greybus/control.c       |   2 +-
>  drivers/{staging => }/greybus/core.c          |   2 +-
>  drivers/{staging => }/greybus/debugfs.c       |   3 +-
>  drivers/{staging => }/greybus/es2.c           |   3 +-
>  drivers/{staging => }/greybus/greybus_trace.h |   2 +-
>  drivers/{staging => }/greybus/hd.c            |  12 +-
>  drivers/{staging => }/greybus/interface.c     |   2 +-
>  drivers/{staging => }/greybus/manifest.c      |  41 ++++---
>  drivers/{staging => }/greybus/module.c        |   2 +-
>  drivers/{staging => }/greybus/operation.c     |   2 +-
>  drivers/{staging => }/greybus/svc.c           |   3 +-
>  drivers/{staging => }/greybus/svc_watchdog.c  |   2 +-
>  .../Documentation/firmware/authenticate.c     |  46 --------
>  .../greybus/Documentation/firmware/firmware.c |  46 --------
>  drivers/staging/greybus/Kconfig               |  27 -----
>  drivers/staging/greybus/Makefile              |  22 ----
>  drivers/staging/greybus/arche-platform.c      |   2 +-
>  drivers/staging/greybus/arpc.h                | 109 ------------------
>  drivers/staging/greybus/audio_apbridgea.c     |   3 +-
>  drivers/staging/greybus/audio_apbridgea.h     |  26 +----
>  drivers/staging/greybus/audio_codec.h         |   4 +-
>  drivers/staging/greybus/audio_gb.c            |   4 +-
>  drivers/staging/greybus/authentication.c      |   3 +-
>  drivers/staging/greybus/bootrom.c             |   2 +-
>  drivers/staging/greybus/camera.c              |   2 +-
>  drivers/staging/greybus/firmware.h            |   4 +-
>  drivers/staging/greybus/fw-core.c             |   2 +-
>  drivers/staging/greybus/fw-download.c         |   2 +-
>  drivers/staging/greybus/fw-management.c       |   2 +-
>  drivers/staging/greybus/gb-camera.h           |   2 +-
>  drivers/staging/greybus/gbphy.c               |   2 +-
>  drivers/staging/greybus/gbphy.h               |   2 +-
>  drivers/staging/greybus/gpio.c                |   2 +-
>  .../staging/greybus/greybus_authentication.h  |  48 +-------
>  drivers/staging/greybus/greybus_firmware.h    |  48 +-------
>  drivers/staging/greybus/hid.c                 |   3 +-
>  drivers/staging/greybus/i2c.c                 |   2 +-
>  drivers/staging/greybus/light.c               |   4 +-
>  drivers/staging/greybus/log.c                 |   9 +-
>  drivers/staging/greybus/loopback.c            |   9 +-
>  drivers/staging/greybus/power_supply.c        |   3 +-
>  drivers/staging/greybus/pwm.c                 |   2 +-
>  drivers/staging/greybus/raw.c                 |   3 +-
>  drivers/staging/greybus/sdio.c                |   2 +-
>  drivers/staging/greybus/spi.c                 |   2 +-
>  drivers/staging/greybus/spilib.c              |   2 +-
>  drivers/staging/greybus/spilib.h              |   2 +-
>  drivers/staging/greybus/tools/loopback_test.c |   2 -
>  drivers/staging/greybus/uart.c                |   2 +-
>  drivers/staging/greybus/usb.c                 |   2 +-
>  drivers/staging/greybus/vibrator.c            |   3 +-
>  .../greybus => include/linux}/greybus.h       |  26 ++---
>  .../linux}/greybus/bundle.h                   |   0
>  .../linux}/greybus/connection.h               |   0
>  .../linux}/greybus/control.h                  |   0
>  .../linux}/greybus/greybus_id.h               |   0
>  .../linux}/greybus/greybus_manifest.h         |   2 +-
>  .../linux}/greybus/greybus_protocols.h        |  48 +-------
>  .../staging => include/linux}/greybus/hd.h    |   2 +-
>  .../linux}/greybus/interface.h                |   2 +-
>  .../linux}/greybus/manifest.h                 |   2 +-
>  .../linux}/greybus/module.h                   |   2 +-
>  .../linux}/greybus/operation.h                |   2 +-
>  .../staging => include/linux}/greybus/svc.h   |   2 +-
>  72 files changed, 225 insertions(+), 532 deletions(-)
>  create mode 100644 drivers/greybus/Kconfig
>  create mode 100644 drivers/greybus/Makefile
>  create mode 100644 drivers/greybus/arpc.h
>  rename drivers/{staging => }/greybus/bundle.c (99%)
>  rename drivers/{staging => }/greybus/connection.c (99%)
>  rename drivers/{staging => }/greybus/control.c (99%)
>  rename drivers/{staging => }/greybus/core.c (99%)
>  rename drivers/{staging => }/greybus/debugfs.c (94%)
>  rename drivers/{staging => }/greybus/es2.c (99%)
>  rename drivers/{staging => }/greybus/greybus_trace.h (99%)
>  rename drivers/{staging => }/greybus/hd.c (96%)
>  rename drivers/{staging => }/greybus/interface.c (99%)
>  rename drivers/{staging => }/greybus/manifest.c (95%)
>  rename drivers/{staging => }/greybus/module.c (99%)
>  rename drivers/{staging => }/greybus/operation.c (99%)
>  rename drivers/{staging => }/greybus/svc.c (99%)
>  rename drivers/{staging => }/greybus/svc_watchdog.c (99%)
>  delete mode 100644 drivers/staging/greybus/arpc.h
>  rename {drivers/staging/greybus => include/linux}/greybus.h (88%)
>  rename {drivers/staging => include/linux}/greybus/bundle.h (100%)
>  rename {drivers/staging => include/linux}/greybus/connection.h (100%)
>  rename {drivers/staging => include/linux}/greybus/control.h (100%)
>  rename {drivers/staging => include/linux}/greybus/greybus_id.h (100%)
>  rename {drivers/staging => include/linux}/greybus/greybus_manifest.h (99%)
>  rename {drivers/staging => include/linux}/greybus/greybus_protocols.h (96%)
>  rename {drivers/staging => include/linux}/greybus/hd.h (98%)
>  rename {drivers/staging => include/linux}/greybus/interface.h (98%)
>  rename {drivers/staging => include/linux}/greybus/manifest.h (87%)
>  rename {drivers/staging => include/linux}/greybus/module.h (94%)
>  rename {drivers/staging => include/linux}/greybus/operation.h (99%)
>  rename {drivers/staging => include/linux}/greybus/svc.h (98%)
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
