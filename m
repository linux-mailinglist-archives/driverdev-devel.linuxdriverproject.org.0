Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2193E1E5109
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 May 2020 00:13:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 574778809E;
	Wed, 27 May 2020 22:13:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kx5CRQLqd5V1; Wed, 27 May 2020 22:13:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B9B7888012;
	Wed, 27 May 2020 22:13:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 877331BF4E2
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 22:13:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 79733203B9
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 22:13:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yTD8SI5IhLg1 for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 22:13:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
 by silver.osuosl.org (Postfix) with ESMTPS id 29F7A2000F
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 22:13:44 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MZTa2-1jXvWm2V4I-00WYLm; Thu, 28 May 2020 00:13:30 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>
Subject: [PATCH] staging: tegra-video: fix V4L2 dependency
Date: Thu, 28 May 2020 00:13:06 +0200
Message-Id: <20200527221327.3339232-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:OkSCNXrxgq+QBC6VZibXnhg/MVMqw5QZ+B8NVtwOjOHdh8pK7KV
 oNEVVM4Oeri88gdj7u5OW8bijKaO6HHtbsrhzkmFFZmCUhd2m7Gd2ygmRgvRxVfHB/smmNN
 55R6GIMNzhZJYM3/igbihA7ZqXkAXDHxi8VVZpihLDblQ/StiZ+Y5GsvkNU2A8W3qVFeKqQ
 SaiD+hsn+mHITvEqJXKkw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:8tSYDyvKwCo=:LVwvEWqO4zqtVa9oCHOyUR
 uNwRBjTb9L3mYUmVSjV7rIcFNmq+cDjGRFIlFNf9fwOnPvFfN/qYDMWpeILTUwBDiyoTcd7I6
 OtReLlFW8QOdfRy16htFKM/nXzZbMpbAMJFPvcwSreaTx/ZerqczDQHOU6iMPsOf3E3mgblF5
 hkfVSufRgbmScDBbPkPJRrdqEFfXab87hi226bAgMn0kAA+nFWszlvJIoUReNd223KDhHgPxS
 VIuo2Q2cLy6IGrflYwLwvwC+hFtKNSEuO7qGE+n7ZgVw1n919QXDKFkd/oDzRs/apKdPmEkoh
 gnMGAk/MxlU23oXo08ekP4butF4UORCC7O0P/nTtFohSgb8EEe2Tp4OLC18uYXoj+R6zHpLX8
 1/OA+BmFG8Lr7A5mwILNGm0FyyZ7CJr24xTwSlp7YM9gaWcr8DNFgftm9aFNYsuJCL2CLPQok
 g14eEiZEdb9YaRHtoJ0IhC9PbBrlue8IMbCSdgDAdFx80qg4wQji/lxBXDJii0+suFdWHahhl
 NRkqnAk7b6W5aKtXfd0CZoOWvegIVTl3WF13HIfkfyMg+io7U6igWGsCMJMXVrAaLXLl6QrDe
 cUL12Yat+ighNEMELCAiMZ1C7Dkj6x0+QmOu0bAwjry1MGcg1LfwqbS3E+oCK6m3hsWtakD+n
 rMkIGhi4Gt2of6tqBkzr0tuWqWTesMJqo0RrKXCkr5azyx23Qf3emsGUy90QePxLMPbRXyqvC
 XQ5tF84oR+SW97FBEQcbkFyWmLw/b6Y9rxvOB6Mohz4lStJqlTPtaiySH3ISw/thz+HCRnlGT
 9oJOh0yhDvRSfbkS231duc4zUWmAhFWvkEkPc1FpjEQKFo6cWU=
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Dmitry Osipenko <digetx@gmail.com>,
 Thierry Reding <treding@nvidia.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rather than using a dependency on VIDEO_V4L2, this driver uses
"select", which fails when other dependencies are missing:

WARNING: unmet direct dependencies detected for VIDEO_V4L2
  Depends on [n]: MEDIA_SUPPORT [=y] && (I2C [=y] || I2C [=y]=n) && VIDEO_DEV [=n]
  Selected by [y]:
  - VIDEO_TEGRA [=y] && STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=y] && TEGRA_HOST1X [=y]
(plus an endless stream of link errors for other drivers that
depend on VIDEO_V4L2 but are now lacking their dependencies)

Fixes: 3d8a97eabef0 ("media: tegra-video: Add Tegra210 Video input driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/tegra-video/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/tegra-video/Kconfig b/drivers/staging/media/tegra-video/Kconfig
index 3f03b5b39e6c..f6c61ec74386 100644
--- a/drivers/staging/media/tegra-video/Kconfig
+++ b/drivers/staging/media/tegra-video/Kconfig
@@ -2,7 +2,7 @@
 config VIDEO_TEGRA
 	tristate "NVIDIA Tegra VI driver"
 	depends on TEGRA_HOST1X
-	select VIDEO_V4L2
+	depends on VIDEO_V4L2
 	select MEDIA_CONTROLLER
 	select VIDEOBUF2_DMA_CONTIG
 	help
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
