Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DB5296A1
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 13:08:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FA7988BF0;
	Fri, 24 May 2019 11:08:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rSonPJFb82Qq; Fri, 24 May 2019 11:08:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D8C988BBD;
	Fri, 24 May 2019 11:08:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EAF0E1BF30F
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 11:08:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E38A823DA9
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 11:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ghba6iFAdRi1 for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 11:08:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 8E68B220A9
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 11:08:14 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id r76so2821262lja.12
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 04:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iAvZ7xj95SMRrKYxH9qEvr9i1qrJFj725G1wpBk6k3k=;
 b=TepqwyGsrr6ZmIQQ5JbjX8UOlMPfueXgawl7wIuu67ovdxoh8nlQWkvWxwhS13Fzm5
 YNpi4AU4flnplF2AQZXBYC8FE3AsBhgC6mEhC/udXImAPKbLV7KXHevPZtV4SbHP3L/+
 Td4tBY5ljWNOYXmh2oKbnAAlV5stOcSwex5zko0vZpYAyYrS6NYg7j06yJH4aLPdEvw1
 jRmb5r0UFEG7jwhbBGfa+Z0rKjPTAeKdvUHzRl311t39paEQ4un2CPQFoQhxO/WsIZtg
 zz8U8kHyaUS+A1XV1a8V43OUp/gP30gGMa8QAoX62fXsRuvKkdI/qVSTfV9LJSzjPe3/
 1S6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iAvZ7xj95SMRrKYxH9qEvr9i1qrJFj725G1wpBk6k3k=;
 b=Ak95aClufOJzaD/6qbvm5GZyCkhPx8GfZIN5mwSn2fOH8ucpF2QxrVsuR3yrWBfRXL
 LGu18MCzHmmx7kxFCZWA18K1Jozmrzx3UMfPA/YInR0F6ldMX/CY5lf4pvXKCTUBHWGs
 SgRo43cybwd7BM5D/LAOlzmgTt38fK/qElTGfa8TyLAKvLg0G80+AF1gelD4eDWQev02
 z4lCyQt6RFPvfrKLXxh6Gv4zginThM1pkRkPox+Nrz9vhPOokzMyhMDog6K0YKp3tkol
 uSOXmCyTh9eAxczEyZ0gL4PCBGyKa0552Wug0+XPIaHqu7+n0XCgmh9tnFZMGd5Eo+t7
 5VBQ==
X-Gm-Message-State: APjAAAXkc99gmzbd6rTEzjFZReINEU2+e/KHBhNvg0RyQz2WwKp1nCJC
 dL4AvvFoBZcqCt9qq+nHzsIU8A==
X-Google-Smtp-Source: APXvYqxuHN4jHLGtTMz3O5gVPczqJGqhlNeokkeU7WVtizNaTt6GKvt2dtBQcBE+pjVbEgc5gVuVfw==
X-Received: by 2002:a2e:9142:: with SMTP id q2mr1385520ljg.18.1558696092844;
 Fri, 24 May 2019 04:08:12 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id x21sm446234ljj.43.2019.05.24.04.08.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 04:08:12 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/4] staging: kpc2000: remove extra spaces in core.c
Date: Fri, 24 May 2019 13:08:02 +0200
Message-Id: <20190524110802.2953-5-simon@nikanor.nu>
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

Rml4ZXMgY2hlY2twYXRjaC5wbCBlcnJvciAiZm9vIF9faW5pdCAgYmFyIiBzaG91bGQgYmUgImZv
byBfX2luaXQgYmFyIgphbmQgImZvbyBfX2V4aXQgIGJhciIgc2hvdWxkIGJlICJmb28gX19leGl0
IGJhciIuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTYW5kc3Ryw7ZtIDxzaW1vbkBuaWthbm9yLm51
PgotLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jIHwgNCArKy0tCiAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jIGIvZHJpdmVycy9zdGFn
aW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMKaW5kZXggYmIzYjQyN2E3MmIxLi4zYjI0MGVmZjYy
YjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jCisr
KyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY29yZS5jCkBAIC02NTUsNyArNjU1
LDcgQEAgc3RhdGljIHN0cnVjdCBwY2lfZHJpdmVyIGtwMjAwMF9kcml2ZXJfaW5zdCA9IHsKIAku
cmVtb3ZlID0Ja3AyMDAwX3BjaWVfcmVtb3ZlLAogfTsKIAotc3RhdGljIGludCBfX2luaXQgIGtw
MjAwMF9wY2llX2luaXQodm9pZCkKK3N0YXRpYyBpbnQgX19pbml0IGtwMjAwMF9wY2llX2luaXQo
dm9pZCkKIHsKIAlrcGNfdWlvX2NsYXNzID0gY2xhc3NfY3JlYXRlKFRISVNfTU9EVUxFLCAia3Bj
X3VpbyIpOwogCWlmIChJU19FUlIoa3BjX3Vpb19jbGFzcykpCkBAIC02NjYsNyArNjY2LDcgQEAg
c3RhdGljIGludCBfX2luaXQgIGtwMjAwMF9wY2llX2luaXQodm9pZCkKIH0KIG1vZHVsZV9pbml0
KGtwMjAwMF9wY2llX2luaXQpOwogCi1zdGF0aWMgdm9pZCBfX2V4aXQgIGtwMjAwMF9wY2llX2V4
aXQodm9pZCkKK3N0YXRpYyB2b2lkIF9fZXhpdCBrcDIwMDBfcGNpZV9leGl0KHZvaWQpCiB7CiAJ
cGNpX3VucmVnaXN0ZXJfZHJpdmVyKCZrcDIwMDBfZHJpdmVyX2luc3QpOwogCWNsYXNzX2Rlc3Ry
b3koa3BjX3Vpb19jbGFzcyk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
