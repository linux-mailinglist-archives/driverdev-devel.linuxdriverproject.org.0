Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DE21354E
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 00:13:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9CDF086A35;
	Fri,  3 May 2019 22:13:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id csybGgdbBz68; Fri,  3 May 2019 22:13:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE90986618;
	Fri,  3 May 2019 22:13:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F1131BF3D2
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 22:13:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4A21B87548
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 22:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MYvR68kGfBYq for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 22:13:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7AE14874DF
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 22:13:20 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id g4so8491496qtq.10
 for <devel@driverdev.osuosl.org>; Fri, 03 May 2019 15:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=mfp4K2wyLqvou0VkORSKLnmjS+wOeVL0yi89FQp3u48=;
 b=hSCZ+yMsnu6RQDJMtD/li/6sNmzj+3PDUXLySbQREbxOPFMJNIBKxUH+8XmkesAbZu
 7/oSKnCn3jwK9xlX/HYITipnFGs/nmb8T0OVTMlUe+lBqg8r8cQZ97NGgYBXe8vU0Uys
 2DpqeU9/KEQ0+EJnXLPQOHZlaQtcUMd3WuDbCdFPkjyXlAc+QaVFEW0o8UTN9LGBiRAA
 PfM9apyQr2JTonNA+oyBCwJZgr38gwtOy7HMclS12iLYwcTObQYvE2CQYXkuv7qhRbCY
 IuEWBv/12BxYlWkxGaWfuAkAkrDFUeI52iU3BtNEbJBBfAao9dAfE7EbUwm6v9LUN8xp
 Ns3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=mfp4K2wyLqvou0VkORSKLnmjS+wOeVL0yi89FQp3u48=;
 b=dbkh4ErMHw7otJjJifom6NuwOS9SUydiVWVv2/M7PXdV8xmrV5lkhVwco9/i3mx7BI
 T0oKFwFOOtuMfp/PiWvk5Nlcp9WaIkzRjh8taz74AG1oiKnPrCwJgjcrh3rx5EWX8V/m
 4H0LTMINDhqlUIstAUwlNvCEZQjuxRXokhJv05lhQlwDGMoWPNqn0nVrpIqgGI7cAb+1
 zvkGfbQ2fjsTtvGOSaQtaMc60OymDwlhBW29lo+IQw0elJSUlU3k+jEJQwjhBqCk8VmM
 3K7g1Xs/0AQ4twRHQmfkMK7/0n6xQJvWkFWEGFf9Azt3rew9LphNr9diwxau6aoQ/i6Z
 +Eyg==
X-Gm-Message-State: APjAAAVbaO7iqFNfJ129ey1j50a+x8gwgFP91JOqalYhkoB43bfbPEYD
 HyE+Nf5WRsPrUJHKMIZUfuQ=
X-Google-Smtp-Source: APXvYqzBLukP2W0809eViEFsB3nITVw/aCkAWjBj+zSP+L5gpaXEdr7ysvG+e21kCCz6dwgCCCTofg==
X-Received: by 2002:ac8:74cd:: with SMTP id j13mr10568148qtr.385.1556921599506; 
 Fri, 03 May 2019 15:13:19 -0700 (PDT)
Received: from smtp.gmail.com ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id v57sm3221643qtc.10.2019.05.03.15.13.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 03 May 2019 15:13:17 -0700 (PDT)
Date: Fri, 3 May 2019 19:13:06 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>
Subject: [PATCH 0/4] staging: iio: ad7150: improve driver readability
Message-ID: <cover.1556919363.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
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

This patchset solves readability issues in AD7150 code, such as clarify
register and mask definition, fashion improvement of mask uses, reduce
tedious operation and useless comments.

Melissa Wen (4):
  staging: iio: ad7150: organize registers definition
  staging: iio: ad7150: use FIELD_GET and GENMASK
  staging: iio: ad7150: simplify i2c SMBus return treatment
  staging: iio: ad7150: clean up of comments

 drivers/staging/iio/cdc/ad7150.c | 102 ++++++++++++++-----------------
 1 file changed, 47 insertions(+), 55 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
