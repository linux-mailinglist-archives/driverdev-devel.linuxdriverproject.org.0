Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4718AFAF1
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 12:58:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8134085D4B;
	Wed, 11 Sep 2019 10:58:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HNtJOjWJGzQD; Wed, 11 Sep 2019 10:58:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0619B8328C;
	Wed, 11 Sep 2019 10:58:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F24A1BF4D5
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 10:58:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6B69D85852
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 10:58:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2MmsJ6VC4lIf for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 10:58:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0E8698574F
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 10:58:18 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id q22so14964433ljj.2
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 03:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4/T0pBGAJHntS1Kbm8BWjyn4roEDB9HgEnnPwYPp6zU=;
 b=BMMT6gr1xD18cZuT2TTRNbmmh75K7oPCt2ItEaNQ86K3SW0V75avif6iot3oOycBSF
 mRLuGmijn5tAPGsHleo0et7lMUf8LfjAfhj3kzFt41/DDRnILbZ7aekiFmKwCuPcPype
 /tvYS4eUinsdE71SUB/71Xcs3v9Pvp1a5TGF8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4/T0pBGAJHntS1Kbm8BWjyn4roEDB9HgEnnPwYPp6zU=;
 b=d3Yl9JGGzw1eckEWC2zpaytgQ93sHttYkOZIAtlYpt194BoXwtB8PbVy+taXJJ+EDH
 DqhGQGvuKR25UL2yZwtD17shNwER8oujhKIZ1BwDrzS4WMGjmqau7V42cIBbLAVsGAH/
 3nz9w8vBoaZY/QeVoKjaG8auKeid58T20HmF5YKGC17Ar2IJVNx9poilVs9leIM3vaal
 5/SWcvpIgOvFeiet+YBxABF0wyz5JKBiotiQmn2ERgQcgBPexEi4kI6+P4wO/7YRw+Tx
 /pCqHFAS4dz4JrSc5x+2iBj/vLzNeMk6n3EaohBNZgubojubjZIDMsNlX4sdtHTnNle9
 EC7Q==
X-Gm-Message-State: APjAAAXKeXJC9WuZ3b0U3fqmLWm3RUIRaRMK0v5cZfdkAbKpUWD/u8uU
 WV+kYx/S/KvkC4slvf96b+jHuZZ+UIg72tcJ
X-Google-Smtp-Source: APXvYqyil2boGiMSLg0Y8NzlEW8ElwrhnTajdSrEDCt9REimsq6jzCwF0BLtCmTGvCXId1LN/qEiSg==
X-Received: by 2002:a2e:50b:: with SMTP id 11mr23331127ljf.11.1568199496973;
 Wed, 11 Sep 2019 03:58:16 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id x11sm5255046ljc.90.2019.09.11.03.58.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 03:58:16 -0700 (PDT)
Subject: Re: [PATCH] Staging: octeon: Avoid several usecases of strcpy
To: Dan Carpenter <dan.carpenter@oracle.com>, Sandro Volery <sandro@volery.com>
References: <20190911084956.GH15977@kadam>
 <39D8B984-479C-42D5-8431-9FF7BD3A96D6@volery.com>
 <20190911091659.GI15977@kadam>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <7a004f18-50cd-9ab0-40b0-051624f0fb95@rasmusvillemoes.dk>
