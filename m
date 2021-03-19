Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A73E341463
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Mar 2021 05:53:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 464536070D;
	Fri, 19 Mar 2021 04:53:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gW3LV9cfX_J7; Fri, 19 Mar 2021 04:53:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A65F260646;
	Fri, 19 Mar 2021 04:53:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 650261BF4D6
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 04:53:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 53E5F40108
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 04:53:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4_JWsDS02uCB for <devel@linuxdriverproject.org>;
 Fri, 19 Mar 2021 04:53:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2BDE4400FC
 for <devel@driverdev.osuosl.org>; Fri, 19 Mar 2021 04:53:15 +0000 (UTC)
IronPort-SDR: 0EoWwqcykkJEWmApO+px1BlzjCgc4U3Zxjc/xAfXL9KvluitV4uoM6P6LGEpNz+cSwxoE1GU4F
 SbqufrPtcsZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="169751765"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="169751765"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 21:53:13 -0700
IronPort-SDR: bJ2OPG/qfruaQNSmTOFrVA8Nr/tsq9YZF51bWDzE6k4HxbT9HXNyHjDU9QT3xBW3sYsI8szOnk
 Hql+Nl5y0Q3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="412178653"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 18 Mar 2021 21:53:10 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lN78H-0001aP-8u; Fri, 19 Mar 2021 04:53:09 +0000
Date: Fri, 19 Mar 2021 12:52:40 +0800
From: kernel test robot <lkp@intel.com>
To: Xin Ji <xji@analogixsemi.com>, Robert Foss <robert.foss@linaro.org>,
 Nicolas Boichat <drinkcat@google.com>, Andrzej Hajda <a.hajda@samsung.com>
Subject: [RFC PATCH] drm/bridge: anx7625: anx7625_audio_hw_params() can be
 static
Message-ID: <20210319045240.GA28748@1fd724764317>
References: <0ee28b74edfaeb5b8047bade7c97988d6133b81b.1616071250.git.xji@analogixsemi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ee28b74edfaeb5b8047bade7c97988d6133b81b.1616071250.git.xji@analogixsemi.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 kbuild-all@lists.01.org, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 Sheng Pan <span@analogixsemi.com>, Bernie Liang <bliang@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: kernel test robot <lkp@intel.com>
---
 anx7625.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
index f4653f2b58ad4..38bb8a9db216a 100644
--- a/drivers/gpu/drm/bridge/analogix/anx7625.c
+++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
@@ -1585,9 +1585,9 @@ static enum drm_connector_status anx7625_sink_detect(struct anx7625_data *ctx)
 				     connector_status_disconnected;
 }
 
-int anx7625_audio_hw_params(struct device *dev, void *data,
-			    struct hdmi_codec_daifmt *fmt,
-			    struct hdmi_codec_params *params)
+static int anx7625_audio_hw_params(struct device *dev, void *data,
+				   struct hdmi_codec_daifmt *fmt,
+				   struct hdmi_codec_params *params)
 {
 	struct anx7625_data *ctx = dev_get_drvdata(dev);
 	int wl, ch, rate;
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
