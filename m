Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 64759F2A94
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 10:27:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 984EC20395;
	Thu,  7 Nov 2019 09:27:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qalt7Ra7Zb9r; Thu,  7 Nov 2019 09:27:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C6ECA20384;
	Thu,  7 Nov 2019 09:27:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 432991BF2E4
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 09:27:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3F7AD84189
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 09:27:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EOsmIj37emjo for <devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 09:27:08 +0000 (UTC)
X-Greylist: delayed 00:06:13 by SQLgrey-1.7.6
Received: from mx.0dd.nl (mx.0dd.nl [5.2.79.48])
 by whitealder.osuosl.org (Postfix) with ESMTP id 957F084543
 for <devel@driverdev.osuosl.org>; Thu,  7 Nov 2019 09:27:08 +0000 (UTC)
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id BDAB85FBCA;
 Thu,  7 Nov 2019 10:20:53 +0100 (CET)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="DErSWDeC"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 70F7860E15;
 Thu,  7 Nov 2019 10:20:53 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 70F7860E15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1573118453;
 bh=VNI6ueMuAqg9JykHs42KWFyCu+oSfzrckVrJN6RHl1U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=DErSWDeCJGOpQRn/9IeUDgudR8wiBsZK/52Ly5Hj8qYOKx+kIISU/EDojjPAFMf7V
 1zeb2cvB6HtA/xtvbomGdctF0jRFYQU9IVwzqbYFiFmsReIXrlLMrRiIAELkhFFLyG
 B91UMdHXknKgc//LIaMXx/GqSwcHFeVPcU2PZskl7dRY6plX7q/TAqtdoMCZFb+4EI
 /uh6oQw209TxyItkPHW48wPRevFclqyUKUc3CdwgDDmpUCHxo62eij9bBO7dWk2QAg
 JyN/nBxqYW+29pPCkLLDnZITfxNPB1XGKWRR/lGloR7jFyWsntIS8dzndVjlaWdHjA
 aJN4eY5F4PpEw==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Thu, 07 Nov 2019 09:20:53 +0000
Date: Thu, 07 Nov 2019 09:20:53 +0000
Message-ID: <20191107092053.Horde.i3MVcW9RqZDOQBMADZX9fuc@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: gerg@kernel.org
Subject: Re: [PATCH] mtd: rawnand: driver for Mediatek MT7621 SoC NAND flash
 controller
In-Reply-To: <20191107073521.11413-1-gerg@kernel.org>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, Weijie Gao <hackpascal@gmail.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 DENG Qingfang <dengqf6@mail2.sysu.edu.cn>, linux-mediatek@lists.infradead.org,
 neil@brown.name, linux-mtd@lists.infradead.org, blogic@openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UXVvdGluZyBnZXJnQGtlcm5lbC5vcmc6Cgo+IEZyb206IEdyZWcgVW5nZXJlciA8Z2VyZ0BrZXJu
