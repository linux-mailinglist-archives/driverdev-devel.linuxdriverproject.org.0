Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1A8B76D2
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 11:59:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D3B484494;
	Thu, 19 Sep 2019 09:59:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V6KuSXpeAr_G; Thu, 19 Sep 2019 09:59:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 11A5B844CC;
	Thu, 19 Sep 2019 09:59:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 51C971BF20B
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 09:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 48FD187E6C
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 09:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zc4aZlbYClQJ for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 09:59:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5020687E5F
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 09:59:18 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id i1so2413954wro.4
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 02:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6YboXs4mQIylOrMolQVGgl1HM0og05CGlsxjYW+iH7k=;
 b=qTu9xgntVL5lvm8X1qZsU5crk286GN6BEL/GGXbnJf64rW/GM+EUt0Bu8yDv8CmWWY
 xf0qCzH/cdoopyoFtP/Nv/TeXDYeGJxg0hymnHWeAaLlbsdi9PxQqls0t0Ek9aHE6ckI
 Z2nVvxM8HFr6f/UQnaS98vIMA6blz3OI/WrfnjnqmMSLgissuunGJuxSX6gYsOncqqYV
 2jnlCNy1rNjflyG2FVCfGJoO94M7K49xiCoQqGZAIQrjjbOQTNxEBaLMv50mhDFDVXFu
 d8OwtzzZxwiBCV6Njl4tkOyRZCJlIZpC2MEZc4ROjPr3vEy8WmweZfDpx80RBJT3ZyID
 64Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6YboXs4mQIylOrMolQVGgl1HM0og05CGlsxjYW+iH7k=;
 b=KUQVJxiLgCRiUJ2R6jfYG9aIgW+/DoTqn7q8cvNI6hRhcE41aSexLh890L/Vz7dp23
 yC+UdVTb+T6Ttl/P5YB1e2sK5nQMZU+CiG9KykLFd1omjsrEbEKJUbfDoEiSIVIzUbws
 IjLooJN3z8MpMJZa6c2xLI5BysxYraZgH6qLD8TfdLk4PBzWwiA0Low4y9P8Y91NvPSb
 tMVCweQzWDYrZbtI9kw3Mtfm1I/0eY3YulKpZZfunfBO9pS2+uG74DiDHffgCCCNCyKt
 jPNBEwyh1mta0SAfvozhTjiWVk9JtFYaKeqw2j1u5lZsPbsrbxmC2MQqnjZUG+VCPT0U
 VKug==
X-Gm-Message-State: APjAAAX9QS9to9IGPSwnqUNaR4u8jU1iF9IborLc8YNaI3bsHMDQAVwZ
 e+W5ooRXY+rAB6pVs9jo2Bo=
X-Google-Smtp-Source: APXvYqwkccDuJHbaNPpKriH1ct1LstdVeisfChkzu85ct1d5VdtuJTBELwZtNELGqXp7JiqyE7uhWA==
X-Received: by 2002:a5d:4745:: with SMTP id o5mr6250925wrs.125.1568887156690; 
 Thu, 19 Sep 2019 02:59:16 -0700 (PDT)
Received: from localhost.localdomain ([213.86.25.14])
 by smtp.googlemail.com with ESMTPSA id
 y186sm10037704wmb.41.2019.09.19.02.59.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 02:59:15 -0700 (PDT)
From: Alexander Gordeev <a.gordeev.box@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH RFC 0/2] staging: Support Avalon-MM DMA Interface for PCIe
Date: Thu, 19 Sep 2019 11:59:11 +0200
Message-Id: <cover.1568817357.git.a.gordeev.box@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, Michael Chen <micchen@altera.com>,
 Alexander Gordeev <a.gordeev.box@gmail.com>, dmaengine@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The Avalon-MM DMA Interface for PCIe is a design found in hard IPs for
Intel Arria, Cyclone or Stratix FPGAs. It transfers data between on-chip
memory and system memory. This RFC is an attempt to provide a generic API:

	typedef void (*avalon_dma_xfer_callback)(void *dma_async_param);
 
	int avalon_dma_submit_xfer(
		struct avalon_dma *avalon_dma,
		enum dma_data_direction direction,
		dma_addr_t dev_addr, dma_addr_t host_addr,
		unsigned int size,
		avalon_dma_xfer_callback callback,
		void *callback_param);
 
	int avalon_dma_submit_xfer_sg(struct avalon_dma *avalon_dma,
		enum dma_data_direction direction,
		dma_addr_t dev_addr,
		struct sg_table *sg_table,
		avalon_dma_xfer_callback callback,
		void *callback_param);
 
	int avalon_dma_issue_pending(struct avalon_dma *avalon_dma);

Patch 1 introduces "avalon-dma" driver that provides the above-mentioned
generic interface.

Patch 2 adds "avalon-drv" driver using "avalon-dma" to transfer user-
provided data. This driver was used to debug and stress "avalon-dma"
and could be used as a code base for other implementations. Strictly
speaking, it does not need to be part of the kernel tree.
A companion tool using "avalon-drv" to DMA files (not part of this
patchset) is located at git@github.com:a-gordeev/avalon-drv-tool.git

