Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B409F210586
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 09:55:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A296893E2;
	Wed,  1 Jul 2020 07:55:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uUSat2PB2YpR; Wed,  1 Jul 2020 07:55:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 64B54891F9;
	Wed,  1 Jul 2020 07:55:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5FEE01BF59A
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 07:55:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 599878BBD3
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 07:55:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sxnSosa8K7EV for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 07:55:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CF3F38C2A6
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 07:55:18 +0000 (UTC)
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57CB0206B6;
 Wed,  1 Jul 2020 07:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593590118;
 bh=5t93NkyfGhKJiTYQKhPT1KaCn9gTsqJJ06hndKaTj1Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vlhT+lzaWNMNK4uLKefQhXFrghxc0l40imaCxs9ZSxhzqYoaJvwbQfef21615tsct
 1ybdJsnpVmaQGLmrGoCjBBv3RNVTt7220zpexa1YFr4EN1A5V+d85twCf0XaatN7g9
 Qwfn1JdXLO1qvIN0RnaeYzeHH+9R0xgg8OXpB2AU=
Received: by pali.im (Postfix)
 id 90B6A102D; Wed,  1 Jul 2020 09:55:15 +0200 (CEST)
Date: Wed, 1 Jul 2020 09:55:15 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Ajay.Kathat@microchip.com
Subject: Re: [PATCH v7 00/17] wilc1000: move out of staging
Message-ID: <20200701075515.zypusfh4xazqu2fl@pali>
References: <20200623110000.31559-1-ajay.kathat@microchip.com>
 <20200629132612.nl6rfpihzlii6ilh@pali>
 <c23ca5da-b9db-5e98-94e4-edc84ded9611@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c23ca5da-b9db-5e98-94e4-edc84ded9611@microchip.com>
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
Cc: devel@driverdev.osuosl.org, Venkateswara.Kaja@microchip.com,
 Sripad.Balwadgi@microchip.com, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, Nicolas.Ferre@microchip.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlc2RheSAzMCBKdW5lIDIwMjAgMDM6MTc6MDEgQWpheS5LYXRoYXRAbWljcm9jaGlwLmNv
bSB3cm90ZToKPiBPbiAyOS8wNi8yMCA2OjU2IHBtLCBQYWxpIFJvaMOhciB3cm90ZToKPiA+IEVY
VEVSTkFMIEVNQUlMOiBEbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1bmxl
c3MgeW91IGtub3cgdGhlIGNvbnRlbnQgaXMgc2FmZQo+ID4gCj4gPiBPbiBUdWVzZGF5IDIzIEp1
bmUgMjAyMCAxMTowMDowNCBBamF5LkthdGhhdEBtaWNyb2NoaXAuY29tIHdyb3RlOgo+ID4+IFRo
aXMgcGF0Y2ggc2VyaWVzIGlzIHRvIHJldmlldyBhbmQgbW92ZSB3aWxjMTAwMCBkcml2ZXIgb3V0
IG9mIHN0YWdpbmcuCj4gPj4gTW9zdCBvZiB0aGUgcmV2aWV3IGNvbW1lbnRzIHJlY2VpdmVkIGlu
IFsxXSAmIFsyXSBhcmUgYWRkcmVzc2VkIGluIHRoZQo+ID4+IGxhdGVzdCBjb2RlLgo+ID4+IFBs
ZWFzZSByZXZpZXcgYW5kIHByb3ZpZGUgeW91ciBpbnB1dHMuCj4gPiAKPiA+IEhlbGxvIEFqYXkh
IENvdWxkIHlvdSBwbGVhc2UgbW92ZSBTRElPIHZlbmRvci9kZXZpY2UgSUQgZGVmaW5pdGlvbnMg
ZnJvbQo+ID4gZHJpdmVyIGNvZGUgd2lsYzEwMDAvc2Rpby5jIHRvIGNvbW1vbiBmaWxlIGluY2x1
ZGUvbGludXgvbW1jL3NkaW9faWRzLmg/Cj4gPiAKPiAKPiBDdXJyZW50bHksIHRoZSB3aWxjMTAw
MCBkcml2ZXIgbW92ZW1lbnQgY2hhbmdlcyBhcmUgcHJlc2VudCBpbiB0b3BpYwo+IGJyYW5jaCBh
bmQgeWV0IHRvIGJlIG1lcmdlZCB0byBtYXN0ZXIgYnJhbmNoLiBXb3VsZCBpdCBiZSBva2F5IHRv
IHN1Ym1pdAo+IHRoZSBuZXcgcGF0Y2ggb25jZSBkcml2ZXIgaXMgbWVyZ2VkIHRvICd3aXJlbGVz
cy1kcml2ZXItbmV4dCcgbWFzdGVyIGFuZAo+IGJyYW5jaCBpcyBwdWxsZWQgaW50byBHcmVnJ3Mg
c3RhZ2luZyByZXBvLgoKSSB0aGluayBpdCBzaG91bGQgYmUgT0suIEJ1dCBtYXliZSBVbGYgYXMg
bWFpbnRhaW5lciBvZiBtbWMgc3Vic3lzdGVtCmNvdWxkIGhhdmUgb3BpbmlvbiBvciByZWFjdCBv
biB0aGlzLgoKPiBSZWdhcmRzLAo+IEFqYXkKPiAKPiA+IFNpbWlsYXIgY2xlYW51cCB3YXMgcmVj
ZW50bHkgZmluaXNoZWQgZm9yIGFsbCBleGlzdGluZyBub24tc3RhZ2luZyBkcml2ZXJzOgo+ID4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbW1jLzIwMjAwNTIyMTQ0NDEyLjE5NzEyLTEt
cGFsaUBrZXJuZWwub3JnLwo+ID4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
