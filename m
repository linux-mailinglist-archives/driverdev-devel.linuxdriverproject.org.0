Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 209DA231A64
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 09:34:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C3E488089;
	Wed, 29 Jul 2020 07:34:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UfaHQeKPcleC; Wed, 29 Jul 2020 07:34:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 331B988058;
	Wed, 29 Jul 2020 07:34:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A1781BF589
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 07:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 14FF18604A
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 07:34:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nRv57KMXhPfW for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 07:34:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5090285C5C
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 07:34:06 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id t6so13814847pgq.1
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 00:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=students-iitmandi-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S46xE3v5DrbbnFv9e5puvYo4jscSSSdvbX89O6S8DDQ=;
 b=mESkiXFMivLhqN+hGYqTZVr3mN/jt1bqIxIHckD0DfO/9C3R9bmGRkrhHMyVhOQcoy
 GdkeVscfEWP1leXKC1bGouS5MufyBHXD5G5lsuoKmX3lXpZqtPrmTctMcCcKQFsY/sSG
 sijp+8fAUc11tD7KTGeRK3cdLk2PIFzkpAE04fe1OdyKz0q7s8EbN05DXiKW7xSWlvX/
 XHSxZtXofboZkPxVM2HGgyONOsMxH3TPe1/nxjEnpXp/zn5tSrb5ofRvpbIleIsRkckt
 SnpxHOdzLaI501flwHQyzGsdvrZVd/bS7XRo3Rfmjn0TC4DH3482nNrC0bAHIupJeaXT
 BGGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S46xE3v5DrbbnFv9e5puvYo4jscSSSdvbX89O6S8DDQ=;
 b=luKR/uWlWW49hqdvMERssU/pwtYgMl0UNk+nkIQ0cmlJZvqbj5cqRbeVU79o2zJMfQ
 xE4bk7AhcjmEi2nP93KdCixWyAB87S+432N9QQ/FIgSGfKELuGBp/1ua96GgBe9HN0Jk
 suFNoOl7NFl1GBpIVefpqg0joLadDi1B1eWyRWYU0fIewDFzO1v2zYTqnk+MLf3RMHtb
 Ln49MJ1Bu0OwWjlUiDlEnZ2RozSSna4yPGS5PCgVlv6LtJlJ3oeUEb5ohyWB4e/WYmDg
 0wuVAo/4QY+pchc6V1KGxlXHLjAizEluiGqmp9T4/ekiM8pIwoMJXJrTouDYADCx+jsD
 XgEw==
X-Gm-Message-State: AOAM531NadmxqzTd2QVBHyE1bIdRGjaLtr/0XIBrUg4HMwoKq7UqjKBI
 nkXvaTtX5wc7x/JvfkYuHZZXJd5927l/kpPN
X-Google-Smtp-Source: ABdhPJwEFJVQwnTn+RUWmMfKUkxfJ2XNy5pVytSLsFeiPOx7vgLfLVmhBW1T+huugVjy9C5qeKhquA==
X-Received: by 2002:a63:6fcd:: with SMTP id
 k196mr29332268pgc.251.1596008045763; 
 Wed, 29 Jul 2020 00:34:05 -0700 (PDT)
Received: from devil-VirtualBox.www.tendawifi.com ([103.198.174.215])
 by smtp.gmail.com with ESMTPSA id bv17sm1210956pjb.0.2020.07.29.00.34.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jul 2020 00:34:04 -0700 (PDT)
From: Ankit Baluni <b18007@students.iitmandi.ac.in>
To: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
 gregkh@linuxfoundation.org
Subject: [PATCH] Staging: iio: Fixed a punctuation and a spelling mistake.
Date: Wed, 29 Jul 2020 13:03:52 +0530
Message-Id: <20200729073352.1586-1-b18007@students.iitmandi.ac.in>
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
