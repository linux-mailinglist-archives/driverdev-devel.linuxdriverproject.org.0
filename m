Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD58748C6AC
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jan 2022 16:04:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 315F640A45;
	Wed, 12 Jan 2022 15:04:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BoXgU96LEesx; Wed, 12 Jan 2022 15:04:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A3BE540273;
	Wed, 12 Jan 2022 15:04:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED4C61BF5E6
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 15:04:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D9E74401B7
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 15:04:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FbHq7ayTGvc9 for <devel@linuxdriverproject.org>;
 Wed, 12 Jan 2022 15:04:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5D733400CE
 for <devel@driverdev.osuosl.org>; Wed, 12 Jan 2022 15:04:35 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id u13so9055585lff.12
 for <devel@driverdev.osuosl.org>; Wed, 12 Jan 2022 07:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=swEbmnyLSeN7aiIoLnsPgDG3gh2KSMSrPSEJTJTzFbQ=;
 b=lvkw4cRKCOzBKAPvoz7fYi4Ww+7YlPfKoAgKVLsIgKF1EJ+8wEQe6UxECLKYwzDnLE
 B6oDSef20ebGk9u85lnz7rEBAUMWRtwpyuCT7L5tzcrfQOz8wh7TZ2HKYlneuRS6vvZL
 2mzMh6se/ObK3+x60YBQABVSeb3VrI4eHRc1v7BRB2NV0kOKjry5g7lgbvmVmJtVueJ9
 KnDoZbh+45MmI7u5fj7DHOebV2iwZmI1uYwa1RpTgz0hD3M/CnW+fBXsXOOTtlYGu/16
 A5HG6WxtCNk9V2MKJTFdEJHaI/4RRxI0j/0ly6jrKbitmexN4vjhY8socp2Bkpl/gWCl
 FZYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=swEbmnyLSeN7aiIoLnsPgDG3gh2KSMSrPSEJTJTzFbQ=;
 b=QRaoBgbv1oZO7xddaHPl2/vpKudk5oysboPAYeCysFNw7EDEumZyOc3djUrh7dmtcS
 vjer8KSFmUG+HqJZUqlD68IhpJKleutzjofRnHIia2AEW7gFmaWIkacg1qBlmzwVUhbb
 lMeiW/qK+R42dhW74m+itgwAEtDe36zIMtdh6WOocS6ubKsVoJwAcl1CsoWzplHSNu9b
 yFoMKIfr+VwrKDYa0o2EbU+OSRvlkSzMpdYfknBcur8MNSqbv98O5cOVoH1MyLqMC5GL
 pcm+JIhjj+8psmxmVlwP5BrUnn+fWQ4xvO78cZTX+ZGG1VHr4sJFQfOm5iRr090SIrOx
 429Q==
X-Gm-Message-State: AOAM531kx9AQ+BZ/4BMCCh2Kp3Od6btGZ4IVE4GGvt/tG4dBAnMzymcP
 dNmUe/11+7IDdnEvR/heDRHVgUYZ6QjoMj/hsKgpxQ==
X-Google-Smtp-Source: ABdhPJxWuTxHLQXjEWO9OANtBu36BWztuVV7d1EJLRw+gXvuvHBCzsnZLCgUQS4k1kJ8fOzX1Y3szncGvdkFuOkuwPI=
X-Received: by 2002:a19:6748:: with SMTP id e8mr118080lfj.358.1641999873143;
 Wed, 12 Jan 2022 07:04:33 -0800 (PST)
MIME-Version: 1.0
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <20220111171424.862764-9-Jerome.Pouiller@silabs.com>
 <20220112105859.u4j76o7cpsr4znmb@pali>
 <42104281.b1Mx7tgHyx@pc-42> <20220112114332.jadw527pe7r2j4vv@pali>
In-Reply-To: <20220112114332.jadw527pe7r2j4vv@pali>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Jan 2022 16:03:56 +0100
Message-ID: <CAPDyKFoMj1r+bEh-MqOdTVzs0C=LCFPPbXj3jHwB4Yty=bA03Q@mail.gmail.com>
Subject: Re: [PATCH v9 08/24] wfx: add bus_sdio.c
To: =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
 =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCAxMiBKYW4gMjAyMiBhdCAxMjo0MywgUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9y
