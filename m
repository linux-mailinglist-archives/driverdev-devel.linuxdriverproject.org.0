Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8418648CA5B
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jan 2022 18:49:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E924C84C09;
	Wed, 12 Jan 2022 17:49:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1T-9SScm_4f3; Wed, 12 Jan 2022 17:49:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4987884BFC;
	Wed, 12 Jan 2022 17:49:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C8F451BF357
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 17:48:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B6F2284BF7
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 17:48:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wz87L7_Rjkdb for <devel@linuxdriverproject.org>;
 Wed, 12 Jan 2022 17:48:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C4B9384B8A
 for <devel@driverdev.osuosl.org>; Wed, 12 Jan 2022 17:48:54 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 074A4B81EC4;
 Wed, 12 Jan 2022 17:48:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8ADA2C36AE5;
 Wed, 12 Jan 2022 17:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642009730;
 bh=v5HVJMOt7K5cfz9ChUmoP+h6WJ8BSd2gVzVjKi67/bs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I5IBb8wMr1OFJJp1W4xiBKrGiLlzko0I4nZKxuwBG2kwloTU3de7Oz94htQwZBPr8
 midFS13nAQX6Fs4UhOwPEDWTfK3m//xboWTelsPoUzvmjVnw9K46ZScJcMUUQytTur
 7BunIoxoYHeHz3gAtPMyPmjMdrnivJ/PN5GYKIYXs6s6USAb1V/37faYc+sPS2afL5
 CqFVDc8M5gI7eCI2dRDH7JnnKzHJTXdSGAokYiV0Zo58OAa8yhIaoDyWhDmGiNgESi
 6OU0gIiFdHdDPRihZPjIdDbuzH9Rru5AYGe8XFWwDECAlPy1P1bWERHxc8HWk2dJEO
 9TKEzmzEjOrAw==
Received: by pali.im (Postfix)
 id 2CEB5768; Wed, 12 Jan 2022 18:48:48 +0100 (CET)
Date: Wed, 12 Jan 2022 18:48:48 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v9 08/24] wfx: add bus_sdio.c
Message-ID: <20220112174848.db5osolurllpc7du@pali>
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <42104281.b1Mx7tgHyx@pc-42> <20220112114332.jadw527pe7r2j4vv@pali>
 <2680707.qJCEgCfB62@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2680707.qJCEgCfB62@pc-42>
