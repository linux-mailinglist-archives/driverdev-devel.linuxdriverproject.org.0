Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE8B20BF21
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 09:03:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 85EAD204CA;
	Sat, 27 Jun 2020 07:03:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MXRbgdrokIG9; Sat, 27 Jun 2020 07:03:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E5F5C20134;
	Sat, 27 Jun 2020 07:03:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CA4CE1BF418
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 07:03:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C34A287A05
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 07:03:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KK-aYIVfBWDS for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 07:03:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 252EE879FD
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 07:03:27 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id x3so105760pfo.9
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 00:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FsrSKJ+gJUACgrGolhsPdd0vgGMvepJqfy8379JcKu4=;
 b=EvUBhtFbdA5q/Ln7/JmYkJ4WCSQYr0FDka6B0ToibqDo+KoRIWa5csnmBSRVgeVZpD
 3SycW07fCAwTdh+u5tC0gQuOD9UiiaFw8Pzh8+WwWoF+ppc6VrAXas0XCfYV9gXA5Cah
 O5dfGYTYYOddR91unI7zbYt5VMmXuBus/0h6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FsrSKJ+gJUACgrGolhsPdd0vgGMvepJqfy8379JcKu4=;
 b=LRKa1lbvfrOUPEr7uBD0gZDg/TiZD/F0cXYtKuIm7W+VqEpmA5M39moCIiNpW0bdMt
 Qh5sQd80tFOfYwFMU76iUVBRYP8SMDDW8E5gbYy737IIgbQYYPzRy+TPBqqMpX/yI60T
 VyyeshbT8BcxY9RUcqD9ZLExOkzU+xvinTj/Xwj7sNr3DNNHOZ5Jh+LEnGnekKroJe7E
 q8cDjapnmmb7I23PVx7HS5zh1EKDhPA6Ufwz8VvApqtLkJHsNOJ9r1jQCBmalTvswq6L
 Ajgj75D6FfsoK6lu/cmS01a671tSgnpf36OKepnMa2mt4m9AOCpsnw+0kiPspI398lcE
 ADOw==
X-Gm-Message-State: AOAM531jT7Tj6IGjeX3Opkis6EC++DLYlY2wYXXOqh1QbSjC7+3UjUoq
 3De96cMGlwPSHs8vrzys4LTU0g==
X-Google-Smtp-Source: ABdhPJyZFG/mi1UZ8xodyex8KRwcp8OsluVaczS/+idWJyqCQQeS3g8ufLKi4ZbrLW2qKEXgiYfBLw==
X-Received: by 2002:a62:5c85:: with SMTP id q127mr5814143pfb.311.1593241406667; 
 Sat, 27 Jun 2020 00:03:26 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id u4sm28133269pfl.102.2020.06.27.00.03.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 00:03:25 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] Detect and remove trace_printk
Date: Sat, 27 Jun 2020 15:03:03 +0800
Message-Id: <20200627070307.516803-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
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
Cc: Peter Chen <peter.chen@nxp.com>,
 "Guilherme G . Piccoli" <gpiccoli@canonical.com>,
 Rafael Aquini <aquini@redhat.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Todor Tomov <todor.too@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Howells <dhowells@redhat.com>, Tiezhu Yang <yangtiezhu@loongson.cn>,
 Will Deacon <will@kernel.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Kees Cook <keescook@chromium.org>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Nicolas Boichat <drinkcat@chromium.org>, Jayshri Pawar <jpawar@cadence.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Andy Gross <agross@kernel.org>,
 Tomas Winkler <tomas.winkler@intel.com>, Alexey Dobriyan <adobriyan@gmail.com>,
 linux-media@vger.kernel.org, Pawel Laszczak <pawell@cadence.com>,
 Daniel Vetter <daniel@ffwll.ch>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Chao Yu <chao@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Roger Quadros <rogerq@ti.com>, Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, linux-usb@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Colin Ian King <colin.king@canonical.com>,
 Andrew Morton <akpm@linux-foundation.org>, Divya Indi <divya.indi@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

trace_printk is meant as a debugging tool, and should not be
compiled into production code without specific debug Kconfig
options enabled or source code changes.

Patches 1 to 3 remove/disable trace_printk that should not
be enabled by default.

Patch 4 adds a config option that can be used to detect such
trace_printk at compile time (instead of printing a nasty
warning at runtime).

Nicolas Boichat (4):
  usb: cdns3: gadget: Replace trace_printk by dev_dbg
  media: atomisp: Replace trace_printk by pr_info
  media: camss: vfe: Use trace_printk for debugging only
  kernel/trace: Add TRACING_ALLOW_PRINTK config option

 drivers/gpu/drm/i915/Kconfig.debug              |  4 ++--
 .../media/platform/qcom/camss/camss-vfe-4-1.c   |  2 ++
 .../media/platform/qcom/camss/camss-vfe-4-7.c   |  2 ++
 drivers/staging/media/atomisp/pci/hmm/hmm.c     | 10 +++++-----
 drivers/usb/cdns3/gadget.c                      |  2 +-
 fs/f2fs/Kconfig                                 |  1 +
 include/linux/kernel.h                          | 17 ++++++++++++++++-
 kernel/trace/Kconfig                            | 10 ++++++++++
 samples/Kconfig                                 |  2 ++
 9 files changed, 41 insertions(+), 9 deletions(-)

-- 
2.27.0.212.ge8ba1cc988-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
