Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA0E4FD0D
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Jun 2019 19:08:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 15316854DF;
	Sun, 23 Jun 2019 17:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 85XEcREqJNp9; Sun, 23 Jun 2019 17:08:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A85EF854FC;
	Sun, 23 Jun 2019 17:08:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A91071BF47A
 for <devel@linuxdriverproject.org>; Sun, 23 Jun 2019 17:08:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A2CF0870DF
 for <devel@linuxdriverproject.org>; Sun, 23 Jun 2019 17:08:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vDKu2kr3XgEU for <devel@linuxdriverproject.org>;
 Sun, 23 Jun 2019 17:08:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C1519870A1
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 17:08:06 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id l128so8087133qke.2
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 10:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EMFljB61wH3RBTPKWZ1GnJfV+sWdvfbnkWdZA5ukgAc=;
 b=D+81I/pOASXIwEKTD0Yy9pX88RNbR5Bg/OIOH6Ff/5TkeLiyCYCO8uIVbiCQaVCXwY
 orpo6w9lOto0hx+qd2n3MY7WikoN+1lYQD3dwMOGR08aU8eP0+Z1XlKCTV9gj2TTqRhU
 j1UWXuXc6jKW5u5NKamohOuQG9l4horQKJr3ueFpgqxL5uQdlezmiTmdLsYyW1PEopPs
 flAMuQg3cTydjyNcVHas2lYqlN3I/dkBjXDgKEzNzDcSuMveHY0OZWx8Sf5TTXIeAhx7
 69uO/cJ6gmCrb8XNxCwHnlWd0m9g0d1ZiDl70xetLL4YCSRhEhkkcO5bK3rPFxuyZO+R
 PZfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EMFljB61wH3RBTPKWZ1GnJfV+sWdvfbnkWdZA5ukgAc=;
 b=Q8m6ku3OoAldbWfJ0lRbLV51P1SYN+DZK4UTDBLawrX3xEJ1aBvD0nuJrExHEuLun4
 nkLpHcXERGfvFdD7grPgD1wPiXUbjUyV37BUHTtcNgzKqXfUBqImAQceh3+4V4y9lb8c
 MLWJPywKsvrJwTV+B/9mwPqiJ/MQlbmE+XEn6zrFLXC2PMoE7Cb+C8KI1hIN1rqZKyiU
 sTB/t7xFNvqNKkiS06k3GwOyLiWm4qudP+EwOqq4lP1dxNZU42W3hhAsSdz5jLfwW3E1
 sHBQhk0AhPZ0g9cPPkMwkJHPQ9voXNk2ftxxVCUUOhzQKmLcatkSpgurkviF52S2/0DK
 RQoQ==
X-Gm-Message-State: APjAAAW4AYtXMY81rg63vXSoMZs4nhnuWEvw+xQdcwGDyrUQ36fNFCpR
 ulsKJjOg85ZczxTr5aip/bs=
X-Google-Smtp-Source: APXvYqygAqhU2nclhsb9tqgs7EEPC7l+G7UwtlBWitXR/rkvffzqte0tSuTPBOpvnDQ2N5h9zjPU7w==
X-Received: by 2002:a37:48d8:: with SMTP id
 v207mr49250965qka.316.1561309686028; 
 Sun, 23 Jun 2019 10:08:06 -0700 (PDT)
Received: from localhost.localdomain (ppp91-79-162-197.pppoe.mtu-net.ru.
 [91.79.162.197])
 by smtp.gmail.com with ESMTPSA id o54sm5790756qtb.63.2019.06.23.10.08.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Jun 2019 10:08:05 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3] ARM: dts: tegra30: Connect SMMU with Video Decoder Engine
Date: Sun, 23 Jun 2019 20:07:24 +0300
Message-Id: <20190623170730.5095-2-digetx@gmail.com>
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

Enable IOMMU support for the video decoder.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---

No changes since v1.

 arch/arm/boot/dts/tegra30.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/tegra30.dtsi b/arch/arm/boot/dts/tegra30.dtsi
index 934caa83c8db..ce162125e7bf 100644
--- a/arch/arm/boot/dts/tegra30.dtsi
+++ b/arch/arm/boot/dts/tegra30.dtsi
@@ -424,6 +424,7 @@
 		clocks = <&tegra_car TEGRA30_CLK_VDE>;
 		reset-names = "vde", "mc";
 		resets = <&tegra_car 61>, <&mc TEGRA30_MC_RESET_VDE>;
+		iommus = <&mc TEGRA_SWGROUP_VDE>;
 	};
 
 	apbmisc@70000800 {
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