ZWwub3JnPgo+Cj4gQWRkIGEgZHJpdmVyIHRvIHN1cHBvcnQgdGhlIE5BTkQgZmxhc2ggY29udHJv
bGxlciBvZiB0aGUgTWVkaWFUZWsgTVQ3NjIxCj4gU3lzdGVtLW9uLUNoaXAgZGV2aWNlLiAoVGhp
cyBvbmUgaXMgdGhlIE1JUFMgYmFzZWQgcGFydHMgZnJvbSBNZWRpYXRlaykuCj4KPiBUaGlzIGNv
ZGUgaXMgYSByZS13b3JraW5nIG9mIHRoZSBlYXJsaWVyIHBhdGNoZXMgZm9yIHRoaXMgaGFyZHdh
cmUgdGhhdAo+IGhhdmUgYmVlbiBmbG9hdGluZyBhcm91bmQgdGhlIGludGVybmV0IGZvciB5ZWFy
czoKPgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9SZWNsYWltWW91clByaXZhY3kvY2xvYWsvYmxvYi9t
YXN0ZXIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9wYXRjaGVzLTMuMTgvMDA0NS1tdGQtYWRkLW10NzYy
MS1uYW5kLXN1cHBvcnQucGF0Y2gKPgo+IFRoaXMgaXMgYSBtdWNoIGNsZWFuZWQgdXAgdmVyc2lv
biwgcHV0IGluIHN0YWdpbmcgdG8gc3RhcnQgd2l0aC4KPiBJdCBkb2VzIHN0aWxsIGhhdmUgc29t
ZSBwcm9ibGVtcywgbWFpbmx5IHRoYXQgaXQgc3RpbGwgdXNlcyBhIGxvdCBvZiB0aGUKPiBtdGQg
cmF3IG5hbmQgbGVnYWN5IHN1cHBvcnQuCj4KPiBUaGUgZHJpdmVyIG5vdCBvbmx5IGNvbXBpbGVz
LCBidXQgaXQgd29ya3Mgd2VsbCBvbiB0aGUgc21hbGwgcmFuZ2Ugb2YKPiBoYXJkd2FyZSBwbGF0
Zm9ybXMgdGhhdCBpdCBoYXMgYmVlbiB1c2VkIG9uIHNvIGZhci4gSSBoYXZlIGJlZW4gdXNpbmcK
PiBmb3IgcXVpdGUgYSB3aGlsZSBub3csIGNsZWFuaW5nIHVwIGFzIEkgZ2V0IHRpbWUuCj4KPiBT
by4uLiBJIGFtIGxvb2tpbmcgZm9yIGNvbW1lbnRzIG9uIHRoZSBiZXN0IGFwcHJvYWNoIGZvcndh
cmQgd2l0aCB0aGlzLgo+IEF0IGxlYXN0IGluIHN0YWdpbmcgaXQgY2FuIGdldCBzb21lIG1vcmUg
ZXllYmFsbHMgZ29pbmcgb3ZlciBpdC4KPgo+IFRoZXJlIGlzIGEgbWVkaWF0ZWsgbmFuZCBkcml2
ZXIgYWxyZWFkeSwgbXRrX25hbmQuYywgZm9yIHRoZWlyIEFSTSBiYXNlZAo+IFN5c3RlbS1vbi1D
aGlwIGRldmljZXMuIFRoYXQgaGFyZHdhcmUgbW9kdWxlIGxvb2tzIHRvIGhhdmUgc29tZSBoYXJk
d2FyZQo+IHNpbWlsYXJpdGllcyB3aXRoIHRoaXMgb25lLiBBdCB0aGlzIHBvaW50IEkgZG9uJ3Qg
a25vdyBpZiB0aGF0IGNhbiBiZQo+IHVzZWQgb24gdGhlIDc2MjEgYmFzZWQgZGV2aWNlcy4gKEkg
dHJpZWQgYSBxdWljayBhbmQgZGlydHkgc2V0dXAgYW5kIGhhZAo+IG5vIHN1Y2Nlc3MgdXNpbmcg
aXQgb24gdGhlIDc2MjEpLgo+Cj4gVGhvdWdodHM/CgorQ0MgREVORyBRaW5nZmFuZywgQ2h1YW5o
b25nIEd1bywgV2VpamllIEdhbyB0byB0aGUgbGlzdC4KCkhpIEdyZWcsCgpUaGFua3MgZm9yIHBv
c3RpbmcgdGhpcyBkcml2ZXIuCgpCdXQgSSB3b3VsZCBsaWtlIHRvIG1lbnRpb24gdGhhdCB0aGUg
b3BlbndydCBjb21tdW5pdHkgaXMgY3VycmVudGx5ICAKd29ya2luZyBvbiBhCm5ldyB2ZXJzaW9u
IHdoaWNoIGlzIGJhc2VkIGEgbmV3ZXIgdmVyc2lvbiBvZiB0aGUgTWVkaWFUZWsgdmVuZG9yIGRy
aXZlci4KVGhhdCB2ZXJzaW9uIGlzIGN1cnJlbnRseSB0YXJnZXRlZCBmb3IgdGhlIG9wZW53cnQg
NC4xOSBrZXJuZWwuClNlZSBmdWxsIHB1bGwgcmVxdWVzdCBbMV0gYW5kIE5BTkQgZHJpdmVyIHBh
dGNoIFsyXQoKSXQgd291bGQgYmUgYSBzaGFtZSBpZiBkdXBsaWNhdGUgd29yayBoYXMgYmVlbiBk
b25lLgoKR3JlYXRzLAoKUmVuw6kKClsxXTogaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3Bl
bndydC9wdWxsLzIzODUKWzJdOiAgCmh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L29wZW53cnQv
cHVsbC8yMzg1L2NvbW1pdHMvYjI1NjljMGE1OTQzZmU4Zjk0YmEwN2M5NTQwZWNkMTQwMDZkNzI5
YQoKPHNuaXA+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
