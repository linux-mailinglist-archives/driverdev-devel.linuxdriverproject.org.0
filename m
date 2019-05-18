Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B8622581
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 00:54:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C98687C70;
	Sat, 18 May 2019 22:54:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5SyEwV65rVYk; Sat, 18 May 2019 22:54:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9684D87880;
	Sat, 18 May 2019 22:54:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3CCED1BF3E3
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 38BCE87880
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hOOZcnVf1TKF for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 22:54:00 +0000 (UTC)
X-Greylist: delayed 00:06:23 by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5864287860
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 22:54:00 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id m32so12246378qtf.0
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 15:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=usp-br.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OHjKUwLAo859x2qa8l2Ned7NAR7EtunrUsrKKRhPIKU=;
 b=zyCbluClALswad88NgfOr1p1BseOf7ybjSc4wkjUWPzfpVHZ0mq1pctuzFPI/HZKQz
 H4/LKV+vB/hVob0m4v73yCL6h38gRoaaQAsUQRH/5BoAl49AqPDOkSpBfs654uU9SUWc
 VoxiA5BIiBKA2PaPWHz6GDevqYMugzie4UXH0aGV3X5EOl0CTBlHeKiATWKX+J6dlYP6
 VI+cSaf3AuxrbDByWmkTtD+7ko+lQZVafQMqU9BpD3HPcWynZ9TfTfLvsqGqplVBr+YO
 mPSVOVDR+sO3a/oVcPYl5W3kTel3Fgv2tzAIJnyoD/iT7OZXUYEuZIMqfXnWxdhp/uJv
 m6QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OHjKUwLAo859x2qa8l2Ned7NAR7EtunrUsrKKRhPIKU=;
 b=NMPsmVRUYA7UzU3hZo4ses9iPT8xZEipqBJWG1aYsoU8PXbobbe1HCxtR49wwBaraw
 2bAkc/G6iTyuequeLbe6fxbAxNuGaastGmPFIz0E0r74ZWV6PRRXhtzfJCuS4aFsQfG1
 EX81jIAjsaDTYs/UOkHMhP4brzl2MgBwdLfeaQBvZBiyilhuFMBZJZAPsK53g2HlHI4r
 3LIbDQ8qGImq53ZEgUdBmpvxCqPRtAUR3uUOpTYuBsp/CqvgSxZYsfDHDL3ldfdtw1WJ
 MyEfbPhAKD4j5QFiLrNXleSakjWzSbvwRS4wVF/efRGvWBiS/Eb+nwxXQC0E1VJ7tV4t
 1ijg==
X-Gm-Message-State: APjAAAXXxrF4XQC0sqeng6+HuWar0u3vomqvyMSLoZ2LvgfAmXkpLMyW
 hQhznaiO8x8/AIA8x2l+z1EimA==
X-Google-Smtp-Source: APXvYqyXXskoWq+bQQfwFQVGZAuLOWrfAX3Eiyap7hG8gCEAj3ysL058e7biD8lDeu0/I7VXUshmtQ==
X-Received: by 2002:ac8:2e3c:: with SMTP id r57mr56606614qta.57.1558219656607; 
 Sat, 18 May 2019 15:47:36 -0700 (PDT)
Received: from joao-pc.ime.usp.br ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id y13sm9221004qtc.21.2019.05.18.15.47.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 18 May 2019 15:47:36 -0700 (PDT)
From: =?UTF-8?q?Jo=C3=A3o=20Victor=20Marques=20de=20Oliveira?=
 <joao.marques.oliveira@usp.br>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: iio: ad9834: add of_device_id table
Date: Sat, 18 May 2019 19:47:20 -0300
Message-Id: <20190518224720.30404-1-joao.marques.oliveira@usp.br>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, linux-iio@vger.kernel.org,
 "Osvaldo M . Yasuda" <omyasuda@yahoo.com.br>, linux-kernel@vger.kernel.org,
 kernel-usp@googlegroups.com, "Thiago L . A . Miller" <tmiller@mochsl.org.br>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QWRkIGEgb2ZfZGV2aWNlX2lkIHN0cnVjdCBhcnJheSBvZl9tYXRjaF90YWJsZSB2YXJpYWJsZSBh
