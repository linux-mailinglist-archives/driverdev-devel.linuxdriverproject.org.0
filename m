Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (unknown [IPv6:2605:bc80:3010:0:a800:ff:fe79:d16b])
	by mail.lfdr.de (Postfix) with ESMTPS id 171BD5B06A1
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Sep 2022 16:31:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F35941570;
	Wed,  7 Sep 2022 14:31:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F35941570
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9aDk9pyeiBaL; Wed,  7 Sep 2022 14:31:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7541C41554;
	Wed,  7 Sep 2022 14:31:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7541C41554
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7C4641BF28D
 for <devel@linuxdriverproject.org>; Wed,  7 Sep 2022 14:31:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 64E66827FD
 for <devel@linuxdriverproject.org>; Wed,  7 Sep 2022 14:31:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64E66827FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KuJLDrPU7mbE for <devel@linuxdriverproject.org>;
 Wed,  7 Sep 2022 14:31:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7DD282813
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com
 [IPv6:2a00:1450:4864:20::642])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B7DD282813
 for <devel@driverdev.osuosl.org>; Wed,  7 Sep 2022 14:31:16 +0000 (UTC)
Received: by mail-ej1-x642.google.com with SMTP id gh9so8900323ejc.8
 for <devel@driverdev.osuosl.org>; Wed, 07 Sep 2022 07:31:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date;
 bh=UTPjlhWN0j/3cl0uibj9IdU3K9tIHCNTd74bAPWV+BQ=;
 b=XMSpOcEIWpkzoDHwdYS8hzS7pXQonXLNW9EaHfGRW88w7ajKqMyAR3Z4J0cA6LymyM
 PXJJcBdaPIG5Mq7R7jxobZeVlaMqXFco07Vysz2idqSMnKAyHZJ2QvlKFcA0ylEFsYUX
 7cBgQKRIux97ofZTbYZvfeKLHo8eE4QWmR7O9gw9FJGKelRSeTZcwwqKdZflFfc+EEhD
 aXF6WVuxrhBDnxoT9LX0nM0BGmIXst86AVVRYWTCMGGb4iU8gjcA+kR/UNIgXcH3umWf
 azlUsQ2qYmLQYt5cDlDLNC3le2epPx2RAxLt8Q2P7qRUZA6bH+OtvZ7XKe3oN4244dSL
 0UAQ==
X-Gm-Message-State: ACgBeo21T1ZWri5GLGL/g0OUv59h6zWJyfHq7C4hMDFUw4YzwCUbEAoq
 LOdbVWzXg1wxCDYwOg69wSGHb8ckTuT6j9pFg5k=
X-Google-Smtp-Source: AA6agR7OKiKkSx+MbdKnn4tKaQhdmVzFj2krU0Vhk4MjDetoGwDDBbw+8TT3Fj+g2bgbPAiBcK/73KQpnrd5Cpv4s3c=
X-Received: by 2002:a17:907:75ec:b0:741:484b:3ca4 with SMTP id
 jz12-20020a17090775ec00b00741484b3ca4mr2508106ejc.316.1662561074796; Wed, 07
 Sep 2022 07:31:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:3fc4:0:0:0:0:0 with HTTP;
 Wed, 7 Sep 2022 07:31:14 -0700 (PDT)
From: LUMAR CASEY <miriankushrat@gmail.com>
Date: Wed, 7 Sep 2022 16:31:14 +0200
Message-ID: <CAO4StN0fh9iLpvL71MAvphxmFm4ur7+Op=qm5oJuhdRZZPJ3cA@mail.gmail.com>
Subject: ATTENTION/PROPOSAL
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date;
 bh=UTPjlhWN0j/3cl0uibj9IdU3K9tIHCNTd74bAPWV+BQ=;
 b=boA3graP4wtJe8cwRxkMJy5rso3t9xyj4fxUFsG0Fez1aWDY0C6gZpYPvm/Hxa5tX5
 Zk+XDE4h4sSr3Kc7gAmKt5OJ7AP3AEEipJ5m7D7tQ5BTHkXWMmIdiC/g3MqGg04yG8Wz
 mFTYUlKwIYoLI0bvi9Q3MSV1athb174l2Ms/7z+L0TzD2CQLBWt0bOa5Jg9CBAeygplA
 zqROn488xUY/B608ffA8/XOsolF390gA0UeCbMrgWX87LxLuf34XOCHn+1VgcYnMY7Sr
 klavsMj/u/K0iLTegE+9syCXTdcAl7jimLLfNxQJoiGWtjh15Idxzz9bfpV/1Jhy4Wly
 oLRA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=boA3graP
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
Reply-To: lumar.casey@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ATTENTION

BUSINESS PARTNER,

I AM LUMAR CASEY WORKING WITH AN INSURANCE FINANCIAL INSTITUTE, WITH
MY POSITION AND PRIVILEGES I WAS ABLE TO SOURCE OUT AN OVER DUE
PAYMENT OF 12.8 MILLION POUNDS THAT IS NOW SECURED WITH A SHIPPING
DIPLOMATIC OUTLET.

I AM SEEKING YOUR PARTNERSHIP TO RECEIVE THIS CONSIGNMENT AS AS MY
PARTNER TO INVEST THIS FUND INTO A PROSPEROUS INVESTMENT VENTURE IN
YOUR COUNTRY.

I AWAIT YOUR REPLY TO ENABLE US PROCEED WITH THIS BUSINESS PARTNERSHIP TOGETHER.

REGARDS,

LUMAR CASEY
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
