Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C804B12A5
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Feb 2022 17:25:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0520340291;
	Thu, 10 Feb 2022 16:25:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D_VMEKD_py1w; Thu, 10 Feb 2022 16:25:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 71A7A40184;
	Thu, 10 Feb 2022 16:25:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6803F1BF3A4
 for <devel@linuxdriverproject.org>; Thu, 10 Feb 2022 16:25:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6463E60BA8
 for <devel@linuxdriverproject.org>; Thu, 10 Feb 2022 16:25:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mx0l60yU-Gu3 for <devel@linuxdriverproject.org>;
 Thu, 10 Feb 2022 16:25:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 25ACD60B87
 for <devel@driverdev.osuosl.org>; Thu, 10 Feb 2022 16:25:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 16A4961CEB;
 Thu, 10 Feb 2022 16:25:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC470C004E1;
 Thu, 10 Feb 2022 16:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644510312;
 bh=IFxBT2jDyEPai4ZZFQxaTM2IF26+Q3DtIrCvz2/aIaw=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=WFoy6ph4jj2asioFVCnfptkcZoeZVEwREMIetSpPnnSfxQms6+XAU+MlkkjsXrp0l
 WcJsNoBb0gkyheSV+LzkR7PNqzugiaQMQ/B/UQvp+LbAczFTcurXEuXrCWiCXdj5QK
 8Yhit0lsF9bgbhv0EYlbhkYgWid+j1mCFiHAw81qSa7R0Vyxi13jdIPn1maIPfLbNm
 Em+t58PD0ZONwlnPdJHsARd5uvmip3lgo3NWLj8mVi+ammO3kvTVlFytFGflRrqImT
 Jx/3tg2fopGf34Dt6UPyVNfD42/G4eGYzzdbLvMrd00BIZA6QTwK2LzJzEw/uPB3Xp
 TNk/Xnneg3ZoA==
From: Kalle Valo <kvalo@kernel.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v9 05/24] wfx: add main.c/main.h
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <4055223.VTxhiZFAix@pc-42> <87ee4a3hd4.fsf@kernel.org>
 <39159625.OdyKsPGY69@pc-42>