bmQgc3Vic2VxdWVudApjYWxsIHRvIE1PRFVMRV9ERVZJQ0VfVEFCTEUgbWFjcm8gdG8gZGV2aWNl
IHRyZWUgc3VwcG9ydC4KCkNvLWRldmVsb3BlZC1ieTogVGhpYWdvIEwuIEEuIE1pbGxlciA8dG1p
bGxlckBtb2Noc2wub3JnLmJyPgpTaWduZWQtb2ZmLWJ5OiBUaGlhZ28gTC4gQS4gTWlsbGVyIDx0
bWlsbGVyQG1vY2hzbC5vcmcuYnI+CkNvLWRldmVsb3BlZC1ieTogT3N2YWxkbyBNLiBZYXN1ZGEg
PG9teWFzdWRhQHlhaG9vLmNvbS5icj4KU2lnbmVkLW9mZi1ieTogT3N2YWxkbyBNLiBZYXN1ZGEg
PG9teWFzdWRhQHlhaG9vLmNvbS5icj4KU2lnbmVkLW9mZi1ieTogSm/Do28gVmljdG9yIE1hcnF1
ZXMgZGUgT2xpdmVpcmEgPGpvYW8ubWFycXVlcy5vbGl2ZWlyYUB1c3AuYnI+Ci0tLQogZHJpdmVy
cy9zdGFnaW5nL2lpby9mcmVxdWVuY3kvYWQ5ODM0LmMgfCAxMSArKysrKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcv
aWlvL2ZyZXF1ZW5jeS9hZDk4MzQuYyBiL2RyaXZlcnMvc3RhZ2luZy9paW8vZnJlcXVlbmN5L2Fk
OTgzNC5jCmluZGV4IDZkZTNjZDczNjNkNy4uMDM4ZDY3MzJjM2ZkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL3N0YWdpbmcvaWlvL2ZyZXF1ZW5jeS9hZDk4MzQuYworKysgYi9kcml2ZXJzL3N0YWdpbmcv
aWlvL2ZyZXF1ZW5jeS9hZDk4MzQuYwpAQCAtNTIxLDkgKzUyMSwyMCBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IHNwaV9kZXZpY2VfaWQgYWQ5ODM0X2lkW10gPSB7CiB9OwogTU9EVUxFX0RFVklDRV9U
QUJMRShzcGksIGFkOTgzNF9pZCk7CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lk
IGFkOTgzNF9vZl9tYXRjaFtdID0geworCXsuY29tcGF0aWJsZSA9ICJhZGksYWQ5ODMzIn0sCisJ
ey5jb21wYXRpYmxlID0gImFkaSxhZDk4MzQifSwKKwl7LmNvbXBhdGlibGUgPSAiYWRpLGFkOTgz
NyJ9LAorCXsuY29tcGF0aWJsZSA9ICJhZGksYWQ5ODM4In0sCisJe30KK307CisKK01PRFVMRV9E
RVZJQ0VfVEFCTEUob2YsIGFkOTgzNF9vZl9tYXRjaCk7CisKIHN0YXRpYyBzdHJ1Y3Qgc3BpX2Ry
aXZlciBhZDk4MzRfZHJpdmVyID0gewogCS5kcml2ZXIgPSB7CiAJCS5uYW1lCT0gImFkOTgzNCIs
CisJCS5vZl9tYXRjaF90YWJsZSA9IGFkOTgzNF9vZl9tYXRjaAogCX0sCiAJLnByb2JlCQk9IGFk
OTgzNF9wcm9iZSwKIAkucmVtb3ZlCQk9IGFkOTgzNF9yZW1vdmUsCi0tIAoyLjIxLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