Date: Wed, 11 Sep 2019 12:58:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190911091659.GI15977@kadam>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 aaro.koskinen@iki.fi, davem@davemloft.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMTEvMDkvMjAxOSAxMS4xNiwgRGFuIENhcnBlbnRlciB3cm90ZToKPiBPbiBXZWQsIFNlcCAx
MSwgMjAxOSBhdCAxMTowNDozOEFNICswMjAwLCBTYW5kcm8gVm9sZXJ5IHdyb3RlOgo+Pgo+Pgo+
Pj4gT24gMTEgU2VwIDIwMTksIGF0IDEwOjUyLCBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVy
QG9yYWNsZS5jb20+IHdyb3RlOgo+Pj4KPj4+IO+7v09uIFdlZCwgU2VwIDExLCAyMDE5IGF0IDA4
OjIzOjU5QU0gKzAyMDAsIFNhbmRybyBWb2xlcnkgd3JvdGU6Cj4+Pj4gc3RyY3B5IHdhcyB1c2Vk
IG11bHRpcGxlIHRpbWVzIGluIHN0cmNweSB0byB3cml0ZSBpbnRvIGRldi0+bmFtZS4KPj4+PiBJ
IHJlcGxhY2VkIHRoZW0gd2l0aCBzdHJzY3B5LgoKWWVzLCB0aGF0J3Mgb2J2aW91c2x5IHdoYXQg
dGhlIHBhdGNoIGRvZXMuIFRoZSBjb21taXQgbG9nIGlzIHN1cHBvc2VkIHRvCmV4cGxhaW4gX3do
eV8uCgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFNhbmRybyBWb2xlcnkgPHNhbmRyb0B2b2xlcnkuY29t
Pgo+Pj4+IC0tLQo+Pj4+IGRyaXZlcnMvc3RhZ2luZy9vY3Rlb24vZXRoZXJuZXQuYyB8IDE2ICsr
KysrKysrLS0tLS0tLS0KPj4+PiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA4IGRl
bGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9vY3Rlb24v
ZXRoZXJuZXQuYyBiL2RyaXZlcnMvc3RhZ2luZy9vY3Rlb24vZXRoZXJuZXQuYwo+Pj4+IGluZGV4
IDg4ODk0OTRhZGYxZi4uY2Y4ZTlhMjNlYmY5IDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy9vY3Rlb24vZXRoZXJuZXQuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9vY3Rlb24v
ZXRoZXJuZXQuYwo+Pj4+IEBAIC03ODQsNyArNzg0LDcgQEAgc3RhdGljIGludCBjdm1fb2N0X3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+Pj4gICAgICAgICAgICBwcml2LT5p
bW9kZSA9IENWTVhfSEVMUEVSX0lOVEVSRkFDRV9NT0RFX0RJU0FCTEVEOwo+Pj4+ICAgICAgICAg
ICAgcHJpdi0+cG9ydCA9IENWTVhfUElQX05VTV9JTlBVVF9QT1JUUzsKPj4+PiAgICAgICAgICAg
IHByaXYtPnF1ZXVlID0gLTE7Cj4+Pj4gLSAgICAgICAgICAgIHN0cmNweShkZXYtPm5hbWUsICJw
b3clZCIpOwo+Pj4+ICsgICAgICAgICAgICBzdHJzY3B5KGRldi0+bmFtZSwgInBvdyVkIiwgc2l6
ZW9mKGRldi0+bmFtZSkpOwo+Pj4KPj4+IElzIHRoZXJlIGEgcHJvZ3JhbSB3aGljaCBpcyBnZW5l
cmF0aW5nIGEgd2FybmluZyBmb3IgdGhpcyBjb2RlPyAgV2Uga25vdwo+Pj4gdGhhdCAicG93JWQi
IGlzIDYgY2hhcmFjdGVycyBhbmQgc3RhdGljIGFuYWx5c2lzIHRvb2xzIGNhbiB1bmRlcnN0YW5k
Cj4+PiB0aGlzIGNvZGUgZmluZSBzbyB3ZSBrbm93IGl0J3Mgc2FmZS4KPj4KPj4gV2VsbCBJIHdh
cyBjb25mdXNlZCB0b28gYnV0IGNoZWNrcGF0Y2ggY29tcGxhaW5lZCBhYm91dCAKPj4gaXQgc28g
SSBmaWd1cmVkIEknZCBjbGVhbiBpdCB1cCBxdWljawo+IAo+IEFoLiAgSXQncyBhIG5ldyBjaGVj
a3BhdGNoIHdhcm5pbmcuICBJIGRvbid0IGNhcmUgaW4gdGhhdCBjYXNlLiAgSSdtCj4gZmluZSB3
aXRoIHJlcGxhY2luZyBhbGwgb2YgdGhlc2UgaW4gdGhhdCBjYXNlLgoKQnV0IHdoeT8gSXQgYWN0
dWFsbHkgZ2l2ZXMgX2xlc3NfIGNvbXBpbGUtdGltZSBjaGVja2luZyAoZ2NjIGFuZCBhbGwKc3Rh
dGljIHRvb2xzIGtub3cgcGVyZmVjdGx5IHdlbGwgd2hhdCBzdHJjcHkgaXMgYW5kIGRvZXMsIGJ1
dCBrbm93cwpub3RoaW5nIG9mIHN0cnNjcHkpLiBBbmQgdXNpbmcgc2l6ZW9mKCkgaW5zdGVhZCBv
ZiBBUlJBWV9TSVpFKCkgbWVhbnMgYQpmdXR1cmUgcmVhZGVyIGlzIG5vdCBldmVuIHN1cmUgZGV2
LT5uYW1lIGlzIG5vdCBqdXN0IGEgcG9pbnRlci4KCk1vcmVvdmVyLCBpdCdzIHZlcnkgbGlrZWx5
IGFsc28gYSBydW50aW1lIGFuZCAudGV4dCBwZXNzaW1pemF0aW9uLCBhZ2FpbgpiZWNhdXNlIGdj
YyBrbm93cyB3aGF0IHN0cmNweSBkb2VzLCBzbyBpdCBjYW4ganVzdCBkbyBhIGZldyBpbW1lZGlh
dGUKc3RvcmVzIChlLmcuIDB4MjU3NzZmNzAgZm9yIHRoZSAicG93JSIgcGFydCkgaW5zdGVhZCBv
ZiBlbWl0dGluZyBhbgphY3R1YWwgZnVuY3Rpb24gY2FsbC4KClJhc211cwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
