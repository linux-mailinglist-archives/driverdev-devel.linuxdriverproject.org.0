Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BBB3B115
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 10:45:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BF7A86D63;
	Mon, 10 Jun 2019 08:45:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ls6o+Kkj7ueE; Mon, 10 Jun 2019 08:45:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CFFD859C9;
	Mon, 10 Jun 2019 08:45:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A04471BF3CB
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 08:44:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9CCA620111
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 08:44:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WHacDfDpSkyi for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 08:44:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by silver.osuosl.org (Postfix) with ESMTPS id EE7CC2010E
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 08:44:51 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id 131so7142124ljf.4
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 01:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=viMSGsc2sH0W4IamaJJExlMYXXNFTJxIq9rBwrE28ZY=;
 b=XzZad7db3BzZ+fs690M8G/7gjIdkmNFjn87kBq8NB4vwHApSl3dvbKDaEGMnLyEbJT
 S2jBdwEIQoat/s5EhPGVUoU7i2MtFO9extCYw1u1l6ZWplHwsd9G0M9CHwklY559gtgZ
 yQ/yibKNitRd116j5OwhJHvOAQEkPZiWo/VnIqi4bt7jj2o0jInEn6w0TK6hG/dTWiUZ
 5LW1ZZ/NMk6F1mGVCpjpr4gWvW//8p5Ri6LNX1Bq7faMHNG+wfDQtZIzre19vj/1cRO+
 Pe6t8kPTpMZRLgHsdfdxJE4MQSsUK74nm2dHz1Qyva/34Sifnp/aURX4N4OwD7AhrXZq
 DO2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=viMSGsc2sH0W4IamaJJExlMYXXNFTJxIq9rBwrE28ZY=;
 b=ieSiYj/RDJmCh9pW4V9ziLC89JNIzWkwbMPQknSRII0N86Ytd2I/D9CSZXfIBplwuc
 F4nI1nOpIHHEdejgvjLckhgvUR5nUE8M166pyqLQOkdX7/hS+w9U2Lrg+Dx/Tl3/FIYB
 5ZvaKimW9Tpl/dVYa5dRgiyMNanrNxyYDqE9IXAyvAJr3E0Ca2bLx+U40yG+9JRcjsQo
 /9Erp3wTydKzMgk/lcQr2/N8QI9BcVG2LtN1S7rzp7eD03Pwby7VW8yX8KjNrs9mLMlh
 EBXaAvZlnXAZw+JEmjx62mmfvIu8n9kREHQaqPCTAbEXITxwSUPbM442NcXIFvN/w4vi
 kHlA==
X-Gm-Message-State: APjAAAXTkrLS2GtF9WE4yA9RvlDdtT5xSOM8ITf4EzedC1MUVgFvyd4n
 2QWUu5vixig0ClsCYqyA6cl5XQ==
X-Google-Smtp-Source: APXvYqx39pIo8wgQDowe84y2NSSgUtjyhTm+QhSfv07LWWIofmxuaKXLJTf9/+XwfECUA1AzDovlCg==
X-Received: by 2002:a2e:824d:: with SMTP id j13mr34494963ljh.137.1560156289819; 
 Mon, 10 Jun 2019 01:44:49 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id e26sm1826486ljl.33.2019.06.10.01.44.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 01:44:49 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/5] staging: kpc2000: remove unnecessary debug prints in
 cell_probe.c
Date: Mon, 10 Jun 2019 10:44:28 +0200
Message-Id: <20190610084432.12597-2-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610084432.12597-1-simon@nikanor.nu>
References: <20190610084432.12597-1-simon@nikanor.nu>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>, =simon@nikanor.nu,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVidWcgcHJpbnRzIHRoYXQgYXJlIHVzZWQgb25seSB0byBpbmZvcm0gYWJvdXQgZnVuY3Rpb24g
ZW50cnkgb3IgZXhpdApjYW4gYmUgcmVtb3ZlZCBhcyBmdHJhY2UgY2FuIGJlIHVzZWQgdG8gZ2V0
IHRoaXMgaW5mb3JtYXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1v
bkBuaWthbm9yLm51PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9w
cm9iZS5jIHwgNSAtLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2JlLmMgYi9kcml2
ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYwppbmRleCBmNzMxYTk3YzZj
YWMuLjEzOGQxNmJjZjZlMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3Bj
MjAwMC9jZWxsX3Byb2JlLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9j
ZWxsX3Byb2JlLmMKQEAgLTM0NCw4ICszNDQsNiBAQCBzdGF0aWMgaW50ICBjcmVhdGVfZG1hX2Vu
Z2luZV9jb3JlKHN0cnVjdCBrcDIwMDBfZGV2aWNlICpwY2FyZCwgc2l6ZV90IGVuZ2luZV9yZQog
CXN0cnVjdCBtZmRfY2VsbCAgY2VsbCA9IHsgLmlkID0gZW5naW5lX251bSB9OwogCXN0cnVjdCBy
ZXNvdXJjZSAgcmVzb3VyY2VzWzJdOwogCi0JZGV2X2RiZygmcGNhcmQtPnBkZXYtPmRldiwgImNy
ZWF0ZV9kbWFfY29yZShwY2FyZCA9IFslcF0sIGVuZ2luZV9yZWdzX29mZnNldCA9ICV6eCwgZW5n
aW5lX251bSA9ICVkKVxuIiwgcGNhcmQsIGVuZ2luZV9yZWdzX29mZnNldCwgZW5naW5lX251bSk7
Ci0KIAljZWxsLnBsYXRmb3JtX2RhdGEgPSBOVUxMOwogCWNlbGwucGRhdGFfc2l6ZSA9IDA7CiAJ
Y2VsbC5uYW1lID0gS1BfRFJJVkVSX05BTUVfRE1BX0NPTlRST0xMRVI7CkBAIC00MTQsOSArNDEy
LDYgQEAgaW50ICBrcDIwMDBfcHJvYmVfY29yZXMoc3RydWN0IGtwMjAwMF9kZXZpY2UgKnBjYXJk
KQogCXVuc2lnbmVkIGludCBoaWdoZXN0X2NvcmVfaWQgPSAwOwogCXN0cnVjdCBjb3JlX3RhYmxl
X2VudHJ5IGN0ZTsKIAotCWRldl9kYmcoJnBjYXJkLT5wZGV2LT5kZXYsICIlcyhwY2FyZCA9ICVw
IC8gJWQpXG4iLCBfX2Z1bmNfXywgcGNhcmQsCi0JCXBjYXJkLT5jYXJkX251bSk7Ci0KIAllcnIg
PSBrcDIwMDBfc2V0dXBfZG1hX2NvbnRyb2xsZXIocGNhcmQpOwogCWlmIChlcnIpCiAJCXJldHVy
biBlcnI7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
