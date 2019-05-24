Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4357729FED
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 22:31:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25D8788164;
	Fri, 24 May 2019 20:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i8r9jiVi6x1x; Fri, 24 May 2019 20:31:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D2C888154;
	Fri, 24 May 2019 20:31:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0292B1BF5DE
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 20:31:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F17ED22246
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 20:31:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kifDg9Uppk2I for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 20:31:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 5204F22008
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 20:31:07 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id y10so8058129lfl.3
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 13:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dK/1JvLa+KFDpT0Stv3jbktB6OWMlgN+u1uYZ1mqVrw=;
 b=uUXtgo59sEbRPtpAbCcNKGAiQ5WgsLW4Tnive+7Sz+9dIMiIgBORk7hOpR7tx2kLGn
 9WnepcCO8NbakfhHZjWZA5NGl24wOl7ItjZcEUsnPdElGstKbf1pLnuiBLRsXaU88AqN
 nbSR/dX7GwAUesktXwEaL2BKh+flMmmxjzL0eNI7QYMO8EiFLN1fBeFLgrYmJ5gmqkou
 PWYYaFMJChpwPLyPqIhNPshLK2r6H+XfzlygXOxKNibUe/InHCuM0oGCH/jmM2pWjeBX
 3nGn2mEa9KDBVuAa7jMFE+6hqB/3+3db7pkmrHx7w7w7ZQrHlm2IyPrJHpVvRBabfBJR
 vmQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dK/1JvLa+KFDpT0Stv3jbktB6OWMlgN+u1uYZ1mqVrw=;
 b=AwOSuvXBcE+/ZRH7SNZJk7pCH2Yri09M84Pp8ZsXQZ5/APIaQy6+Xtp2rNMYCPiQX4
 45pbY7Jr0v5zKKtnLEKZJAEXV2ytDNR+bC5oDaA51mvfkf5vEvGkShi+S6nLtnSlpzxj
 /WGh1sSCQFfZ1NTdA5nyebxT2kuz52TU1SiWXUb03hbMR8yWbn8uT5y+mDcGr6mWFzjs
 fjjTGBF+Dk/RXfzbeyEhG3SVhlaXHt1f7PkzdR8nYlXo6AoPARGt+oyb3FgYBUcmPCXh
 DkmeuMsp8ltskobH/+cx+M8nRCc1ptgOLRmMoboFByeUvqyTNVGVQ2qCg38hoZeUGA7c
 O4uw==
X-Gm-Message-State: APjAAAXeWAQ5U6j19Hz8IaPSov1uw9HEsem5jioYoiVJW2fW+A8uvhbp
 pzza+0s6TCxCPeN3pcP0VtcDoHM9URyxXw==
X-Google-Smtp-Source: APXvYqwl4t9wip3XKZDNShHedMCImAGjA97ArvuSj2apoobaboElKm+PY52jNWpvczBPyxlYjPxw+g==
X-Received: by 2002:a19:9f09:: with SMTP id i9mr17398813lfe.71.1558729865812; 
 Fri, 24 May 2019 13:31:05 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id j69sm921036ljb.72.2019.05.24.13.31.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 13:31:05 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: kpc2000: add missing dependencies for kpc2000
Date: Fri, 24 May 2019 22:30:58 +0200
Message-Id: <20190524203058.30022-3-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524203058.30022-1-simon@nikanor.nu>
References: <20190524203058.30022-1-simon@nikanor.nu>
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

Rml4ZXMgYnVpbGQgZXJyb3JzOgoKRVJST1I6ICJtZmRfcmVtb3ZlX2RldmljZXMiIFtrcGMyMDAw
LmtvXSB1bmRlZmluZWQhCkVSUk9SOiAidWlvX3VucmVnaXN0ZXJfZGV2aWNlIiBba3BjMjAwMC5r
b10gdW5kZWZpbmVkIQpFUlJPUjogIm1mZF9hZGRfZGV2aWNlcyIgW2twYzIwMDAua29dIHVuZGVm
aW5lZCEKRVJST1I6ICJfX3Vpb19yZWdpc3Rlcl9kZXZpY2UiIFtrcGMyMDAwLmtvXSB1bmRlZmlu
ZWQhCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1vbkBuaWthbm9yLm51Pgot
LS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL0tjb25maWcgfCAyICsrCiAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAv
S2NvbmZpZyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL0tjb25maWcKaW5kZXggYzQ2M2QyMzJm
MmI0Li41MTg4YjU2MTIzYWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL0tj
b25maWcKKysrIGIvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAvS2NvbmZpZwpAQCAtMyw2ICszLDgg
QEAKIGNvbmZpZyBLUEMyMDAwCiAJYm9vbCAiRGFrdHJvbmljcyBLUEMgRGV2aWNlIHN1cHBvcnQi
CiAJZGVwZW5kcyBvbiBQQ0kKKwlzZWxlY3QgTUZEX0NPUkUKKwlzZWxlY3QgVUlPCiAJaGVscAog
CSAgU2VsZWN0IHRoaXMgaWYgeW91IHdpc2ggdG8gdXNlIHRoZSBEYWt0cm9uaWNzIEtQQyBQQ0kg
ZGV2aWNlcwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