Zz4gd3JvdGU6Cj4KPiBPbiBXZWRuZXNkYXkgMTIgSmFudWFyeSAyMDIyIDEyOjE4OjU4IErDqXLD
tG1lIFBvdWlsbGVyIHdyb3RlOgo+ID4gT24gV2VkbmVzZGF5IDEyIEphbnVhcnkgMjAyMiAxMTo1
ODo1OSBDRVQgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gPiA+IE9uIFR1ZXNkYXkgMTEgSmFudWFyeSAy
MDIyIDE4OjE0OjA4IEplcm9tZSBQb3VpbGxlciB3cm90ZToKPiA+ID4gPiArc3RhdGljIGNvbnN0
IHN0cnVjdCBzZGlvX2RldmljZV9pZCB3Znhfc2Rpb19pZHNbXSA9IHsKPiA+ID4gPiArICAgICB7
IFNESU9fREVWSUNFKFNESU9fVkVORE9SX0lEX1NJTEFCUywgU0RJT19ERVZJQ0VfSURfU0lMQUJT
X1dGMjAwKSB9LAo+ID4gPiA+ICsgICAgIHsgfSwKPiA+ID4gPiArfTsKPiA+ID4KPiA+ID4gSGVs
bG8hIElzIHRoaXMgdGFibGUgc3RpbGwgcmVxdWlyZWQ/Cj4gPgo+ID4gQXMgZmFyIGFzIEkgdW5k
ZXJzdGFuZCwgaWYgdGhlIGRyaXZlciBkb2VzIG5vdCBwcm92aWRlIGFuIGlkX3RhYmxlLCB0aGUK
PiA+IHByb2JlIGZ1bmN0aW9uIHdvbid0IGJlIG5ldmVyIGNhbGxlZCAoc2VlIHNkaW9fbWF0Y2hf
ZGV2aWNlKCkpLgo+ID4KPiA+IFNpbmNlLCB3ZSByZWx5IG9uIHRoZSBkZXZpY2UgdHJlZSwgd2Ug
Y291bGQgcmVwbGFjZSBTRElPX1ZFTkRPUl9JRF9TSUxBQlMKPiA+IGFuZCBTRElPX0RFVklDRV9J
RF9TSUxBQlNfV0YyMDAgYnkgU0RJT19BTllfSUQuIEhvd2V2ZXIsIGl0IGRvZXMgbm90IGh1cnQK
PiA+IHRvIGFkZCBhbiBleHRyYSBmaWx0ZXIgaGVyZS4KPgo+IE5vdyB3aGVuIHRoaXMgcGFydGlj
dWxhciBpZCBpcyBub3QgcmVxdWlyZWQsIEknbSB0aGlua2luZyBpZiBpdCBpcyBzdGlsbAo+IHJl
cXVpcmVkIGFuZCBpdCBpcyBhIGdvb2QgaWRlYSB0byBkZWZpbmUgdGhlc2UgU0RJT19WRU5ET1Jf
SURfU0lMQUJTCj4gbWFjcm9zIGludG8ga2VybmVsIGluY2x1ZGUgZmlsZXMuIEFzIGl0IHdvdWxk
IG1lYW4gdGhhdCBvdGhlciBicm9rZW4KPiBTRElPIGRldmljZXMgY291bGQgZGVmaW5lIHRoZXNl
IGJvZ3VzIG51bWJlcnMgdG9vLi4uIEFuZCBoYXZpbmcgdGhlbSBpbgo+IGNvbW1vbiBrZXJuZWwg
aW5jbHVkZXMgZmlsZXMgY2FuIGNhdXNlIGlzc3Vlcy4uLiBlLmcuIG90aGVyIGRldmVsb3BlcnMK
PiBjb3VsZCB0aGluayB0aGF0IGl0IGlzIGNvcnJlY3QgdG8gdXNlIHRoZW0gYXMgdGhleSBhcmUg
ZGVmaW5lZCBpbiBjb21tb24KPiBoZWFkZXIgZmlsZXMuIEJ1dCBhcyB0aGVzZSBudW1iZXJzIGFy
ZSBub3QgcmVsaWFibGUgKG90aGVyIGJyb2tlbiBjYXJkcwo+IG1heSBoYXZlIHNhbWUgaWRzIGFz
IHdmMjAwKSBhbmQgdGhlaXIgdXNhZ2UgbWF5IGNhdXNlIGlzc3VlcyBpbiBmdXR1cmUuCj4KPiBV
bGYsIGFueSBvcGluaW9uPwoKVGhlIHNkaW9fbWF0Y2hfZGV2aWNlKCkgaXMgd2hhdCBpcyBiZWlu
ZyB1c2VkIHRvIG1hdGNoIHRoZSBkZXZpY2UgdG8KaXRzIHNkaW9fZHJpdmVyLCB3aGljaCBpcyBi
ZWluZyBjYWxsZWQgZnJvbSB0aGUgc2Rpb19idXNfdHlwZSdzCi0+bWF0Y2goKSBjYWxsYmFjay4K
CkluIHJlZ2FyZHMgdG8gdGhlIERUIGNvbXBhdGlibGUgc3RyaW5ncyBmcm9tIGEgZHJpdmVycycK
Lm9mX21hdGNoX3RhYmxlLCB0aGF0IGlzIGN1cnJlbnRseSBsZWZ0IHRvIGJlIG1hdGNoZWQgYnkg
dGhlIHNkaW8KZHJpdmVyJ3MgLT5wcm9iZSgpIGZ1bmN0aW9uIGludGVybmFsbHksIGJ5IGNhbGxp
bmcKb2ZfZHJpdmVyX21hdGNoX2RldmljZSgpLgoKSW4gb3RoZXIgd29yZHMsIEkgdGhpbmsgd2hh
dCBKZXJvbWUgaGFzIHN1Z2dlc3RlZCBoZXJlIHNlZW1zCnJlYXNvbmFibGUgdG8gbWUuIE1hdGNo
aW5nIG9uICJTRElPX0FOWV9JRCIgd291bGQgd29yayB0b28sIGJ1dCBJCnRoaW5rIGl0J3MgYmV0
dGVyIHdpdGggYSBwb29yIGZpbHRlciBsaWtlIFNESU9fVkVORE9SX0lEX1NJTEFCUyosCnJhdGhl
ciB0aGFuIG5vbmUuCgpBbiBlbnRpcmVseSBkaWZmZXJlbnQgYW5kIG5ldyBhcHByb2FjaCB3b3Vs
ZCBiZSB0byBleHRlbmQKc2Rpb19tYXRjaF9kZXZpY2UoKSB0byBjYWxsIG9mX2RyaXZlcl9tYXRj
aF9kZXZpY2UoKSB0b28uIEhvd2V2ZXIsIGluCnRoYXQgY2FzZSB3ZSB3b3VsZCBhbHNvIG5lZWQg
dG8gYWRkIGEgbmV3IGNvcnJlc3BvbmRpbmcgLT5wcm9iZSgpCmNhbGxiYWNrIGZvciB0aGUgc2Rp
b19kcml2ZXIsIGFzIHRoZSBjdXJyZW50IG9uZSB0YWtlcyBhIGNvbnN0IHN0cnVjdApzZGlvX2Rl
dmljZV9pZCwgd2hpY2ggZG9lc24ndCB3b3JrIHdoZW4gbWF0Y2hpbmcgb24gRFQgY29tcGF0aWJs
ZXMuCgo+Cj4gQnR3LCBpcyB0aGVyZSBhbnkgcHJvamVjdCB3aGljaCBtYWludGFpbnMgU0RJTyBp
ZHMsIGxpa2UgdGhlcmUgaXMKPiBwY2ktaWRzLnVjdy5jeiBmb3IgUENJIG9yIHd3dy5saW51eC11
c2Iub3JnL3VzYi1pZHMuaHRtbCBmb3IgVVNCPwo+Cj4gPiA+ID4gK01PRFVMRV9ERVZJQ0VfVEFC
TEUoc2Rpbywgd2Z4X3NkaW9faWRzKTsKPiA+ID4gPiArCj4gPiA+ID4gK3N0cnVjdCBzZGlvX2Ry
aXZlciB3Znhfc2Rpb19kcml2ZXIgPSB7Cj4gPiA+ID4gKyAgICAgLm5hbWUgPSAid2Z4LXNkaW8i
LAo+ID4gPiA+ICsgICAgIC5pZF90YWJsZSA9IHdmeF9zZGlvX2lkcywKPiA+ID4gPiArICAgICAu
cHJvYmUgPSB3Znhfc2Rpb19wcm9iZSwKPiA+ID4gPiArICAgICAucmVtb3ZlID0gd2Z4X3NkaW9f
cmVtb3ZlLAo+ID4gPiA+ICsgICAgIC5kcnYgPSB7Cj4gPiA+ID4gKyAgICAgICAgICAgICAub3du
ZXIgPSBUSElTX01PRFVMRSwKPiA+ID4gPiArICAgICAgICAgICAgIC5vZl9tYXRjaF90YWJsZSA9
IHdmeF9zZGlvX29mX21hdGNoLAo+ID4gPiA+ICsgICAgIH0KPiA+ID4gPiArfTsKPiA+ID4gPiAt
LQo+ID4gPiA+IDIuMzQuMQo+ID4gPiA+Cj4gPiA+Cj4gPgo+ID4KPiA+IC0tCj4gPiBKw6lyw7Rt
ZSBQb3VpbGxlcgoKS2luZCByZWdhcmRzClVmZmUKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
