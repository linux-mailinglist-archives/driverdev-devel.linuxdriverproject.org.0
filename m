Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5847AA9698
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2019 00:40:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D92FA86A61;
	Wed,  4 Sep 2019 22:40:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nveHkWM3Gqsl; Wed,  4 Sep 2019 22:40:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 855CC86A24;
	Wed,  4 Sep 2019 22:40:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AAA2B1BF31A
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 22:40:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9BC15230FD
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 22:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aH1RY33I8-Jj for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 22:40:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by silver.osuosl.org (Postfix) with ESMTPS id BB05122F05
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 22:40:03 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id r5so475574qtd.0
 for <devel@driverdev.osuosl.org>; Wed, 04 Sep 2019 15:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HnUeqUgvHmEsTezEaxVg2P6RFT85Zk7uuJIhbn7279Y=;
 b=pHvO1Y9pNOVKwRDHUIFgh/rciGlFlYVWTkT0XBPv3nosE3PGDq9qMpuxybiiIAGv+e
 u1DXeKgOt8lvb3xWzxLbn3rXD8Y543Cn6/f/S0fTlQJ6G6vexCPK09TX1fpmWfEW3VC8
 1O0W2KL70cG2ClE3xVKoRW1RCvdz6CGu49Pfadneo99ROd27P3CrwHzIN1Jt/qytAZI0
 yu4BMgLor1zn5Z75g9el0823gTTlROvmhmqDtDpQxLhA/g08zB7EKeAgCWJXY7qsw8YF
 w1NOUlfLyLJ49HAykmfTN7k1d5tqxaRCuCVdRD7PEISkHjDWi3NxNA0FDU+aUcrH4K39
 RKfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HnUeqUgvHmEsTezEaxVg2P6RFT85Zk7uuJIhbn7279Y=;
 b=bP04QEROD9f1taY8vC0U9rd5lW0496hBBhrCD3quKLX4jz4GhZTVB+NAc48VOtpYMX
 Qde8W+PV9rd5ogQfdBr11oH0ZrfvKFROuC6hlltbiVyto+46Q8S/AO8mJKNtw2RsRJN3
 mkaAlqekLlU+dG+EQm7YHSDONA3SqCjgkuhA81GDbgV8wkmaeVgcKhdz5W6Vya4bG3ed
 5+Yn1Uq98I51CeCRh0OKodcE2cMw8SUbwCdRs+Lwhm65x2CFh1u07tOgxWsEoXKCh3eS
 oFn5E3+U217TtPIuXCGbJs4fhl65sl7jXuIC5T56DTYLo5gfPMaWsQgx2FTxFkMV66WM
 87WQ==
X-Gm-Message-State: APjAAAV7lvx9ewqXTKP+SrpaaOSmOWu5pX8U45tSfOleyJYbx2tQvuQU
 zJlV5CL5ZUUR7hrBhKbzqlGj0h+QWebkEZgqUQg=
X-Google-Smtp-Source: APXvYqyH3l5wJ+MhaBXYfkRtMRlhZBfMa58sa4xh3qswk4Z/y/j0Dvr7JPVsQW+3Jh0f/2/JjsSBQjhIBEdTRPhtZ3M=
X-Received: by 2002:a0c:fba4:: with SMTP id m4mr74237qvp.136.1567636802622;
 Wed, 04 Sep 2019 15:40:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190904082232.GA171180@LGEARND20B15>
 <20190904084525.GB4925@kroah.com>
In-Reply-To: <20190904084525.GB4925@kroah.com>
From: Austin Kim <austindh.kim@gmail.com>
Date: Thu, 5 Sep 2019 07:39:53 +0900
Message-ID: <CADLLry5WHSTyWzRa0bg0Dsnm8rO-cVF=i1CkzKN+DMXv9wq-Xw@mail.gmail.com>
Subject: Re: [PATCH] media: meson: Add NULL check after the call to kmalloc()
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: mjourdan@baylibre.com, devel@driverdev.osuosl.org, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjAxOeuFhCA57JuUIDTsnbwgKOyImCkg7Jik7ZuEIDU6NDUsIEdyZWcgS0ggPGdyZWdraEBsaW51
eGZvdW5kYXRpb24ub3JnPuuLmOydtCDsnpHshLE6Cj4KPiBPbiBXZWQsIFNlcCAwNCwgMjAxOSBh
dCAwNToyMjozMlBNICswOTAwLCBBdXN0aW4gS2ltIHdyb3RlOgo+ID4gSWYgdGhlIGttYWxsb2Mo
KSByZXR1cm4gTlVMTCwgdGhlIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSB3aWxsIG9jY3VyLgo+
ID4gICAgICAgbmV3X3RzLT50cyA9IHRzOwo+ID4KPiA+IEFkZCBleGNlcHRpb24gY2hlY2sgYWZ0
ZXIgdGhlIGNhbGwgdG8ga21hbGxvYygpIGlzIG1hZGUuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTog
QXVzdGluIEtpbSA8YXVzdGluZGgua2ltQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMv
c3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL3ZkZWNfaGVscGVycy5jIHwgNCArKysrCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvbWVzb24vdmRlYy92ZGVjX2hlbHBlcnMuYyBiL2RyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9tZXNvbi92ZGVjL3ZkZWNfaGVscGVycy5jCj4gPiBpbmRleCBmMTY5NDhiLi5lN2U1
NmQ1IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL21lc29uL3ZkZWMvdmRl
Y19oZWxwZXJzLmMKPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL3Zk
ZWNfaGVscGVycy5jCj4gPiBAQCAtMjA2LDYgKzIwNiwxMCBAQCB2b2lkIGFtdmRlY19hZGRfdHNf
cmVvcmRlcihzdHJ1Y3QgYW12ZGVjX3Nlc3Npb24gKnNlc3MsIHU2NCB0cywgdTMyIG9mZnNldCkK
PiA+ICAgICAgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gPgo+ID4gICAgICAgbmV3X3RzID0ga21h
bGxvYyhzaXplb2YoKm5ld190cyksIEdGUF9LRVJORUwpOwo+ID4gKyAgICAgaWYgKCFuZXdfdHMp
IHsKPiA+ICsgICAgICAgICAgICAgZGV2X2VycihzZXNzLT5jb3JlLT5kZXYsICJGYWlsZWQgdG8g
a21hbGxvYygpXG4iKTsKPgo+IERpZCB5b3UgcnVuIHRoaXMgdGhyb3VnaCBjaGVja3BhdGNoPyAg
SSB0aGluayBpdCB3aWxsIHNheSB0aGF0IHRoaXMgbGluZQo+IGlzIG5vdCBvay4KPgo+ID4gKyAg
ICAgICAgICAgICByZXR1cm47Cj4KPiBTaG91bGRuJ3QgeW91IHJldHVybiBhbiAtRU5PTUVNIGVy
cm9yIHNvbWVob3c/CgpJIGFncmVlZCB3aXRoIHlvdXIgZmVlZGJhY2suCkxldCBtZSB0YWtlIGEg
bG9vayBhdCB0aGUgY29kZSBtb3JlIGFuZCB0aGVuIHJlc2VuZCB0aGUgcGF0Y2ggaWYgbmVjZXNz
YXJ5LgoKVGhhbmtzLApBdXN0aW4gS2ltCj4KPiB0aGFua3MsCj4KPiBncmVnIGstaApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
