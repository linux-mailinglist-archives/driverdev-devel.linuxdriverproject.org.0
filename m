Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EE6294042
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 18:12:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D4C3E87323;
	Tue, 20 Oct 2020 16:12:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eHE2cDtHzeEn; Tue, 20 Oct 2020 16:12:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D40CE872D5;
	Tue, 20 Oct 2020 16:12:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A252B1BF2CD
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 16:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9EE9B86CC5
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 16:12:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1m901fStHAEy for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 16:12:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AD78386CBE
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 16:12:30 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id l4so2201557ota.7
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 09:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YpTMFQeEZb0rjpUuW6XXMOAXIdREE2jLBrSTZUeG4I8=;
 b=U1XUF5DhInl+St5txZvE2N429K3nu9ruKXD64YmX2X9+frCh1aWremcUA85iF2PIx1
 DLK9xaE52MkGJALcimxPhnvF3IBiGas67tyRMEO11rVkqq2lMq8YJzOqqG1pvEgcHaVM
 QrU6NGgqq+aY7T8Bl7fUpiQM4tFebDK9yMrhenwM6yX58MjiEYyAMTQQ7YrFTE6lxtUi
 OXaQRoagMEWU3zF0JrOSkFFMp+bcFDs4SvBOnhtj57cGNHe212D2YzYsy6WeE2rXyg0G
 y0Hx3T05Dcv4O0QwgqD0NlzZ/TXN5kk8ycpPqPu7i3n5fTgYQGkWxShdlqxNh00mY5GT
 nXkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YpTMFQeEZb0rjpUuW6XXMOAXIdREE2jLBrSTZUeG4I8=;
 b=eGDOec7ohb4cSCIqRPreBIo7GqMxA2zdFlvD7CDQY3BieYKjMp7o/NquKM0F6/li43
 8lmaGj8/UB48SNLGHuvwrkZGdfSAyzjAb2AUYvPGXXUekmDoMg/s5qZRG4mwMDHmJk2C
 BoTTyAYXw6hJjartSj/KhLCN+jOnKLkd/Oaj0t8jrmx9Xskj/3lH2AMi5V4B8kDgDjly
 /A3ZSHUc0JXKmH38wic9NAh2/UxvyA5DN8rP2PGyg70d0PHScj2xj0zppgp88vOEFgKg
 DyitbeF2rcdY/MpJQ0v8seyWEY0v5cxmrIumBWcQpb8QZmcqeSRQ/54hPGuku1QqHD3P
 6TDg==
X-Gm-Message-State: AOAM531GYH3TIfua5InIOysjXo0dDKpSsUlwq/N6aaEp/vtp1U1aFPL2
 Hb+kzbRwdk0G1fFdS6mCpGuPJVbac488AlWWWOCk7xh3gtW6BA==
X-Google-Smtp-Source: ABdhPJwm/KewgGT5Q4WyxYXhPhUG/Zzq9WDofYxTVkmfKUiHImFkm6avmj6ccvMkFsJ3lYGD58oCWd/inLtq/UlBoG4=
X-Received: by 2002:ab0:6f11:: with SMTP id r17mr1324840uah.15.1603206476961; 
 Tue, 20 Oct 2020 08:07:56 -0700 (PDT)
MIME-Version: 1.0
References: <20201020125817.1632995-1-Jerome.Pouiller@silabs.com>
 <20201020125817.1632995-2-Jerome.Pouiller@silabs.com>
In-Reply-To: <20201020125817.1632995-2-Jerome.Pouiller@silabs.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 20 Oct 2020 17:07:19 +0200
Message-ID: <CAPDyKFp9pnK0T2xKaXcMUzpxO9OCD49Od=ML+gdQbNndrX0Bag@mail.gmail.com>
Subject: Re: [PATCH v2 01/24] mmc: sdio: add SDIO IDs for Silabs WF200 chip
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, DTML <devicetree@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCAyMCBPY3QgMjAyMCBhdCAxNDo1OCwgSmVyb21lIFBvdWlsbGVyCjxKZXJvbWUuUG91
aWxsZXJAc2lsYWJzLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVy
b21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBBZGQgU2lsYWJzIFNESU8gSUQgdG8gc2Rpb19p
ZHMuaC4KPgo+IE5vdGUgdGhhdCB0aGUgdmFsdWVzIHVzZWQgYnkgU2lsYWJzIGFyZSB1bmNvbW1v
bi4gQSBkcml2ZXIgY2Fubm90IGZ1bGx5Cj4gcmVseSBvbiB0aGUgU0RJTyBQblAuIEl0IHNob3Vs
ZCBhbHNvIGNoZWNrIGlmIHRoZSBkZXZpY2UgaXMgZGVjbGFyZWQgaW4KPiB0aGUgRFQuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5j
b20+CgpBY2tlZC1ieTogVWxmIEhhbnNzb24gPHVsZi5oYW5zc29uQGxpbmFyby5vcmc+CgpLaW5k
IHJlZ2FyZHMKVWZmZQoKCj4gLS0tCj4gIGluY2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmggfCA1
ICsrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5oIGIvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19p
ZHMuaAo+IGluZGV4IDEyMDM2NjE5MzQ2Yy4uMjBhNDgxNjJmN2ZjIDEwMDY0NAo+IC0tLSBhL2lu
Y2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L21tYy9zZGlv
X2lkcy5oCj4gQEAgLTI1LDYgKzI1LDExIEBACj4gICAqIFZlbmRvcnMgYW5kIGRldmljZXMuICBT
b3J0IGtleTogdmVuZG9yIGZpcnN0LCBkZXZpY2UgbmV4dC4KPiAgICovCj4KPiArLy8gU2lsYWJz
IGRvZXMgbm90IHVzZSBhIHJlbGlhYmxlIHZlbmRvciBJRC4gVG8gYXZvaWQgY29uZmxpY3RzLCB0
aGUgZHJpdmVyCj4gKy8vIHdvbid0IHByb2JlIHRoZSBkZXZpY2UgaWYgaXQgaXMgbm90IGFsc28g
ZGVjbGFyZWQgaW4gdGhlIERULgo+ICsjZGVmaW5lIFNESU9fVkVORE9SX0lEX1NJTEFCUyAgICAg
ICAgICAgICAgICAgIDB4MDAwMAo+ICsjZGVmaW5lIFNESU9fREVWSUNFX0lEX1NJTEFCU19XRjIw
MCAgICAgICAgICAgIDB4MTAwMAo+ICsKPiAgI2RlZmluZSBTRElPX1ZFTkRPUl9JRF9TVEUgICAg
ICAgICAgICAgICAgICAgICAweDAwMjAKPiAgI2RlZmluZSBTRElPX0RFVklDRV9JRF9TVEVfQ1cx
MjAwICAgICAgICAgICAgICAweDIyODAKPgo+IC0tCj4gMi4yOC4wCj4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
