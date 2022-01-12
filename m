Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7FE48C36A
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jan 2022 12:43:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 696F36FBA8;
	Wed, 12 Jan 2022 11:43:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WqKv4J8aHc6G; Wed, 12 Jan 2022 11:43:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96AEE6FB9C;
	Wed, 12 Jan 2022 11:43:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A16D1BF82F
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 11:43:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 75EB36FB9C
 for <devel@linuxdriverproject.org>; Wed, 12 Jan 2022 11:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rKGIp-HORn5O for <devel@linuxdriverproject.org>;
 Wed, 12 Jan 2022 11:43:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 995C360E83
 for <devel@driverdev.osuosl.org>; Wed, 12 Jan 2022 11:43:36 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CAEFC61862;
 Wed, 12 Jan 2022 11:43:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C3E9C36AE9;
 Wed, 12 Jan 2022 11:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641987815;
 bh=nNZvPmLCj5hUY/EAI5dVhxfi/PBGWTo2PlQBAzZcUlo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DQMxxxnMGBy6NVEsiApsuYJBAUBJcIKybBu8A/KI9r+NnkFEzT8nLBqev2dR7t6PU
 FHzCaqUwApBvErP/Kwh9/Nh0vYxKUdVEywsTsxCJlmC6AIWzQuDOPnUVf+MUsc/dHs
 5OMJ7R6ucqR6jmV5GargzvvkdW+ZWPz0W5ksFxlqB8q5HIF6ZSWnEAAy30d1uTLXhe
 /RsA4Idg/f69O5iCf67aYoj6Px8mf/9h80vETZUjfBpTfEAwTIoGonqXRBa3AoBQlN
 O6qJBnSGAhs743Y1SmfwVgltsjL6ZVkizQOPlSW+juG4T8Z6WsC8waCLm75Ckvtx8L
 u5PuHNHhgZubg==
Received: by pali.im (Postfix)
 id ADF7E768; Wed, 12 Jan 2022 12:43:32 +0100 (CET)
Date: Wed, 12 Jan 2022 12:43:32 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v9 08/24] wfx: add bus_sdio.c
Message-ID: <20220112114332.jadw527pe7r2j4vv@pali>
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <20220111171424.862764-9-Jerome.Pouiller@silabs.com>
 <20220112105859.u4j76o7cpsr4znmb@pali> <42104281.b1Mx7tgHyx@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <42104281.b1Mx7tgHyx@pc-42>
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

