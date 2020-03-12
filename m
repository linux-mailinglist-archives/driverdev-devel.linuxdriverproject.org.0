Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A81182E7F
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 12:02:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9ACA62671A;
	Thu, 12 Mar 2020 11:02:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UMjN9IcEu4fC; Thu, 12 Mar 2020 11:02:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C3195265F5;
	Thu, 12 Mar 2020 11:02:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5CFA21BF424
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 11:02:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 59E8286CB0
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 11:02:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gLBIi7Qzinwu for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 11:02:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9107F86CAC
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 11:02:28 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id 19so5873869ljj.7
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 04:02:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xDdc7kJCwX6NG51y4/WhGpKrhuKlpllW6J0+34aBuUM=;
 b=f/r66xu+CS/SpcI9HQSy4n2YXaVLQXMxlNGIeH534BvZvto+lkyZvQB6FkZg6HDZ0e
 zu0IhZFTvE0MfMYdkP6PNhTRBAHNP0HYKMPW5+fTL0jf2erNgfQSTdXlwHRMe+JFaV/L
 CgJXVJ5zOoa8qhz2+giMx+GZPyWRaK0jOsaPpBOi3UKbDvrbX/1XrBkG8SQBfDMi452H
 +Ip6djJLmd6SzrDmM2n1LMVWadLCdBOL7Xv82ZqKfHvt/LwJHqNrxXn9Rdrk4KwlBqpG
 GNaeINOkhAODwuL8O2Ikl9yQ8I73767V9NF3lyqBpOZK90yxGUhGVafI4Q+Vf2FA20EQ
 QTyw==
X-Gm-Message-State: ANhLgQ3tqWG5vhuI76JrO15kFIfsTIGfCUWUZRuRvdai67NQzK8Cl/RF
 nzBUfqF7Xb+AST/Rx/bNTlA=
X-Google-Smtp-Source: ADFU+vsmOZIFeUfO5yjeQGM0J/m8azRAO/gGJ3hAhSFyU/Ra3PAxnqt6mjXyuMaP4RnH09Ungsc0gA==
X-Received: by 2002:a2e:b55c:: with SMTP id a28mr5012329ljn.108.1584010946521; 
 Thu, 12 Mar 2020 04:02:26 -0700 (PDT)
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.170.18])
 by smtp.gmail.com with ESMTPSA id b3sm7342740ljj.46.2020.03.12.04.02.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 04:02:25 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1jCLbS-0005kD-C1; Thu, 12 Mar 2020 12:02:14 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/3] staging: greybus: loopback_test: fix build breakage
Date: Thu, 12 Mar 2020 12:01:48 +0100
Message-Id: <20200312110151.22028-1-johan@kernel.org>
X-Mailer: git-send-email 2.24.1
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Axel Haslam <ahaslam@baylibre.com>, Johan Hovold <johan@kernel.org>,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The loopback_test tool hasn't received much love lately. In fact, it has
failed to build for the past two years after a scripted EPOLL*
conversion.

Newer GCC also started warning for potential string truncation of
generated path names; the last two patches addresses that.

Johan


Johan Hovold (3):
  staging: greybus: loopback_test: fix poll-mask build breakage
  staging: greybus: loopback_test: fix potential path truncation
  staging: greybus: loopback_test: fix potential path truncations

 drivers/staging/greybus/tools/loopback_test.c | 21 ++++++++++---------
 1 file changed, 11 insertions(+), 10 deletions(-)

-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
