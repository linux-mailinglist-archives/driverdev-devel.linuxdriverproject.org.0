Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFB34B1EFF
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Feb 2022 08:08:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9B5761C12;
	Fri, 11 Feb 2022 07:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YLpGaRsQoEaQ; Fri, 11 Feb 2022 07:08:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80A3D60AA0;
	Fri, 11 Feb 2022 07:08:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 518E81BF35A
 for <devel@linuxdriverproject.org>; Fri, 11 Feb 2022 07:08:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E6E482784
 for <devel@linuxdriverproject.org>; Fri, 11 Feb 2022 07:08:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bd0_vqYzQTQY for <devel@linuxdriverproject.org>;
 Fri, 11 Feb 2022 07:08:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B12F82456
 for <devel@driverdev.osuosl.org>; Fri, 11 Feb 2022 07:08:12 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id EF03FB827E2;
 Fri, 11 Feb 2022 07:08:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25784C340E9;
 Fri, 11 Feb 2022 07:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644563288;
 bh=bNbucoU4hGhTLdhp/tSDciDNIXbgrdpLrXZPPdv1RXQ=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=BAQVHmydGY+fQk7uPEzxU3BxASE8nYb458eyGnJm3hkpchxrPYJPZrpqHfd0tVIO0
 slDuz3Nh4bipEjlwZR70IGX8Jao04OKIMmNdtDoG1DwK+SRr4V899bmHY2obn5g+7w
 QkMN3FFN26FXW+fxgbmA73/zrnEkur2tr8pySXoKBffc9Cj+tfubfg9pOHno2laCwQ
 9mTdMxu+fIS6ZsD9CrtNYhshRWB+fEn1kwb6AwNO9vEHqikeb4US2OxmqGMVCsjo3T
 4xOsZCC1tEF3+k38Js65b9KOxmwaDbVI//y4p73oQyI0RrB8bS5A397Dl/ml+TosnX
 Ufx0dorEjWvfQ==
From: Kalle Valo <kvalo@kernel.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v9 05/24] wfx: add main.c/main.h
In-Reply-To: <2534738.AP0T11PbZZ@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Thu, 10 Feb 2022 17:37:51 +0100")
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <39159625.OdyKsPGY69@pc-42> <87a6ey3d0e.fsf@kernel.org>
 <2534738.AP0T11PbZZ@pc-42>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
Date: Fri, 11 Feb 2022 09:08:01 +0200
Message-ID: <874k553mpa.fsf@kernel.org>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?utf-8?Q?Roh?= =?utf-8?Q?=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6Cgo+
PiA+IFRoZXJlIGlzIGFsc28gdGhlIHBhdGNoIDAxLzI0IGFib3V0IHRoZSBTRElPIElEcy4KPj4g
Pgo+PiA+IEkgdGhpbmsgdGhlIHYxMCBjb3VsZCBjb250YWluIG9ubHkgMyBwYXRjaGVzOgo+PiA+
Cj4+ID4gICAgIDEuIG1tYzogc2RpbzogYWRkIFNESU8gSURzIGZvciBTaWxhYnMgV0YyMDAgY2hp
cAo+PiA+ICAgICAyLiBkdC1iaW5kaW5nczogaW50cm9kdWNlIHNpbGFicyx3ZngueWFtbAo+PiA+
ICAgICAzLiBbYWxsIHRoZSBwYXRjaGVzIDMgdG8gMjQgc3F1YXNoZWRdCj4+ID4KPj4gPiBXb3Vs
ZCBpdCBiZSByaWdodCBmb3IgeW91Pwo+PiAKPj4gVEJIIEkgZG9uJ3Qgc2VlIHRoZSBwb2ludCBv
ZiBwYXRjaCAzIGF0IHRoaXMgbW9tZW50LCB3ZSBoYXZlIGhhZCBzbyBtYW55Cj4+IGl0ZXJhdGlv
bnMgd2l0aCB0aGUgZnVsbCBkcml2ZXIgYWxyZWFkeS4gSWYgcGVvcGxlIHdhbnQgdG8gbG9vayBh
dCB0aGUKPj4gZHJpdmVyLCB0aGV5IGNhbiBjaGVjayBpdCBmcm9tIHRoZSBzdGFnaW5nIHRyZWUu
IFNvIGluIHRoZSBuZXh0IHJvdW5kIEkKPj4gcmVjb21tZW5kIHN1Ym1pdHRpbmcgb25seSBwYXRj
aGVzIDEgYW5kIDIgYW5kIGZvY3VzIG9uIGdldHRpbmcgYWxsIHRoZQo+PiBwZW5kaW5nIHBhdGNo
ZXMgdG8gc3RhZ2luZyB0cmVlLgo+Cj4gT2suCj4KPj4gQW5kIHRoZSBjaGFuY2VzIGFyZSB0aGF0
IGEgYmlnIHBhdGNoIGxpa2UgdGhhdCB3b3VsZCBiZSBmaWx0ZXJlZCBieSB0aGUKPj4gbWFpbGlu
ZyBsaXN0cyBhbnl3YXkuCj4KPiBJIGJlbGlldmUgdGhhdCB3aXRoIC1NLCB0aGUgcGF0Y2ggd291
bGQgYmUgdmVyeSBzbWFsbC4KCkFoLCB5b3UgbWVhbiBwYXRjaCAzIHdvdWxkIGJlIGFib3V0IG1v
dmluZyB3ZnggZnJvbSBkcml2ZXJzL3N0YWdpbmcgdG8KZHJpdmVycy9uZXQvd2lyZWxlc3M/IFll
YWgsIHdpdGggLU0gdGhhdCB3b3VsZCBiZSBhIGdvb2QgaWRlYS4KCi0tIApodHRwczovL3BhdGNo
d29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtd2lyZWxlc3MvbGlzdC8KCmh0dHBzOi8vd2ly
ZWxlc3Mud2lraS5rZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0
aW5ncGF0Y2hlcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