T24gV2VkbmVzZGF5IDEyIEphbnVhcnkgMjAyMiAxMjoxODo1OCBKw6lyw7RtZSBQb3VpbGxlciB3
cm90ZToKPiBPbiBXZWRuZXNkYXkgMTIgSmFudWFyeSAyMDIyIDExOjU4OjU5IENFVCBQYWxpIFJv
aMOhciB3cm90ZToKPiA+IE9uIFR1ZXNkYXkgMTEgSmFudWFyeSAyMDIyIDE4OjE0OjA4IEplcm9t
ZSBQb3VpbGxlciB3cm90ZToKPiA+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Rpb19kZXZpY2Vf
aWQgd2Z4X3NkaW9faWRzW10gPSB7Cj4gPiA+ICsgICAgIHsgU0RJT19ERVZJQ0UoU0RJT19WRU5E
T1JfSURfU0lMQUJTLCBTRElPX0RFVklDRV9JRF9TSUxBQlNfV0YyMDApIH0sCj4gPiA+ICsgICAg
IHsgfSwKPiA+ID4gK307Cj4gPiAKPiA+IEhlbGxvISBJcyB0aGlzIHRhYmxlIHN0aWxsIHJlcXVp
cmVkPwo+IAo+IEFzIGZhciBhcyBJIHVuZGVyc3RhbmQsIGlmIHRoZSBkcml2ZXIgZG9lcyBub3Qg
cHJvdmlkZSBhbiBpZF90YWJsZSwgdGhlCj4gcHJvYmUgZnVuY3Rpb24gd29uJ3QgYmUgbmV2ZXIg
Y2FsbGVkIChzZWUgc2Rpb19tYXRjaF9kZXZpY2UoKSkuCj4gCj4gU2luY2UsIHdlIHJlbHkgb24g
dGhlIGRldmljZSB0cmVlLCB3ZSBjb3VsZCByZXBsYWNlIFNESU9fVkVORE9SX0lEX1NJTEFCUwo+
IGFuZCBTRElPX0RFVklDRV9JRF9TSUxBQlNfV0YyMDAgYnkgU0RJT19BTllfSUQuIEhvd2V2ZXIs
IGl0IGRvZXMgbm90IGh1cnQKPiB0byBhZGQgYW4gZXh0cmEgZmlsdGVyIGhlcmUuCgpOb3cgd2hl
biB0aGlzIHBhcnRpY3VsYXIgaWQgaXMgbm90IHJlcXVpcmVkLCBJJ20gdGhpbmtpbmcgaWYgaXQg
aXMgc3RpbGwKcmVxdWlyZWQgYW5kIGl0IGlzIGEgZ29vZCBpZGVhIHRvIGRlZmluZSB0aGVzZSBT
RElPX1ZFTkRPUl9JRF9TSUxBQlMKbWFjcm9zIGludG8ga2VybmVsIGluY2x1ZGUgZmlsZXMuIEFz
IGl0IHdvdWxkIG1lYW4gdGhhdCBvdGhlciBicm9rZW4KU0RJTyBkZXZpY2VzIGNvdWxkIGRlZmlu
ZSB0aGVzZSBib2d1cyBudW1iZXJzIHRvby4uLiBBbmQgaGF2aW5nIHRoZW0gaW4KY29tbW9uIGtl
cm5lbCBpbmNsdWRlcyBmaWxlcyBjYW4gY2F1c2UgaXNzdWVzLi4uIGUuZy4gb3RoZXIgZGV2ZWxv
cGVycwpjb3VsZCB0aGluayB0aGF0IGl0IGlzIGNvcnJlY3QgdG8gdXNlIHRoZW0gYXMgdGhleSBh
cmUgZGVmaW5lZCBpbiBjb21tb24KaGVhZGVyIGZpbGVzLiBCdXQgYXMgdGhlc2UgbnVtYmVycyBh
cmUgbm90IHJlbGlhYmxlIChvdGhlciBicm9rZW4gY2FyZHMKbWF5IGhhdmUgc2FtZSBpZHMgYXMg
d2YyMDApIGFuZCB0aGVpciB1c2FnZSBtYXkgY2F1c2UgaXNzdWVzIGluIGZ1dHVyZS4KClVsZiwg
YW55IG9waW5pb24/CgpCdHcsIGlzIHRoZXJlIGFueSBwcm9qZWN0IHdoaWNoIG1haW50YWlucyBT
RElPIGlkcywgbGlrZSB0aGVyZSBpcwpwY2ktaWRzLnVjdy5jeiBmb3IgUENJIG9yIHd3dy5saW51
eC11c2Iub3JnL3VzYi1pZHMuaHRtbCBmb3IgVVNCPwoKPiA+ID4gK01PRFVMRV9ERVZJQ0VfVEFC
TEUoc2Rpbywgd2Z4X3NkaW9faWRzKTsKPiA+ID4gKwo+ID4gPiArc3RydWN0IHNkaW9fZHJpdmVy
IHdmeF9zZGlvX2RyaXZlciA9IHsKPiA+ID4gKyAgICAgLm5hbWUgPSAid2Z4LXNkaW8iLAo+ID4g
PiArICAgICAuaWRfdGFibGUgPSB3Znhfc2Rpb19pZHMsCj4gPiA+ICsgICAgIC5wcm9iZSA9IHdm
eF9zZGlvX3Byb2JlLAo+ID4gPiArICAgICAucmVtb3ZlID0gd2Z4X3NkaW9fcmVtb3ZlLAo+ID4g
PiArICAgICAuZHJ2ID0gewo+ID4gPiArICAgICAgICAgICAgIC5vd25lciA9IFRISVNfTU9EVUxF
LAo+ID4gPiArICAgICAgICAgICAgIC5vZl9tYXRjaF90YWJsZSA9IHdmeF9zZGlvX29mX21hdGNo
LAo+ID4gPiArICAgICB9Cj4gPiA+ICt9Owo+ID4gPiAtLQo+ID4gPiAyLjM0LjEKPiA+ID4KPiA+
IAo+IAo+IAo+IC0tIAo+IErDqXLDtG1lIFBvdWlsbGVyCj4gCj4gCj4gCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
