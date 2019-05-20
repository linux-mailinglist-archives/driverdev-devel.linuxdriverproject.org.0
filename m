Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8252313B
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 12:22:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 02819854E0;
	Mon, 20 May 2019 10:22:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8REGNj0-LcJv; Mon, 20 May 2019 10:22:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1698F854A7;
	Mon, 20 May 2019 10:22:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E63181BF312
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 10:22:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DB1C422721
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 10:22:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jDtphYdedrBc for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 10:22:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by silver.osuosl.org (Postfix) with ESMTPS id CDFA921546
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 10:22:14 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id w144so9515584oie.12
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 03:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gf8a2CWXs6unmM0ywBfWQHpD8xCycAe3VfTrL7MXDsM=;
 b=boYT4G9MOWMG2RrhzCRovJZ8/7Ed9KIvBmALcMOr8nSuEmLpfbKzTSbyxe3mCmh9gd
 TqKBpmGBawMGBiTvIvpCGZNssjOvmvsAJt4j19dCt4mk2VxMRjsAXPg8lztI4CUH8R0q
 7AYbXzUmAvgv8c8f1Re3wjpgM3VtfWe5vWUbLj1N8uNDNMDe5fNDeiGgu/gs3i3oY4lm
 R4RrP+17sMxJgu0T2Etyi/4EYsyrWANtIBLIwavFW9IkqBOM6mDPDhcPLRBK5DRQ5y7E
 eKOn54sAQSeQHs8QbeOCzrt98jqLIGI1p769rZ3UHsCAbxoCvpTR4TjnGsjSFlDyS/IW
 ML7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gf8a2CWXs6unmM0ywBfWQHpD8xCycAe3VfTrL7MXDsM=;
 b=E2cq4WxoT0XgUPml8mE9RN+dgg2BASBgXM8AFQC7jT9ipMXwTpvQcZAG2jHSHWxPpj
 Kw86xXdpEVerRCMNs2lmjUvkmVKuNNiM6HQg2ZypOfmaEpj5TrEwGO64vYcIN9Gvb0Fa
 YWeJVyNsZc7H0abpYmwNTZ6Aw1utAEmtpEeYrAMUTkwGv/653qbC0tg0oGiwBngWggwd
 em7LV+t5fP4k6RjKOd8cXuZgQiAhBYy1weJn8gXTYzKD+GshGw542DFpyZIfJsYKNhEh
 clqyr8296go9ALNnrkDS7AJvmurJRzc1V3O3XME1Lk5zLU5CbYO5c6nYF67WrxijutXX
 rXzQ==
X-Gm-Message-State: APjAAAUayDGcU+kKUpeuwL76aM7xxC/+0hMxQ5ILWF7nXmwZ+fLpCrH5
 33PJMKm6izVgu/ozsm8WWrcAvSIpyP0z+tL/jJc=
X-Google-Smtp-Source: APXvYqyA2XSun70bicRTlY+wgyg11ZobNwmBsYdVyWi1auaMlBTiksqi4iL92IMRit1ObIk+4dC/R2HSIj+I68nEofY=
X-Received: by 2002:aca:4341:: with SMTP id q62mr17844736oia.140.1558347734073; 
 Mon, 20 May 2019 03:22:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190518224435.18266-1-barbara.fernandes@usp.br>
 <20190519114634.0e2a9389@archlinux>