Date: Thu, 10 Feb 2022 18:25:05 +0200
In-Reply-To: <39159625.OdyKsPGY69@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Thu, 10 Feb 2022 16:13:16 +0100")
Message-ID: <87a6ey3d0e.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
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
IE9uIFRodXJzZGF5IDEwIEZlYnJ1YXJ5IDIwMjIgMTU6NTE6MDMgQ0VUIEthbGxlIFZhbG8gd3Jv
dGU6Cj4+IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4gd3Jp
dGVzOgo+PiA+IE9uIFRodXJzZGF5IDEwIEZlYnJ1YXJ5IDIwMjIgMTU6MjA6NTYgQ0VUIEthbGxl
IFZhbG8gd3JvdGU6Cj4+ID4+IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2ls
YWJzLmNvbT4gd3JpdGVzOgo+PiA+Pgo+PiA+PiA+IEthbGxlLCBpcyB0aGlzIGZ1bmN0aW9uIHdo
YXQgeW91IGV4cGVjdGVkPyBJZiBpdCBpcyByaWdodCBmb3IgeW91LCBJIGFtCj4+ID4+ID4gZ29p
bmcgdG8gc2VuZCBpdCB0byB0aGUgc3RhZ2luZyB0cmVlLgo+PiA+Pgo+PiA+PiBMb29rcyBiZXR0
ZXIsIGJ1dCBJIGRvbid0IGdldCB3aHkgJ3snIGFuZCAnfScgYXJlIHN0aWxsIG5lZWRlZC4gQWgs
IGRvZXMKPj4gPj4gdGhlIGZpcm13YXJlIHJlcXVpcmUgdG8gaGF2ZSB0aGVtPwo+PiA+Cj4+ID4g
SW5kZWVkLiBJZiAneycgYW5kICd9JyBhcmUgbm90IHByZXNlbnQsIEkgZ3VhcmFudGVlIHRoZSBm
aXJtd2FyZSB3aWxsIHJldHVybgo+PiA+IGFuIGVycm9yIChvciBhc3NlcnQpLiBIb3dldmVyLCBJ
IGFtIG1vcmUgY29uZmlkZW50IGluIHRoZSBkcml2ZXIgdGhhbiBpbiB0aGUKPj4gPiBmaXJtd2Fy
ZSB0byByZXBvcnQgZXJyb3JzIHRvIHRoZSB1c2VyLgo+PiAKPj4gQWdyZWVkLgo+PiAKPj4gPiBJ
ZiB0aGVyZSBpcyBubyBvdGhlciBjb21tZW50LCBJIGFtIGdvaW5nIHRvOgo+PiA+ICAgLSBzdWJt
aXQgdGhpcyBjaGFuZ2UgdG8gdGhlIHN0YWdpbmcgdHJlZQo+PiAKPj4gR29vZCwgaXQncyBpbXBv
cnRhbnQgdGhhdCB5b3UgZ2V0IGFsbCB5b3VyIGNoYW5nZXMgdG8gdGhlIHN0YWdpbmcgdHJlZQo+
PiBiZWZvcmUgdGhlIG5leHQgbWVyZ2Ugd2luZG93Lgo+PiAKPj4gPiAgIC0gcHVibGlzaCB0aGUg
dG9vbCB0aGF0IGdlbmVyYXRlIHRoaXMgbmV3IGZvcm1hdAo+PiA+ICAgLSBzdWJtaXQgdGhlIFBE
UyBmaWxlcyByZWZlcmVuY2VkIGluIGJ1c197c2RpbyxzcGl9LmMgdG8gbGludXgtZmlybXdhcmUK
Pj4gPiAgIC0gc2VuZCB0aGUgdjEwIG9mIHRoaXMgUFIKPj4gCj4+IEknbSBub3Qgc3VyZSBpZiB0
aGVyZSdzIGEgbmVlZCB0byBzZW5kIGEgZnVsbCBwYXRjaHNldCBhbnltb3JlPyBXZSBhcmUKPj4g
c28gY2xvc2Ugbm93IGFueXdheSBhbmQgdGhlIGZ1bGwgZHJpdmVyIGlzIGF2YWlsYWJsZSBmcm9t
IHRoZSBzdGFnaW5nCj4+IHRyZWUsIGF0IGxlYXN0IHRoYXQncyB3aGF0IEkgd2lsbCB1c2UgZnJv
bSBub3cgb24gd2hlbiByZXZpZXdpbmcgd2Z4Lgo+PiAKPj4gV2hhdCBhYm91dCB0aGUgRGV2aWNl
IFRyZWUgYmluZGluZ3M/IFRoYXQgbmVlZHMgdG8gYmUgYWNrZWQgYnkgdGhlIERUCj4+IG1haW50
YWluZXJzLCBzbyB0aGF0J3MgZ29vZCB0byBzdWJtaXQgYXMgYSBzZXBhcmF0ZSBwYXRjaCBmb3Ig
cmV2aWV3Lgo+Cj4gVGhlcmUgaXMgYWxzbyB0aGUgcGF0Y2ggMDEvMjQgYWJvdXQgdGhlIFNESU8g
SURzLgo+Cj4gSSB0aGluayB0aGUgdjEwIGNvdWxkIGNvbnRhaW4gb25seSAzIHBhdGNoZXM6Cj4K
PiAgICAgMS4gbW1jOiBzZGlvOiBhZGQgU0RJTyBJRHMgZm9yIFNpbGFicyBXRjIwMCBjaGlwCj4g
ICAgIDIuIGR0LWJpbmRpbmdzOiBpbnRyb2R1Y2Ugc2lsYWJzLHdmeC55YW1sCj4gICAgIDMuIFth
bGwgdGhlIHBhdGNoZXMgMyB0byAyNCBzcXVhc2hlZF0KPgo+IFdvdWxkIGl0IGJlIHJpZ2h0IGZv
ciB5b3U/CgpUQkggSSBkb24ndCBzZWUgdGhlIHBvaW50IG9mIHBhdGNoIDMgYXQgdGhpcyBtb21l
bnQsIHdlIGhhdmUgaGFkIHNvIG1hbnkKaXRlcmF0aW9ucyB3aXRoIHRoZSBmdWxsIGRyaXZlciBh
bHJlYWR5LiBJZiBwZW9wbGUgd2FudCB0byBsb29rIGF0IHRoZQpkcml2ZXIsIHRoZXkgY2FuIGNo
ZWNrIGl0IGZyb20gdGhlIHN0YWdpbmcgdHJlZS4gU28gaW4gdGhlIG5leHQgcm91bmQgSQpyZWNv
bW1lbmQgc3VibWl0dGluZyBvbmx5IHBhdGNoZXMgMSBhbmQgMiBhbmQgZm9jdXMgb24gZ2V0dGlu
ZyBhbGwgdGhlCnBlbmRpbmcgcGF0Y2hlcyB0byBzdGFnaW5nIHRyZWUuCgpBbmQgdGhlIGNoYW5j
ZXMgYXJlIHRoYXQgYSBiaWcgcGF0Y2ggbGlrZSB0aGF0IHdvdWxkIGJlIGZpbHRlcmVkIGJ5IHRo
ZQptYWlsaW5nIGxpc3RzIGFueXdheS4KCi0tIApodHRwczovL3BhdGNod29yay5rZXJuZWwub3Jn
L3Byb2plY3QvbGludXgtd2lyZWxlc3MvbGlzdC8KCmh0dHBzOi8vd2lyZWxlc3Mud2lraS5rZXJu
ZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0aW5ncGF0Y2hlcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
