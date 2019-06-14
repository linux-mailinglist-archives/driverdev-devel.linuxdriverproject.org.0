Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAE546442
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 18:33:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F6B9884EF;
	Fri, 14 Jun 2019 16:33:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eH1-dt9GaXek; Fri, 14 Jun 2019 16:33:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4001F884D3;
	Fri, 14 Jun 2019 16:33:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE5311BF59F
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 16:33:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C8B3F87D51
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 16:33:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X46eWhfpc2Bt for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 16:33:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CCF7287CAE
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 16:33:28 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id s15so2936428wmj.3
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 09:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fFqxIRcGH8oZzLwiEq09xzWUQlnGrozgrNZLPkvhIj4=;
 b=YNTWic+1630gnNTb8Sch4/BCNM++THosM5ESxK7efvK/NDqX1sXG4qNMCR5f5rC1nd
 n8QoPEdC1SHcx6nrTfTfubnsLaC7ny7AtItLgAGfU/TO02I7g9RT1kd2I1IW+T2/mu6i
 MV029DbEAYFmZR8tXvdtpd0uyW4verAT15QQTJeznWlLfI5+aXkZnl2/Zv7T3kDoxtzQ
 4aI/vsNRAEM7Wym4D892XSVxXOrjiQogg2yJWUMZzdcZNLK6IS+vjMioakjvaVS/RXrW
 /gRQCdbIWWW31q7fRau0RSX1yqM2cdgqSZmLL2Me1dtzHXB13BViKgWORjzqDoDOxP+v
 RuTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fFqxIRcGH8oZzLwiEq09xzWUQlnGrozgrNZLPkvhIj4=;
 b=WghHZJtbQM/Npew4zsJSFcMFyRs7VT1+vs+wOr6vodTgPvN0zHvbUqvQL19eTnVg9x
 7H2XMdb0QM9bwkhaOdrKonkZHgJ6nfk/fbwFlooMNTypM10tIuzd0utM1UU3mFpF4iQ/
 tJlEbAOzKcNRa0FypwPzgY7UIMISFEpLTwI+TjOy56M23HF/gl4Ns6i+83tlfcFmKr2C
 uRgbs7F3IE7dqX7jnVqgjVb6m/SnWRtVsE2Ai986/DnRCq9zOI9vxkWfTNxkxWcfv1FV
 kZSewdRyWonVNeXnKyqN+zTVGQffbsfSj/fHfpiRVruQk8wnIQa+O7CFLHHh6faKYL+v
 CAMw==
X-Gm-Message-State: APjAAAUGadaqu03rIr2DyEk/+b2C3dVf19G9Vc6SWQdYuba+Q0NK/HSW
 7rn+Rax9NVQLJV9aJCFRBbE=
X-Google-Smtp-Source: APXvYqz0OZbvPa2/1qYozLjynroXmsbH+4PiBzYOo8j3wFczAh/yCK9MUv672sSvaRrw7qPIY0NPgg==
X-Received: by 2002:a1c:452:: with SMTP id 79mr8895726wme.149.1560530007368;
 Fri, 14 Jun 2019 09:33:27 -0700 (PDT)
Received: from smtp.gmail.com (1.77.115.89.rev.vodafone.pt. [89.115.77.1])
 by smtp.gmail.com with ESMTPSA id y6sm2864580wrp.12.2019.06.14.09.33.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 09:33:26 -0700 (PDT)
Date: Fri, 14 Jun 2019 13:33:19 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>
Subject: [PATCH v2 3/3] staging: iio: ad7150: clean up of comments
Message-ID: <a88f36a998eb3fc91cc70bc8fc76e3614706cdbe.1560529045.git.melissa.srw@gmail.com>
References: <cover.1560529045.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1560529045.git.melissa.srw@gmail.com>
User-Agent: NeoMutt/20180716
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

General cleaning of comments to remove useless information or improve
description.

Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
---
 drivers/staging/iio/cdc/ad7150.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index 7d56f10a19ed..51d6b52bce8b 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -163,7 +163,8 @@ static int ad7150_read_event_config(struct iio_dev *indio_dev,
 	return -EINVAL;
 }
 
-/* lock should be held */
+/* state_lock should be held to ensure consistent state*/
+
 static int ad7150_write_event_params(struct iio_dev *indio_dev,
 				     unsigned int chan,
 				     enum iio_event_type type,
@@ -479,10 +480,6 @@ static const struct iio_chan_spec ad7150_channels[] = {
 	AD7150_CAPACITANCE_CHAN(1)
 };
 
-/*
- * threshold events
- */
-
 static irqreturn_t ad7150_event_handler(int irq, void *private)
 {
 	struct iio_dev *indio_dev = private;
@@ -571,10 +568,6 @@ static const struct iio_info ad7150_info = {
 	.write_event_value = &ad7150_write_event_value,
 };
 
-/*
- * device probe and remove
- */
-
 static int ad7150_probe(struct i2c_client *client,
 			const struct i2c_device_id *id)
 {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
