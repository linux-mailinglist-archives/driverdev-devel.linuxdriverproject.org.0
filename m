Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C23231AEF
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 10:12:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 96CDB86C34;
	Wed, 29 Jul 2020 08:12:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RQyV8NKt2RyY; Wed, 29 Jul 2020 08:12:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D0BE386A1E;
	Wed, 29 Jul 2020 08:12:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 81B8D1BF5A1
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 08:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7E4D486A1E
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 08:12:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TAAuxMdmb3NI for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 08:12:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B43B781F27
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 08:12:18 +0000 (UTC)
Received: by mail-pf1-f182.google.com with SMTP id w126so12375463pfw.8
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 01:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=students-iitmandi-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S46xE3v5DrbbnFv9e5puvYo4jscSSSdvbX89O6S8DDQ=;
 b=PiK/1LIl8E/ZxiNOPlZOco9DGDkPa8InSq+tT3BBXy/JusYHitRQcDlma6dXh8ftfj
 AuJf5HzZMpsifHvouWzlUvFmSf9eV0+u32GHTv5nNoI3LT2PWK7u4L7XcnOjc5q55oMx
 VmKjk5ZpzVaIBk8VuoVF15/rlJFfgsjJCvFPh/HVrogN9lJ+7NOekYius/EzvM4b2nwi
 I9r/advsb8QODpGxlZJZNCw1ZfhwAU2z3vwVodmAdzL9UhBOmF0ebnmURz41vhYBzO+5
 mNTDS8uGUV4V6um2lOoPViqL93dqxUdQSn7SFCNivJ85WrEFy+J1kmDNg9AMMyXXOltL
 Lccg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S46xE3v5DrbbnFv9e5puvYo4jscSSSdvbX89O6S8DDQ=;
 b=hM7qV6tI3FXXP6Og9AunWPNsEQ6M2YfLp+WaknGHW/WGYqdUBOmX9zrK1D9txdGnaZ
 l4rbRN2suk7E+BRtJ1w+1tdpnzU8jL/OvhXVgYy9o22TG6j21o0OAQFhyvgAWt62Et/5
 kJGx1C3lay5lPg2IucdooRvNIYX8GoHK9DNOOj5IF9oqNqVgIqBSKnkQZBmvZvnOaALH
 FfIPZ7976mKmieSS3BhcoMyvuKQ3vvOkRK5n9GLma3Uu/VBOHWhN/SAj8Qlv4NCnHHOu
 cdQeY9qNntmGYHxWGXOwrrVvLM7EegW4GwimfyIbqCUX/1Gs5Ekth/wwa1H5B9jWahGw
 +dwQ==
X-Gm-Message-State: AOAM532Sl1FpPCf47Zah8ls/CiAMRWitzSg2q8DiywfICvssjij/n6o8
 iwtuoSaE87wk2HxofeQBjOXSb/9YYmfHoE1R
X-Google-Smtp-Source: ABdhPJyDQEJ/JkWYuadFiwHxJB1gNPr4kQTXQ5jj2him+TlG+sTNSnHWHZofs9Eb9EhwLTAzDULJow==
X-Received: by 2002:a62:5284:: with SMTP id g126mr2422012pfb.139.1596010338199; 
 Wed, 29 Jul 2020 01:12:18 -0700 (PDT)
Received: from devil-VirtualBox.www.tendawifi.com ([103.198.174.215])
 by smtp.gmail.com with ESMTPSA id s6sm1377206pfd.20.2020.07.29.01.12.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jul 2020 01:12:17 -0700 (PDT)
From: Ankit Baluni <b18007@students.iitmandi.ac.in>
To: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
 gregkh@linuxfoundation.org
Subject: [PATCH -v2] Staging: iio: Fixed a punctuation and a spelling mistake.
Date: Wed, 29 Jul 2020 13:41:55 +0530
Message-Id: <20200729081155.3228-1-b18007@students.iitmandi.ac.in>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CAHp75VcmMf5dt7mu9N0C=6Rej-WzZ0EpzntHYCQkgNLVZkPbgg@mail.gmail.com>
References: <CAHp75VcmMf5dt7mu9N0C=6Rej-WzZ0EpzntHYCQkgNLVZkPbgg@mail.gmail.com>
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Ankit Baluni <b18007@students.iitmandi.ac.in>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Added a missing comma and changed 'it it useful' to 'it is useful'.

Signed-off-by: Ankit Baluni <b18007@students.iitmandi.ac.in>
---
Changes in -v2:
	-Remove space before ':' in subject line.

 drivers/staging/iio/Documentation/overview.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/Documentation/overview.txt b/drivers/staging/iio/Documentation/overview.txt
index ebdc64f451d7..00409d5dab4e 100644
--- a/drivers/staging/iio/Documentation/overview.txt
+++ b/drivers/staging/iio/Documentation/overview.txt
@@ -9,7 +9,7 @@ The aim is to fill the gap between the somewhat similar hwmon and
 input subsystems.  Hwmon is very much directed at low sample rate
 sensors used in applications such as fan speed control and temperature
 measurement.  Input is, as its name suggests focused on input
-devices. In some cases there is considerable overlap between these and
+devices. In some cases, there is considerable overlap between these and
 IIO.
 
 A typical device falling into this category would be connected via SPI
@@ -38,7 +38,7 @@ series and Analog Devices ADXL345 accelerometers.  Each buffer supports
 polling to establish when data is available.
 
 * Trigger and software buffer support. In many data analysis
-applications it it useful to be able to capture data based on some
+applications it is useful to be able to capture data based on some
 external signal (trigger).  These triggers might be a data ready
 signal, a gpio line connected to some external system or an on
 processor periodic interrupt.  A single trigger may initialize data
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
