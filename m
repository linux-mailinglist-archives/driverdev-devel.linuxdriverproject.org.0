Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E1EA2AF8
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 01:35:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C505885E0;
	Thu, 29 Aug 2019 23:35:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vVTFSvFaD9iJ; Thu, 29 Aug 2019 23:35:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E6B34883F2;
	Thu, 29 Aug 2019 23:35:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ADFD51BF3EA
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 23:35:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A94648723D
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 23:35:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 033pM2peUor2 for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 23:35:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7DD8B8723A
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 23:35:07 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A0392173E;
 Thu, 29 Aug 2019 23:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567121707;
 bh=MyHmJUU3Gn2uuapEBmq5L4LI7DM7u2Evj0T5dUzngj8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MbKkKKR0uyA41FC66Oo4hTRux8s83095GYUAliZ9zLkaKe7iz2b30Mi8EiHVPoF3q
 clZF0De+LYVO+xsNkIjkfxYgtwFaKjdINb7Y+oqJyLdMAB35Ic2zGoEYOPH7Ny5ELw
 TBILAOb2LwnxMigNkC8Cbk1WoUYTG/6qrjCEEQos=
Date: Thu, 29 Aug 2019 19:35:06 -0400
From: Sasha Levin <sashal@kernel.org>
To: Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190829233506.GT5281@sasha-vm>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829205631.uhz6jdboneej3j3c@pali>
 <184209.1567120696@turing-police>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <184209.1567120696@turing-police>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali.rohar@gmail.com>,
 linux-fsdevel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBBdWcgMjksIDIwMTkgYXQgMDc6MTg6MTZQTSAtMDQwMCwgVmFsZGlzIEtsxJN0bmll
a3Mgd3JvdGU6Cj5PbiBUaHUsIDI5IEF1ZyAyMDE5IDIyOjU2OjMxICswMjAwLCBQYWxpIFJvaD9y
IHNhaWQ6Cj4KPj4gSSdtIG5vdCByZWFsbHkgc3VyZSBpZiB0aGlzIGV4ZmF0IGltcGxlbWVudGF0
aW9uIGlzIGZ1bGx5IHN1aXRhYmxlIGZvcgo+PiBtYWlubGluZSBsaW51eCBrZXJuZWwuCj4+Cj4+
IEluIG15IG9waW5pb24sIHByb3BlciB3YXkgc2hvdWxkIGJlIHRvIGltcGxlbWVudCBleEZBVCBz
dXBwb3J0IGludG8KPj4gZXhpc3RpbmcgZnMvZmF0LyBjb2RlIGluc3RlYWQgb2YgcmVwbGFjaW5n
IHdob2xlIHZmYXQvbXNkb3NmcyBieSB0aGlzCj4+IG5ldyAobm93IHN0YWdpbmcpIGZhdCBpbXBs
ZW1lbnRhdGlvbi4KPgo+PiBJbiBsaW51eCBrZXJuZWwgd2UgcmVhbGx5IGRvIG5vdCBuZWVkIHR3
byBkaWZmZXJlbnQgaW1wbGVtZW50YXRpb24gb2YKPj4gVkZBVDMyLgo+Cj5UaGlzIHBhdGNoIGhv
d2V2ZXIgZG9lcyBoYXZlIG9uZSBtYWpvciBhZHZhbnRhZ2Ugb3ZlciAicGF0Y2ggdmZhdCB0bwo+
c3VwcG9ydCBleGZhdCIgLSB3aGljaCBpcyB0aGF0IHRoZSBwYXRjaCBleGlzdHMuCj4KPklmIHNv
bWVib2R5IGNvbWVzIGZvcndhcmQgd2l0aCBhbiBhY3R1YWwgImV4dGVuZCB2ZmF0IHRvIGRvIGV4
ZmF0IiBwYXRjaCwKPndlIHNob3VsZCBhdCB0aGF0IHBvaW50IGhhdmUgYSBkaXNjdXNzaW9uIGFi
b3V0IHJlbGF0aXZlIG1lcml0cy4uLi4KClRoaXMgcGF0Y2ggZ29pbmcgaW50byBzdGFnaW5nIGRv
ZXNuJ3QgbmVjZXNzYXJpbHkgbWVhbiB0aGF0IG9uZSBkYXkKaXQnbGwgZ2V0IG1vdmVkIHRvIGZz
L2V4ZmF0Ly4gSXQncyB2ZXJ5IHBvc3NpYmxlIHRoYXQgdGhlIGFwcHJvYWNoIHdvdWxkCmluc3Rl
YWQgYmUgdG8gdXNlIHRoZSBzdGFnaW5nIGNvZGUgZm9yIHJlZmVyZW5jZSwgYnVpbGQgdGhpcwpm
dW5jdGlvbmFsaXR5IGluIGZzL2ZhdC8sIGFuZCBraWxsIG9mZiB0aGUgc3RhZ2luZyBjb2RlIHdo
ZW4gaXQncyBub3QKbmVlZGVkIGFueW1vcmUuCgpXaXRoIHJlZ2FyZHMgdG8gbWlzc2luZyBzcGVj
cy9kb2NzL3doYXRldmVyIC0gb3VyIG1haW4gY29uY2VybiB3aXRoIHRoaXMKcmVsZWFzZSB3YXMg
dGhhdCB3ZSB3YW50IGZ1bGwgaW50ZXJvcGVyYWJpbGl0eSwgd2hpY2ggaXMgd2h5IHRoZSBzcGVj
CndhcyBtYWRlIHB1YmxpYyBhcy1pcyB3aXRob3V0IG1vZGlmaWNhdGlvbnMgZnJvbSB3aGF0IHdh
cyB1c2VkCmludGVybmFsbHkuIFRoZXJlJ3Mgbm8gInNlY3JldCBzYXVjZSIgdGhhdCBNaWNyb3Nv
ZnQgaXMgaGlkaW5nIGhlcmUuCgpIb3cgYWJvdXQgd2UgZ2l2ZSB0aGlzIHNwZWMvY29kZSB0aW1l
IHRvIGdldCBzb2FrZWQgYW5kIHJldmlld2VkIGZvciBhCmJpdCwgYW5kIGlmIGZvbGtzIHN0aWxs
IGZlZWwgKGluIGEgbW9udGggb3Igc28/KSB0aGF0IHRoZXJlIGFyZSBtaXNzaW5nCmJpdHMgb2Yg
aW5mb3JtYXRpb24gcmVsYXRlZCB0byBleGZhdCwgSSdsbCBiZSBoYXBweSB0byBnbyBiYWNrIGFu
ZCB0cnkKdG8gZ2V0IHRoZW0gb3V0IGFzIHdlbGwuCgotLQpUaGFua3MsClNhc2hhCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
