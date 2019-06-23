Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8AA4FD0E
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Jun 2019 19:08:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E0BFD203E7;
	Sun, 23 Jun 2019 17:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DzKaoq-2WQgR; Sun, 23 Jun 2019 17:08:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BC40D2000D;
	Sun, 23 Jun 2019 17:08:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B877B1BF868
 for <devel@linuxdriverproject.org>; Sun, 23 Jun 2019 17:08:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B547385082
 for <devel@linuxdriverproject.org>; Sun, 23 Jun 2019 17:08:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8sgTlaBCi0K1 for <devel@linuxdriverproject.org>;
 Sun, 23 Jun 2019 17:08:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 229E28535F
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 17:08:09 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id x18so8041069qkn.13
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 10:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vWbpdOWa2VAaOy7TBQJIB0mdhzXn8ThTxSUPFXUXBbQ=;
 b=aa3y6g2Nw8ksIoN8BqN9QmNd31rUi43vg/DgdebaWOvLxryFzyjp20wkY+FQxfxwML
 8aodWMN5XWS9Poyha9pr4ZHSEfjczw1qY/pRAZdsRJyG+jegxkirWaRZCueWXSSEoqzn
 QX1nVCh3Ty8isIYuFQ9fd5e96YWAS2MAEQJumYbQ8KmRepK333AdZc+jUNfncVIuKBYV
 c4kjvW0LE0oePDGl+QWZ2x+RT5SrWJXJ8sZgDaMmthomraShAeXzg0qtp48x9Rrat4UE
 BNBq1oajdv9S1cmNYb+P245CF/j9SkHXOYuGDqKNtorukUkJB7wpRC3zJnNkvAk6whJf
 R+Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vWbpdOWa2VAaOy7TBQJIB0mdhzXn8ThTxSUPFXUXBbQ=;
 b=lTnNZGbyhCd74AD+MwN88zh5MTNXT25v93//MrUEh485Xn86H60tROU4EtUKNuOkBb
 8DlqjWqXeVooP2gtXQEy1Jig4FxQdmCXlNMqwsVCYS4flf8BaENo3cFJa4FiCD1ptlkO
 YSqp7PXIW32qQ2+zD4uCRz7SyBT3Cb9Dvmn42anTAeELfqcaRuYdy7KvVBVQGZwfbPKU
 W1DyDJZNtqpCyDggwS8PSw96AXLMrxV9V5oxwGZ2YdDOHp2gSZlBCgjp9ZI5QEYr0/qz
 9ZFtEftoIE9JxEu8PW4rIThLFiuMhatCxKalapm0l3Hka+t+fd/r1ZlAgwEMzsX6cA5C
 3EoQ==
X-Gm-Message-State: APjAAAXNe/V0idSa0ZGyBPmqmdVuPRxb7zG/F7vJOCxAA841W0YevosE
 FRX2T6VRL+OszZ898a9K5iE=
X-Google-Smtp-Source: APXvYqx+1ec4v3/7UU8yLHx5v2GXXVgIULPg46guW2MEBU9mINdiJSZcHlLwyobTxTl/7kayLNkuNA==
X-Received: by 2002:a05:620a:1425:: with SMTP id
 k5mr116716857qkj.146.1561309688364; 
 Sun, 23 Jun 2019 10:08:08 -0700 (PDT)
Received: from localhost.localdomain (ppp91-79-162-197.pppoe.mtu-net.ru.
 [91.79.162.197])
 by smtp.gmail.com with ESMTPSA id o54sm5790756qtb.63.2019.06.23.10.08.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Jun 2019 10:08:07 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3] ARM: tegra: Enable Tegra VDE driver in tegra_defconfig
Date: Sun, 23 Jun 2019 20:07:25 +0300
Message-Id: <20190623170730.5095-3-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190623170730.5095-1-digetx@gmail.com>
References: <20190623170730.5095-1-digetx@gmail.com>
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The video decoder driver was tested by time and works absolutely fine.
The reason why it is in staging is because it doesn't provide common V4L
interface yet, this shouldn't stop driver enabling in the defconfig since
our userspace (libvdpau-tegra) provides combined acceleration of decoding
and displaying without use of V4L.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---

No changes since v1.

 arch/arm/configs/tegra_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/tegra_defconfig b/arch/arm/configs/tegra_defconfig
index 8f5c6a5b444c..a27592d3b1fa 100644
--- a/arch/arm/configs/tegra_defconfig
+++ b/arch/arm/configs/tegra_defconfig
@@ -250,6 +250,8 @@ CONFIG_KEYBOARD_NVEC=y
 CONFIG_SERIO_NVEC_PS2=y
 CONFIG_NVEC_POWER=y
 CONFIG_NVEC_PAZ00=y
+CONFIG_STAGING_MEDIA=y
+CONFIG_TEGRA_VDE=y
 CONFIG_TEGRA_IOMMU_GART=y
 CONFIG_TEGRA_IOMMU_SMMU=y
 CONFIG_ARCH_TEGRA_2x_SOC=y
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
