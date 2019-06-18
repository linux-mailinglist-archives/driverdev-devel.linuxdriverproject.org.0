Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D09684A66E
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 18:16:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C2C9284EB9;
	Tue, 18 Jun 2019 16:16:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KSFS+2eYMWH6; Tue, 18 Jun 2019 16:16:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D08EA8637A;
	Tue, 18 Jun 2019 16:16:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D8931BF83C
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 16:16:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F3A2484EB9
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 16:16:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d96gcMAVN5Nn for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 16:16:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C369B86460
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 16:16:34 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id r15so9736922lfm.11
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 09:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DEscWWmNyD0k1ManLTEItc70FqDRXwSTSIeyQ9TNq+o=;
 b=sP0ZpqgE7TSMhmWql3yXbKjkL086dnp1c502sLka4psezPG0DAXYrXs4NB1KeP/ows
 /1N1nri6UKNxjvJu+19Kk4jMgo+rORREEiT6yrLucnskgRS4AjgBwJrkqKnmnehlHbWe
 jhj2y38S+avV/HWBDD4sAUX1DwSa4Txp4dZK5clmVUHMTZRfUSrCw5PgUmjrjlOYOQcC
 47JPgLIhLx7cxWPx7EJpxa2AHnd+8Nu/lrIQ0GbI/SGyff3sv+SWMgCpibZlibT8XRPe
 hQ9cRvx9ZPJJdvhN1rEBFZb9OsrD7Nr33EF1WVO5wM5NNsmG9QzvJUcDv1XeTrEj8Rur
 2X5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DEscWWmNyD0k1ManLTEItc70FqDRXwSTSIeyQ9TNq+o=;
 b=VkuMCBtfVV7sGIW/Q2FZVkiFvTjStjuNT132K76y+zzgcttCkfluMMg1FNNzYj1Rft
 E0q3KIMOEFulqTmNE7rUDwNmrj3lI848PwiOXa/OScYo7S3gYJS2webzjlSeTcjQ00nG
 uABty9mb2wXPjfYVz1LjPV0WJhhh1DTkI3kez8cbOJZr7dTPKCXxwZiC3lXBWveifZ8B
 WEe6u6nqQmvth0EFr5xG6pcOKuQc9DkYIbKSALpeI5eMDa+EF4nYvvti/+Xqn/jODdqA
 r2wAUugW6jPr2upMEPGsWFlHDgc2zABz7f1zWRJnWaTQOHp8nim0HyZhVtYtTEN6KU/g
 MIXg==
X-Gm-Message-State: APjAAAUdgmmvAPDeGAwQ3/GoFhZWe9YGN/vv0qs+1IGyB2o5scFEqWJu
 jnI9IyWt1NrLWEFQo1nipVfhVX/a
X-Google-Smtp-Source: APXvYqyGhZlg1tcRhT4vaOFsvvBcBXgVwTTd2e98SqkQxN43+IjhfrTR1Twx7sKmqWxKEdJFoG40NQ==
X-Received: by 2002:a19:4bc5:: with SMTP id
 y188mr59327041lfa.113.1560874593085; 
 Tue, 18 Jun 2019 09:16:33 -0700 (PDT)
Received: from localhost.localdomain (ppp91-79-162-197.pppoe.mtu-net.ru.
 [91.79.162.197])
 by smtp.gmail.com with ESMTPSA id v15sm2273295lfd.53.2019.06.18.09.16.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 09:16:32 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 1/4] staging: media: tegra-vde: Remove BIT() macro from
 UAPI header
Date: Tue, 18 Jun 2019 19:14:55 +0300
Message-Id: <20190618161458.20499-5-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190618161458.20499-1-digetx@gmail.com>
References: <20190618161458.20499-1-digetx@gmail.com>
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

The BIT macro isn't available in userspace. Checkpatch complains about
shifts being used instead of the macro and people are starting to send
patches without realizing that it's a UAPI header file. Hence let's
replace the BIT macro with a hex values to make everyone happy.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/staging/media/tegra-vde/uapi.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/tegra-vde/uapi.h b/drivers/staging/media/tegra-vde/uapi.h
index a0dad1ed94ef..dd3e4a8c9f7e 100644
--- a/drivers/staging/media/tegra-vde/uapi.h
+++ b/drivers/staging/media/tegra-vde/uapi.h
@@ -6,8 +6,8 @@
 #include <linux/types.h>
 #include <asm/ioctl.h>
 
-#define FLAG_B_FRAME		BIT(0)
-#define FLAG_REFERENCE		BIT(1)
+#define FLAG_B_FRAME		0x1
+#define FLAG_REFERENCE		0x2
 
 struct tegra_vde_h264_frame {
 	__s32 y_fd;
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