In-Reply-To: <20190519114634.0e2a9389@archlinux>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Mon, 20 May 2019 13:22:02 +0300
Message-ID: <CA+U=DspVbb7UoyThsEG5kqJ+9D2TJtUixF846TkQwFMdaqCpqw@mail.gmail.com>
Subject: Re: [RESEND PATCH] staging: iio: ad7192: create of_device_id array
To: Jonathan Cameron <jic23@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Wilson Sales <spoonm@spoonm.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 =?UTF-8?Q?B=C3=A1rbara_Fernandes?= <barbara.fernandes@usp.br>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU3VuLCBNYXkgMTksIDIwMTkgYXQgODo1MyBQTSBKb25hdGhhbiBDYW1lcm9uIDxqaWMyM0Br
ZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIFNhdCwgMTggTWF5IDIwMTkgMTk6NDQ6MzUgLTAzMDAK
PiBCw6FyYmFyYSBGZXJuYW5kZXMgPGJhcmJhcmEuZmVybmFuZGVzQHVzcC5icj4gd3JvdGU6Cj4K
CkkgZG9uJ3QgaGF2ZSBhbnl0aGluZyBlbHNlIG9uIHRvcCBvZiB3aGF0IEpvbmF0aGFuIGFkZGVk
LgoKQWNrZWQtYnk6IEFsZXhhbmRydSBBcmRlbGVhbiA8YWxleGFuZHJ1LmFyZGVsZWFuQGFuYWxv
Zy5jb20+CgpDQy1pbmcgbXkgd29yay1lbWFpbApUaGVyZSBhcmUgc29tZSBpc3N1ZXMgd2l0aCBp
dCBhbmQgbWFpbGluZyBsaXN0czsgSSdsbCBob3BlZnVsbHkgc29ydAp0aGVtIG91dCBpbiB0aGUg
bmV4dCB3ZWVrcy4KCj4gPiBDcmVhdGUgbGlzdCBvZiBjb21wYXRpYmxlIGRldmljZSBpZHMgdG8g
YmUgbWF0Y2hlZCB3aXRoIHRob3NlIHN0YXRlZCBpbgo+ID4gdGhlIGRldmljZSB0cmVlLgo+ID4K
PiA+IFNpZ25lZC1vZmYtYnk6IELDoXJiYXJhIEZlcm5hbmRlcyA8YmFyYmFyYS5mZXJuYW5kZXNA
dXNwLmJyPgo+ID4gU2lnbmVkLW9mZi1ieTogV2lsc29uIFNhbGVzIDxzcG9vbm1Ac3Bvb25tLm9y
Zz4KPiA+IENvLWRldmVsb3BlZCBieTogV2lsc29uIFNhbGVzIDxzcG9vbm1Ac3Bvb25tLm9yZz4K
PiBIaSBCw6FyYmFyYSwgV2lsc29uLAo+Cj4gT25lIG1pbm9yIGlzc3VlIGlubGluZSBhYm91dCBj
b2RlIG9yZGVyaW5nLgo+IEFjdHVhbCBjb250ZW50IGlzIGZpbmUuCj4KPiBUaGFua3MsCj4KPiBK
b25hdGhhbgo+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3N0YWdpbmcvaWlvL2FkYy9hZDcxOTIuYyB8
IDEyICsrKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCj4g
Pgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9paW8vYWRjL2FkNzE5Mi5jIGIvZHJp
dmVycy9zdGFnaW5nL2lpby9hZGMvYWQ3MTkyLmMKPiA+IGluZGV4IDNkNzRkYTlkMzdlNy4uY2M4
ODZmOTQ0ZGJmIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL2lpby9hZGMvYWQ3MTky
LmMKPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9paW8vYWRjL2FkNzE5Mi5jCj4gPiBAQCAtODEw
LDExICs4MTAsMjMgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzcGlfZGV2aWNlX2lkIGFkNzE5Ml9p
ZFtdID0gewo+ID4gICAgICAgeyJhZDcxOTUiLCBJRF9BRDcxOTV9LAo+ID4gICAgICAge30KPiA+
ICB9Owo+ID4gKwo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGFkNzE5Ml9v
Zl9zcGlfbWF0Y2hbXSA9IHsKPiA+ICsgICAgIHsgLmNvbXBhdGlibGUgPSAiYWRpLGFkNzE5MCIg
fSwKPiA+ICsgICAgIHsgLmNvbXBhdGlibGUgPSAiYWRpLGFkNzE5MiIgfSwKPiA+ICsgICAgIHsg
LmNvbXBhdGlibGUgPSAiYWRpLGFkNzE5MyIgfSwKPiA+ICsgICAgIHsgLmNvbXBhdGlibGUgPSAi
YWRpLGFkNzE5NSIgfSwKPiA+ICsgICAgIHt9Cj4gPiArfTsKPiA+ICsKPiA+ICtNT0RVTEVfREVW
SUNFX1RBQkxFKG9mLCBhZDcxOTJfb2Zfc3BpX21hdGNoKTsKPiA+ICsKPiBQbGVhc2Uga2VlcCB0
aGUgZGVjbGFyYXRpb24gb2YgdGhlIHRhYmxlIGFsb25nc2lkZSB0aGUgcmVsZXZhbnQKPiBNT0RV
TEVfREVWSUNFX1RBQkxFLgo+Cj4gSW4gc2hvcnQsIGJldHRlciB0byBoYXZlIHlvdXIgYWRkaXRp
b25zIGFmdGVyIHRoaXMgbmV4dCBsaW5lLgo+ID4gIE1PRFVMRV9ERVZJQ0VfVEFCTEUoc3BpLCBh
ZDcxOTJfaWQpOwo+ID4KPiA+ICBzdGF0aWMgc3RydWN0IHNwaV9kcml2ZXIgYWQ3MTkyX2RyaXZl
ciA9IHsKPiA+ICAgICAgIC5kcml2ZXIgPSB7Cj4gPiAgICAgICAgICAgICAgIC5uYW1lICAgPSAi
YWQ3MTkyIiwKPiA+ICsgICAgICAgICAgICAgLm9mX21hdGNoX3RhYmxlID0gYWQ3MTkyX29mX3Nw
aV9tYXRjaCwKPiA+ICAgICAgIH0sCj4gPiAgICAgICAucHJvYmUgICAgICAgICAgPSBhZDcxOTJf
cHJvYmUsCj4gPiAgICAgICAucmVtb3ZlICAgICAgICAgPSBhZDcxOTJfcmVtb3ZlLAo+Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
