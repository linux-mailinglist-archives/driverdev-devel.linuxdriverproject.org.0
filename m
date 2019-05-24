Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF9529FE8
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 22:31:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9CAF188C80;
	Fri, 24 May 2019 20:31:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wL3egzUjkWrn; Fri, 24 May 2019 20:31:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 317F588C41;
	Fri, 24 May 2019 20:31:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ECC8F1BF5DE
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 20:31:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E842088C48
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 20:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WcxQHWjPfq75 for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 20:31:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 53A7688C41
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 20:31:05 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id q62so9758667ljq.7
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 13:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2VsBCh+s9KIchLXCnbVZm8l0SmiHYaF8UPE8Xvrj5NA=;
 b=Gdc+4qH/wJAUx2hnZjnMydWPk0n9vEpA2RsMguRl1uTzDCEZlNcaI1siyD0ZRPTvlI
 utVAC01y/J/n/lQF3/oimf4QPC8ujrgEMfiz8IZ0uTjwLjTq0SWj/YhldFZ6IEf4mpQy
 uXHR3WEdHzyYi3reTjt9tW495B1E/sOhVlM/kRtYaHB8KvUVnOERGpCqKkT1X3rVxsB6
 HH09xCgjRG+annGgktI5P11aDkEvzaLi+6TqldK7RMJvAniy9Ju3KHCuYd+mKZ1Dqve9
 F3UwXtMUus/lFoNFRyqT0wmzRhFHgw4V8szKmdXee2X7ZVCm6bD8cyCSeOvE631TvAgz
 X90Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2VsBCh+s9KIchLXCnbVZm8l0SmiHYaF8UPE8Xvrj5NA=;
 b=dtBK7dfq29FZcqQntlnrOJPFHH3v7+BaVaPJm4JLwlqr98Ks1bTI4KOYqtq0BM3FML
 6K9yhnnTgxujDz/xP3g+SrIGNH7sBrm0kNnzt8HlZLwEVe85VB+LMB8Jz7ruMz0BUkiO
 H3FSj/V4bYB/j7ADnSb2/8INAqkhCfIm76s0UhB2ZQjib6s/xEh2u53J6qWI1aCR8hRO
 PpbS/NOJ+gMBFzIMK44rIuzJ86jxygAxAjksCt1qfMJyeowfjkdCB2BnA8+f0gtHpjMa
 MzLxJlOr4wc5QyRWukKbQiQMDhfuCrkZLOmMwV2Ngf6t+/VghewFYuSl6GBMQxqJzBVy
 Nw8g==
X-Gm-Message-State: APjAAAWDwr0q7kTNIUpoZcJzpi7LHAFgjY9uSfc7jeicVWYt4EMpxKYD
 GJesuNINIyKpW47lWLkkx97cIA==
X-Google-Smtp-Source: APXvYqwsq61RAlojvloERPnYyishobLKCAybzkWKMeuy+RobXY7kCc3R8cmKvZ2ZQgSJI5Dz8RZfDQ==
X-Received: by 2002:a2e:9e4d:: with SMTP id g13mr10478905ljk.80.1558729863750; 
 Fri, 24 May 2019 13:31:03 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id j69sm921036ljb.72.2019.05.24.13.31.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 13:31:03 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] Fixes for staging/kpc2000's Kconfig
Date: Fri, 24 May 2019 22:30:56 +0200
Message-Id: <20190524203058.30022-1-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, simon@nikanor.nu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGksCgpIZXJlIGFyZSB0d28gcGF0Y2hlcyB0aGF0IGZpeGVzIGlzc3VlcyBpbiBrcGMyMDAwJ3Mg
S2NvbmZpZy4KClRoZSBmaXJzdCBvbmUgaXMgYSB0eXBvIGZpeCAoSSdtIGd1ZXNzaW5nIEtha3Ry
b25pY3MgaXMgYSB0eXBvLi4uKS4KClRoZSBzZWNvbmQgb25lIGlzIGEgZml4IGZvciBhIGRlcGVu
ZGVuY3kgaXNzdWVzIEkgbWV0IHdoZW4gdHJ5aW5nIHRvCmJ1aWxkIGtwYzIwMDAgb24gYSBkZWZh
dWx0IHg4Nl82NCBjb25maWcuIEknbSBub3QgZmFtaWxpYXIgd2l0aCBuZWl0aGVyCk1GRCBub3Ig
VUlPLCBzbyBJJ20gbm90IHN1cmUgdGhhdCBJIHNvbHZlZCBpdCBjb3JyZWN0bHkuIE1heWJlIHRo
ZXJlIGFyZQpzb21lIG90aGVyIHRoaW5ncyB0byBjb25zaWRlciBhcyB0aGlzIGlzIGluIHN0YWdp
bmc/CgoKLSBTaW1vbgoKU2ltb24gU2FuZHN0csO2bSAoMik6CiAgc3RhZ2luZzoga3BjMjAwMDog
Zml4IHR5cG8gaW4gS2NvbmZpZwogIHN0YWdpbmc6IGtwYzIwMDA6IGFkZCBtaXNzaW5nIGRlcGVu
ZGVuY2llcyBmb3Iga3BjMjAwMAoKIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL0tjb25maWcgfCA2
ICsrKystLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
