Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBE2296A0
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 13:08:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB4DE87FED;
	Fri, 24 May 2019 11:08:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MfS062igJ1XY; Fri, 24 May 2019 11:08:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 370F387FBF;
	Fri, 24 May 2019 11:08:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A40F1BF30F
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 11:08:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1781E22794
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 11:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UFpkSIYdkUHT for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 11:08:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by silver.osuosl.org (Postfix) with ESMTPS id CB9F4214EC
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 11:08:13 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id n134so6804369lfn.11
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 04:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fAh5sTUfLqIpXw6XnDPa1VaK8Bc9ulk6b5eIRhj46IM=;
 b=QAGzqLK6WR4AjanSSfDZWs9ZHMTszOZ9CxmYlvkVBWa6b+R0iP6X5FnHBfVOW4HsCJ
 Dkml9rIVF4naBaAFe3CMKolO69WufsL8tB5ncI1QsKDINnlArh+UtOOQKjCPI8HovD0z
 oA/5IQ4ZTD2eJjoyW2TBronTQvzRTHwub/HocuXhCuffvOwh9HnytAtQRu4ZKMTQ2q7J
 vvEgPBUIaCJuKcFKZy99K6lihzvhMRovgnWay9gvlsAJZxADSHH6XpsRbtlAQKLICy/+
 3fENtVB8vf6BKjoZhuHTxLerNVp5SKEPHm2VqoSvOgUkFLA5GhJb/jzuH8lut0qOYCDW
 LQMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fAh5sTUfLqIpXw6XnDPa1VaK8Bc9ulk6b5eIRhj46IM=;
 b=YKzYKvbegRpnn5K3r+ptQMR3SJs5twOEOMbV5J9KU2Iy9c6MpRLQjQsAR1CxSbTpaI
 3nXLQaRmiSX2E1XwqtcaWhlRMPmW1mrb2Ki0QvzGRHoY7X6HR7Ll6stJE3PRHA7lVz2J
 1ViXm9GMxc5GKB8XBBEDmLohAWiMPkO+Coo4daYc/TWrjoO+kx9nNxWB/Fb9/IJ2MqCt
 ettn0mVAfiYlJ4jnJWKVhUQzRTAb+q3Z3UBAEjBmtrYLuu8SSpQXcijRm67GEPHetAzm
 X8yMS6HwBfW6wtRDeLYcgrXqBpWjho6nLj5SbEDFWuGasKVsX88V6zNdAmiChlbfEJSg
 uq+g==
X-Gm-Message-State: APjAAAWbjkwII6vJgOCwBdXePXraMaFSYmh8XdNhr6YoiZ2D3d988nGR
 /AKnBqMNrzsDt2UUDD2kbk0RPg==
X-Google-Smtp-Source: APXvYqxT0j/iZqyCj2K7bA4yMbxZBQvW87xsNXRY9jnQBVbo40USBps7+1+5s2igJ24I/Zvu3oqn9w==
X-Received: by 2002:a19:700b:: with SMTP id h11mr5032428lfc.25.1558696091132; 
 Fri, 24 May 2019 04:08:11 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id x21sm446234ljj.43.2019.05.24.04.08.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 04:08:10 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/4] staging: kpc2000: remove extra blank line in core.c
Date: Fri, 24 May 2019 13:08:00 +0200
Message-Id: <20190524110802.2953-3-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524110802.2953-1-simon@nikanor.nu>
References: <20190524110802.2953-1-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCBjaGVjayAiUGxlYXNlIGRvbid0IHVzZSBtdWx0aXBsZSBibGFu
ayBsaW5lcyIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1vbkBuaWthbm9y
Lm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jIHwgMSAtCiAx
IGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2lu
Zy9rcGMyMDAwL2twYzIwMDAvY29yZS5jIGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAw
MC9jb3JlLmMKaW5kZXggYjQ2NDk3M2QxMmFkLi40MGY2NWY5Njk4NmIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2lu
Zy9rcGMyMDAwL2twYzIwMDAvY29yZS5jCkBAIC0yNjIsNyArMjYyLDYgQEAgc3RhdGljIGludCBr
cDIwMDBfY2Rldl9jbG9zZShzdHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmlscCkK
IAlyZXR1cm4gMDsKIH0KIAotCiBzdGF0aWMgc3NpemVfdCBrcDIwMDBfY2Rldl9yZWFkKHN0cnVj
dCBmaWxlICpmaWxwLCBjaGFyIF9fdXNlciAqYnVmLAogCQkJCXNpemVfdCBjb3VudCwgbG9mZl90
ICpmX3BvcykKIHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
