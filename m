Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 815212316CC
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 02:33:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6A08854DF;
	Wed, 29 Jul 2020 00:33:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qa2FZi_zAXcu; Wed, 29 Jul 2020 00:33:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 91EF584C9F;
	Wed, 29 Jul 2020 00:33:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C20801BF9AF
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 00:33:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BB7BD876B8
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 00:33:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S4+38Q2dHwJq for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 00:33:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E589C86856
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 00:33:30 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id z188so4157198pfc.6
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 17:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=students-iitmandi-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wlCxbIrWBhhWRU9uwjI+LO77lVNGAasnY8h/ahIaD9U=;
 b=dJe4buGtemAcApCKi0Z1BaIlZ8D4Di04AbjMQWiP+FlKXJmx14l6BqgxNk8o8J9mdM
 khwpQYdQorW7M8cQ1oxH9EidTa4qcoc1K66oMgA3VzXLX369I8TlCiS6MAgH0aD82xbh
 kie1RaKZn9mEoXu99rgOTjtn5uZ7l/xdYbIReqsL9+U+ncXF9A95JWL4+FEekNU6PZ/U
 wGrQzB5wgvBCJLR2oGUvHg5aK+1Q0+g+SFcoU/KRx8cGyGabq/EnXPRsd5W/kWpVSIc3
 pcfeDRVkh2Oemmtr+XCFU5ZDtTBKJPD1nkG8H/f1eULHaSRmjlW/0zIMGAuxoZLdPSvp
 uoUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wlCxbIrWBhhWRU9uwjI+LO77lVNGAasnY8h/ahIaD9U=;
 b=mbjzueVEYMWOAHRSujvSIxeSzqy/S+ffIRQqTzj4ILlzVFBbvIvTq8+Qjcu61eOmUh
 JMdcFqexQ3xwKSiPT11kqqBlvxlgYNvs6i9KZqGbDtMfLn0J+3EcP+2bmtt0kbgoaOUj
 TIGY85BIB8+ktubCPi39hOAljPlm37sMgog8anWKQe8Twf68pRnqBuO42IjG3rtjJ614
 Lfi4RdKzZPwRp1dr8hZefDxusQpMc2ZlObcMP3wthnXWuYuaAp330b7BfGhBPLVGNBk5
 58MHxIzFCjY6L+Y3kEbRlThtgV1UYabVy7mEZSzcb2KV0SmVhxFNudHGAqcOgvlLEguP
 +PcQ==
X-Gm-Message-State: AOAM530sCPo4d8z8VGNhGQnpToWO8ksZWQ24DGya2eFSGYTNXwJaY38A
 kz+4YC2aFcLJxjza+lQjiAWUXA==
X-Google-Smtp-Source: ABdhPJw1MOImB0wnsOR3dpdVzysFulP6PJlBib1doSUT8k7yf9HKXGLyoLMtZWz0HzeqDF7r06QEkA==
X-Received: by 2002:a62:d417:: with SMTP id a23mr28011275pfh.56.1595982810378; 
 Tue, 28 Jul 2020 17:33:30 -0700 (PDT)
Received: from devil-VirtualBox.www.tendawifi.com ([103.198.174.215])
 by smtp.gmail.com with ESMTPSA id m17sm202547pfo.182.2020.07.28.17.33.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jul 2020 17:33:29 -0700 (PDT)
From: Ankit Baluni <b18007@students.iitmandi.ac.in>
To: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
 gregkh@linuxfoundation.org
Subject: [PATCH] Staging : iio : Fixed a punctuation and a spelling mistake.
Date: Wed, 29 Jul 2020 06:02:43 +0530
Message-Id: <20200729003243.32097-1-b18007@students.iitmandi.ac.in>
X-Mailer: git-send-email 2.25.1
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