User-Agent: NeoMutt/20180716
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
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkbmVzZGF5IDEyIEphbnVhcnkgMjAyMiAxNzo0NTo0NSBKw6lyw7RtZSBQb3VpbGxlciB3
cm90ZToKPiBPbiBXZWRuZXNkYXkgMTIgSmFudWFyeSAyMDIyIDEyOjQzOjMyIENFVCBQYWxpIFJv
aMOhciB3cm90ZToKPiA+IAo+ID4gT24gV2VkbmVzZGF5IDEyIEphbnVhcnkgMjAyMiAxMjoxODo1
OCBKw6lyw7RtZSBQb3VpbGxlciB3cm90ZToKPiA+ID4gT24gV2VkbmVzZGF5IDEyIEphbnVhcnkg
MjAyMiAxMTo1ODo1OSBDRVQgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gPiA+ID4gT24gVHVlc2RheSAx
MSBKYW51YXJ5IDIwMjIgMTg6MTQ6MDggSmVyb21lIFBvdWlsbGVyIHdyb3RlOgo+ID4gPiA+ID4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Rpb19kZXZpY2VfaWQgd2Z4X3NkaW9faWRzW10gPSB7Cj4g
PiA+ID4gPiArICAgICB7IFNESU9fREVWSUNFKFNESU9fVkVORE9SX0lEX1NJTEFCUywgU0RJT19E
RVZJQ0VfSURfU0lMQUJTX1dGMjAwKSB9LAo+ID4gPiA+ID4gKyAgICAgeyB9LAo+ID4gPiA+ID4g
K307Cj4gPiA+ID4KPiA+ID4gPiBIZWxsbyEgSXMgdGhpcyB0YWJsZSBzdGlsbCByZXF1aXJlZD8K
PiA+ID4KPiA+ID4gQXMgZmFyIGFzIEkgdW5kZXJzdGFuZCwgaWYgdGhlIGRyaXZlciBkb2VzIG5v
dCBwcm92aWRlIGFuIGlkX3RhYmxlLCB0aGUKPiA+ID4gcHJvYmUgZnVuY3Rpb24gd29uJ3QgYmUg
bmV2ZXIgY2FsbGVkIChzZWUgc2Rpb19tYXRjaF9kZXZpY2UoKSkuCj4gPiA+Cj4gPiA+IFNpbmNl
LCB3ZSByZWx5IG9uIHRoZSBkZXZpY2UgdHJlZSwgd2UgY291bGQgcmVwbGFjZSBTRElPX1ZFTkRP
Ul9JRF9TSUxBQlMKPiA+ID4gYW5kIFNESU9fREVWSUNFX0lEX1NJTEFCU19XRjIwMCBieSBTRElP
X0FOWV9JRC4gSG93ZXZlciwgaXQgZG9lcyBub3QgaHVydAo+ID4gPiB0byBhZGQgYW4gZXh0cmEg
ZmlsdGVyIGhlcmUuCj4gPiAKPiA+IE5vdyB3aGVuIHRoaXMgcGFydGljdWxhciBpZCBpcyBub3Qg
cmVxdWlyZWQsIEknbSB0aGlua2luZyBpZiBpdCBpcyBzdGlsbAo+ID4gcmVxdWlyZWQgYW5kIGl0
IGlzIGEgZ29vZCBpZGVhIHRvIGRlZmluZSB0aGVzZSBTRElPX1ZFTkRPUl9JRF9TSUxBQlMKPiA+
IG1hY3JvcyBpbnRvIGtlcm5lbCBpbmNsdWRlIGZpbGVzLiBBcyBpdCB3b3VsZCBtZWFuIHRoYXQg
b3RoZXIgYnJva2VuCj4gPiBTRElPIGRldmljZXMgY291bGQgZGVmaW5lIHRoZXNlIGJvZ3VzIG51
bWJlcnMgdG9vLi4uIEFuZCBoYXZpbmcgdGhlbSBpbgo+ID4gY29tbW9uIGtlcm5lbCBpbmNsdWRl
cyBmaWxlcyBjYW4gY2F1c2UgaXNzdWVzLi4uIGUuZy4gb3RoZXIgZGV2ZWxvcGVycwo+ID4gY291
bGQgdGhpbmsgdGhhdCBpdCBpcyBjb3JyZWN0IHRvIHVzZSB0aGVtIGFzIHRoZXkgYXJlIGRlZmlu
ZWQgaW4gY29tbW9uCj4gPiBoZWFkZXIgZmlsZXMuIEJ1dCBhcyB0aGVzZSBudW1iZXJzIGFyZSBu
b3QgcmVsaWFibGUgKG90aGVyIGJyb2tlbiBjYXJkcwo+ID4gbWF5IGhhdmUgc2FtZSBpZHMgYXMg
d2YyMDApIGFuZCB0aGVpciB1c2FnZSBtYXkgY2F1c2UgaXNzdWVzIGluIGZ1dHVyZS4KPiAKPiBJ
biBvcmRlciB0byBtYWtlIFNESU9fVkVORE9SX0lEX1NJTEFCUyBsZXNzIG9mZmljaWFsLCBkbyB5
b3UgcHJlZmVyIHRvCj4gZGVmaW5lIGl0IGluIHdmeC9idXNfc2Rpby5jIGluc3RlYWQgb2YgbW1j
L3NkaW9faWRzLmg/Cj4gCj4gT3IgZXZlbiBub3QgZGVmaW5lZCBhdCBhbGwgbGlrZToKPiAKPiAg
ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBzZGlvX2RldmljZV9pZCB3Znhfc2Rpb19pZHNbXSA9IHsK
PiAgICAgICAgICAvKiBXRjIwMCBkb2VzIG5vdCBoYXZlIG9mZmljaWFsIFZJRC9QSUQgKi8KPiAg
ICAgICAgICB7IFNESU9fREVWSUNFKDB4MDAwMCwgMHgxMDAwKSB9LAo+ICAgICAgICAgIHsgfSwK
PiAgICAgfTsKClRoaXMgaGFzIGFkdmFudGFnZSB0aGF0IGl0IGlzIGV4cGxpY2l0bHkgdmlzaWJs
ZSB0aGF0IHRoaXMgZGV2aWNlIGRvZXMKbm90IHVzZSBhbnkgb2ZmaWNpYWxseSBhc3NpZ25lZCBp
ZHMuCgo+IAo+IAo+IC0tIAo+IErDqXLDtG1lIFBvdWlsbGVyCj4gCj4gCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
