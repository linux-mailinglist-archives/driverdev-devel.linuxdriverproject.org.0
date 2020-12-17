Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD522DD6EF
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B7B187AB9;
	Thu, 17 Dec 2020 18:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W--MkNIYpyBd; Thu, 17 Dec 2020 18:08:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CE588769D;
	Thu, 17 Dec 2020 18:08:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 33EEF1BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 30CBB87648
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yZlH383laTmF for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:08:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E2DD68762A
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:59 +0000 (UTC)
Received: by mail-lf1-f53.google.com with SMTP id h205so16303897lfd.5
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KswnK2pgrRw2QhZvB/Use4T7bnltjrNj3eLqWqZME28=;
 b=mhiowlBu7ET0N7ZefbXZKe0CF67YMU9S7y4YnHN8AKhj9s+K5Q308qgF56a33giJy1
 2Fr67/ffjz5Qb2QcopQwJ25hdtsHN2y4ysAlnDh+m38HGkk4tbkttwhclxEN3nXOkVZa
 d3l+w/smldQi/xnydW0v7hAlsL3c4c8tWuqVTNzv87bvmWX3drPVnj3Ijn5IWHHKppzK
 co2En3pXyzyTWa+PrC+QSFAyn3yy2Y0YIDa+mecXU7ZlSClJTqx77dveS49A+Uyd4Jkm
 bFtyJ4s1bqSumabh4r7n6k6wE8+jJqhgzd7qrY4Vq5HGMI9zgWz6GAYDMwKf0RqFvSFS
 8KFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KswnK2pgrRw2QhZvB/Use4T7bnltjrNj3eLqWqZME28=;
 b=Meh30ZNWEDKxj/93hh5Q+3eh6Bd5Kw0w2Iw/Js8v0/ReGDZ16aDl4ZtylntJM6f6v/
 Drdd8EelvfjLk63AXXerfU2NOVDwb+iiOL7tQVyxNZqAN4Ys99sNgN62ROZCXunPi1SK
 eiSSJu91tu0JHPC2htGY+HIpOSLxm69geT0seUeoxCbNt7nCicLBv/etoLSqVhJm84Jn
 weC1BIjULCsALaji8M8O/JfC3fFhggMb9Bq0zD1Yb7kvTURwvFU/jCnKw3dU1AhOzeRs
 6z+58qsBnxdhyTec0QeILjvHhFne55RkEnCgDrlJvLYKj4LzToHipOAprSfZSu+etoO2
 CShw==
X-Gm-Message-State: AOAM533N+Nj1EfUMSITFX6saU0SdBYWbKFbgRaVA5R0zKDjpQ/UurpuN
 1Cxm6jtcnEHZI0oLZvHSBTeVDJQwZEM=
X-Google-Smtp-Source: ABdhPJyuCr3Uz6wXHF/lbttUt7A2z6j3C/VIP45WsYuNIaAuGMcBlIRrrIe5fhI+HWJqsB4/YZ1NfA==
X-Received: by 2002:a19:904:: with SMTP id 4mr2339lfj.64.1608228478227;
 Thu, 17 Dec 2020 10:07:58 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:57 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Kevin Hilman <khilman@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Viresh Kumar <vireshk@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH v2 33/48] gpu: host1x: Add host1x_channel_stop()
Date: Thu, 17 Dec 2020 21:06:23 +0300
Message-Id: <20201217180638.22748-34-digetx@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201217180638.22748-1-digetx@gmail.com>
References: <20201217180638.22748-1-digetx@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add host1x_channel_stop() which waits till channel becomes idle and then
stops the channel hardware. This is needed for supporting suspend/resume
by host1x drivers since the hardware state is lost after power-gating,
thus the channel needs to be stopped before entering into suspend.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/gpu/host1x/channel.c | 8 ++++++++
 include/linux/host1x.h       | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/host1x/channel.c b/drivers/gpu/host1x/channel.c
index 4cd212bb570d..2a9a3a8d5931 100644
--- a/drivers/gpu/host1x/channel.c
+++ b/drivers/gpu/host1x/channel.c
@@ -75,6 +75,14 @@ struct host1x_channel *host1x_channel_get_index(struct host1x *host,
 	return ch;
 }
 
+void host1x_channel_stop(struct host1x_channel *channel)
+{
+	struct host1x *host = dev_get_drvdata(channel->dev->parent);
+
+	host1x_hw_cdma_stop(host, &channel->cdma);
+}
+EXPORT_SYMBOL(host1x_channel_stop);
+
 static void release_channel(struct kref *kref)
 {
 	struct host1x_channel *channel =
diff --git a/include/linux/host1x.h b/include/linux/host1x.h
index ce59a6a6a008..565833689be2 100644
--- a/include/linux/host1x.h
+++ b/include/linux/host1x.h
@@ -167,6 +167,7 @@ struct host1x_job;
 
 struct host1x_channel *host1x_channel_request(struct host1x_client *client);
 struct host1x_channel *host1x_channel_get(struct host1x_channel *channel);
+void host1x_channel_stop(struct host1x_channel *channel);
 void host1x_channel_put(struct host1x_channel *channel);
 int host1x_job_submit(struct host1x_job *job);
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