The suggested interface is developed with the standard "dmaengine"
in mind and could be reworked to suit it. I would appreciate, however
gathering some feedback on the implemenation first - as the hardware-
specific code would persist. It is also a call for testing - I only
have access to a single Arria 10 device to try on.

This series is against v5.3 and could be found at
git@github.com:a-gordeev/linux.git avalon-dma-engine


CC: Michael Chen <micchen@altera.com>
CC: devel@driverdev.osuosl.org
CC: dmaengine@vger.kernel.org

Alexander Gordeev (2):
  staging: avalon-dma: Avalon DMA engine
  staging: avalon-drv: Avalon DMA driver

 drivers/staging/Kconfig                       |   4 +
 drivers/staging/Makefile                      |   2 +
 drivers/staging/avalon-dma/Kconfig            |  45 ++
 drivers/staging/avalon-dma/Makefile           |  11 +
 drivers/staging/avalon-dma/avalon-dma-core.c  | 515 ++++++++++++++
 drivers/staging/avalon-dma/avalon-dma-core.h  |  52 ++
 .../staging/avalon-dma/avalon-dma-interrupt.c | 118 ++++
 .../staging/avalon-dma/avalon-dma-interrupt.h |  13 +
 drivers/staging/avalon-dma/avalon-dma-util.c  | 196 ++++++
 drivers/staging/avalon-dma/avalon-dma-util.h  |  25 +
 drivers/staging/avalon-drv/Kconfig            |  34 +
 drivers/staging/avalon-drv/Makefile           |  14 +
 drivers/staging/avalon-drv/avalon-drv-dev.c   | 193 ++++++
 drivers/staging/avalon-drv/avalon-drv-ioctl.c | 137 ++++
 drivers/staging/avalon-drv/avalon-drv-ioctl.h |  12 +
 drivers/staging/avalon-drv/avalon-drv-mmap.c  |  93 +++
 drivers/staging/avalon-drv/avalon-drv-mmap.h  |  12 +
 .../staging/avalon-drv/avalon-drv-sg-buf.c    | 132 ++++
 .../staging/avalon-drv/avalon-drv-sg-buf.h    |  26 +
 drivers/staging/avalon-drv/avalon-drv-util.c  |  54 ++
 drivers/staging/avalon-drv/avalon-drv-util.h  |  12 +
 drivers/staging/avalon-drv/avalon-drv-xfer.c  | 655 ++++++++++++++++++
 drivers/staging/avalon-drv/avalon-drv-xfer.h  |  24 +
 drivers/staging/avalon-drv/avalon-drv.h       |  22 +
 include/linux/avalon-dma-hw.h                 |  72 ++
 include/linux/avalon-dma.h                    |  68 ++
 include/uapi/linux/avalon-drv-ioctl.h         |  30 +
 27 files changed, 2571 insertions(+)
 create mode 100644 drivers/staging/avalon-dma/Kconfig
 create mode 100644 drivers/staging/avalon-dma/Makefile
 create mode 100644 drivers/staging/avalon-dma/avalon-dma-core.c
 create mode 100644 drivers/staging/avalon-dma/avalon-dma-core.h
 create mode 100644 drivers/staging/avalon-dma/avalon-dma-interrupt.c
 create mode 100644 drivers/staging/avalon-dma/avalon-dma-interrupt.h
 create mode 100644 drivers/staging/avalon-dma/avalon-dma-util.c
 create mode 100644 drivers/staging/avalon-dma/avalon-dma-util.h
 create mode 100644 drivers/staging/avalon-drv/Kconfig
 create mode 100644 drivers/staging/avalon-drv/Makefile
 create mode 100644 drivers/staging/avalon-drv/avalon-drv-dev.c
 create mode 100644 drivers/staging/avalon-drv/avalon-drv-ioctl.c
 create mode 100644 drivers/staging/avalon-drv/avalon-drv-ioctl.h
 create mode 100644 drivers/staging/avalon-drv/avalon-drv-mmap.c
 create mode 100644 drivers/staging/avalon-drv/avalon-drv-mmap.h
 create mode 100644 drivers/staging/avalon-drv/avalon-drv-sg-buf.c
 create mode 100644 drivers/staging/avalon-drv/avalon-drv-sg-buf.h
 create mode 100644 drivers/staging/avalon-drv/avalon-drv-util.c
 create mode 100644 drivers/staging/avalon-drv/avalon-drv-util.h
 create mode 100644 drivers/staging/avalon-drv/avalon-drv-xfer.c
 create mode 100644 drivers/staging/avalon-drv/avalon-drv-xfer.h
 create mode 100644 drivers/staging/avalon-drv/avalon-drv.h
 create mode 100644 include/linux/avalon-dma-hw.h
 create mode 100644 include/linux/avalon-dma.h
 create mode 100644 include/uapi/linux/avalon-drv-ioctl.h

-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
