Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E97241505BE
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Feb 2020 13:00:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2BAC8204DF;
	Mon,  3 Feb 2020 12:00:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nMP4qEc1HApF; Mon,  3 Feb 2020 12:00:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0BCBE2050C;
	Mon,  3 Feb 2020 12:00:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 117F01BF5DA
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 12:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0980F204E0
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 12:00:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AWbnqfVfzYJs for <devel@linuxdriverproject.org>;
 Mon,  3 Feb 2020 12:00:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud8.xs4all.net (lb3-smtp-cloud8.xs4all.net
 [194.109.24.29])
 by silver.osuosl.org (Postfix) with ESMTPS id B564C2038A
 for <devel@driverdev.osuosl.org>; Mon,  3 Feb 2020 12:00:00 +0000 (UTC)
Received: from [192.168.2.10] ([46.9.235.248])
 by smtp-cloud8.xs4all.net with ESMTPA
 id yaOQiSCJVn7E5yaOTi3b1s; Mon, 03 Feb 2020 12:59:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1580731198; bh=qnhyVG0KBRfYCvUMy524atjha1LD1Pr5StfWLiE8f28=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=tANZdcNYK+ILFjz2PL+KoMamy6AbwTOV1Xm8tBiPqXR4vJ64nE9Vt3bQNWzXnkCcw
 CTVoWzv0zbZpvU++6RmvjQHUcbKZWwSClJyGdWX+OoaiPvcLHY9Y0PQtouC8VwI68Q
 roEjyCGQIn+wneGw6xclZGjoZaa/nbX2kzDGFDfJI3kqlJzGA/ab1KrF9LdwwFYBhE
 G9/QH6NCqskfDT5NeJa+ZXD6wFiPthhCk6MkMyAdSeArMhptYYPYS4pV8jqLUFqLmy
 hpki3IBtcAMXgbP1Rui9IGP2ZZfQ3nuw8Ff4Np5Skp0gE+tFgo5RHJm9FtKBsUvlw4
 elVPyGCQsIn9w==
Subject: Re: [PATCH] media: hantro: Support H264 profile control
To: Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas@ndufresne.ca>
References: <20191122051608.128717-1-hiroh@chromium.org>
 <767528be59275265072896e5c679e97575615fdd.camel@ndufresne.ca>
 <CAAFQd5D3OpAAtX7_0ktz4-aAgWN_G4YBQMR=Vwp7JPopjvRkRA@mail.gmail.com>
 <f5341ed837529bd38d466d4b655e261d64065912.camel@ndufresne.ca>
 <CAAFQd5Cpk8qG+VgE6+aznBmXu11YG0gNQyCRanZghds-TPKvyg@mail.gmail.com>
 <c88b2822-0dd2-8ea3-eb0b-262df5a30830@xs4all.nl>
 <8b10414a1c198a6e3bd5e131a72bd6f68466bea5.camel@ndufresne.ca>
 <CAAFQd5AZ1DTtz2myuO9YSwjMaxPme0BDNaOBo97tSHLbm4XWPg@mail.gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <8a6a371d-17cd-eb32-779c-0669da5a8d5e@xs4all.nl>
Date: Mon, 3 Feb 2020 12:59:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAAFQd5AZ1DTtz2myuO9YSwjMaxPme0BDNaOBo97tSHLbm4XWPg@mail.gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfKgEIUyQM84B5b99RtJdse6y6Orwd9OgeSkGnakeLhCwcAUgr1MPdtJiFYnBf2Zi6QE7Z6h247QLPmFd+ZNdQVZ7rn3ea/rS7FwSmObtKVteDYSekFyT
 s3SFvWME3qRxpJo0XVI39+GvZ+x8q16vcVGzvz20gBjqi3M1WO4KsFRvlGyhOGxoWt1yGREklKATntHKul98PHwU5vTQNVLXOk0rNJf3iLX+e8zr3jV72L1/
 6WN6s6/jOmrve0Wur9DBPS4Kr1ag0uEcy97+fMu7CizAXdHTIqo/Hk9D57rsyAig+vcgDfHtQxXfx7/S9vXidep0/i+VFBs9ErqPFbY3UcGkQu49Vfu/LZm8
 paCU03WOaUhpP9MYFRnE5E/RKBWwi4m3UPnTo9EEIYELt9T2cS2AxDlITRpGhPQ9iWDbOMKvRSiPyDGmleJg5GnGxZZizcbCg9OWhDqxgXX5egUh5TA=
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hirokazu Honda <hiroh@chromium.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMi8zLzIwIDEyOjEzIFBNLCBUb21hc3ogRmlnYSB3cm90ZToKPiBPbiBTYXQsIEphbiAxOCwg
MjAyMCBhdCAxMDozMSBQTSBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzQG5kdWZyZXNuZS5jYT4g
d3JvdGU6Cj4+Cj4+IExlIHZlbmRyZWRpIDEwIGphbnZpZXIgMjAyMCDDoCAxMzozMSArMDEwMCwg
SGFucyBWZXJrdWlsIGEgw6ljcml0IDoKPj4+IE9uIDExLzI5LzE5IDE6MTYgQU0sIFRvbWFzeiBG
aWdhIHdyb3RlOgo+Pj4+IE9uIFNhdCwgTm92IDIzLCAyMDE5IGF0IDE6NTIgQU0gTmljb2xhcyBE
dWZyZXNuZSA8bmljb2xhc0BuZHVmcmVzbmUuY2E+Cj4+Pj4gd3JvdGU6Cj4+Pj4+IExlIHNhbWVk
aSAyMyBub3ZlbWJyZSAyMDE5IMOgIDAxOjAwICswOTAwLCBUb21hc3ogRmlnYSBhIMOpY3JpdCA6
Cj4+Pj4+PiBPbiBTYXQsIE5vdiAyMywgMjAxOSBhdCAxMjowOSBBTSBOaWNvbGFzIER1ZnJlc25l
IDxuaWNvbGFzQG5kdWZyZXNuZS5jYT4KPj4+Pj4+IHdyb3RlOgo+Pj4+Pj4+IExlIHZlbmRyZWRp
IDIyIG5vdmVtYnJlIDIwMTkgw6AgMTQ6MTYgKzA5MDAsIEhpcm9rYXp1IEhvbmRhIGEgw6ljcml0
IDoKPj4+Pj4+Pj4gVGhlIEhhbnRybyBHMSBkZWNvZGVyIHN1cHBvcnRzIEguMjY0IHByb2ZpbGVz
IGZyb20gQmFzZWxpbmUgdG8gSGlnaCwKPj4+Pj4+Pj4gd2l0aAo+Pj4+Pj4+PiB0aGUgZXhjZXB0
aW9uIG9mIHRoZSBFeHRlbmRlZCBwcm9maWxlLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBFeHBvc2UgdGhl
IFY0TDJfQ0lEX01QRUdfVklERU9fSDI2NF9QUk9GSUxFIGNvbnRyb2wsIHNvIHRoYXQgdGhlCj4+
Pj4+Pj4+IGFwcGxpY2F0aW9ucyBjYW4gcXVlcnkgdGhlIGRyaXZlciBmb3IgdGhlIGxpc3Qgb2Yg
c3VwcG9ydGVkCj4+Pj4+Pj4+IHByb2ZpbGVzLgo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhhbmtzIGZvciB0
aGlzIHBhdGNoLiBEbyB5b3UgdGhpbmsgd2UgY291bGQgYWxzbyBhZGQgdGhlIExFVkVMCj4+Pj4+
Pj4gY29udHJvbAo+Pj4+Pj4+IHNvIHRoZSBwcm9maWxlL2xldmVsIGVudW1lcmF0aW9uIGJlY29t
ZXMgY29tcGxldGUgPwo+Pj4+Pj4+Cj4+Pj4+Pj4gSSdtIHRoaW5raW5nIGl0IHdvdWxkIGJlIG5p
Y2UgaWYgdGhlIHY0bDIgY29tcGxpYW5jZSB0ZXN0IG1ha2Ugc3VyZQo+Pj4+Pj4+IHRoYXQgY29k
ZWNzIGRvIGltcGxlbWVudCB0aGVzZSBjb250cm9scyAoYm90aCBzdGF0ZWZ1bCBhbmQgc3RhdGVs
ZXNzKSwKPj4+Pj4+PiBpdCdzIGVzc2VudGlhbCBmb3Igc3RhY2sgd2l0aCBzb2Z0d2FyZSBmYWxs
YmFjaywgb3IgbXVsdGlwbGUgY2FwYWJsZQo+Pj4+Pj4+IGNvZGVjIGhhcmR3YXJlIGJ1dCB3aXRo
IGRpZmZlcmVudCBjYXBhYmlsaXRpZXMuCj4+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBMZXZlbCBpcyBh
IGRpZmZpY3VsdCBzdG9yeSwgYmVjYXVzZSBpdCBhbHNvIHNwZWNpZmllcyB0aGUgbnVtYmVyIG9m
Cj4+Pj4+PiBtYWNyb2Jsb2NrcyBwZXIgc2Vjb25kLCBidXQgZm9yIGRlY29kZXJzIGxpa2UgdGhp
cyB0aGUgbnVtYmVyIG9mCj4+Pj4+PiBtYWNyb2Jsb2NrcyBwZXIgc2Vjb25kIGl0IGNhbiBoYW5k
bGUgZGVwZW5kcyBvbiB0aGluZ3MgdGhlIGRyaXZlcgo+Pj4+Pj4gbWlnaHQgYmUgbm90IGF3YXJl
IG9mIC0gY2xvY2sgZnJlcXVlbmNpZXMsIEREUiB0aHJvdWdocHV0LCBzeXN0ZW0KPj4+Pj4+IGxv
YWQsIGV0Yy4KPj4+Pj4+Cj4+Pj4+PiBNeSB0YWtlIG9uIHRoaXMgaXMgdGhhdCB0aGUgZGVjb2Rl
ciBkcml2ZXIgc2hvdWxkIGFkdmVydGlzZSB0aGUKPj4+Pj4+IGhpZ2hlc3QgcmVzb2x1dGlvbiB0
aGUgZGVjb2RlciBjYW4gaGFuZGxlIGR1ZSB0byBoYXJkd2FyZSBjb25zdHJhaW50cy4KPj4+Pj4+
IFBlcmZvcm1hbmNlIHJlbGF0ZWQgdGhpbmdzIGRlcGVuZCBvbiB0aGUgaW50ZWdyYXRpb24gZGV0
YWlscyBhbmQKPj4+Pj4+IHNob3VsZCBiZSBtYW5hZ2VkIGVsc2V3aGVyZS4gRm9yIGV4YW1wbGUg
QW5kcm9pZCBhbmQgQ2hyb21lIE9TIG1hbmFnZQo+Pj4+Pj4gZXhwZWN0ZWQgZGVjb2RpbmcgcGVy
Zm9ybWFuY2UgaW4gcGVyLWJvYXJkIGNvbmZpZ3VyYXRpb24gZmlsZXMuCj4+Pj4+Cj4+Pj4+IFdo
ZW4geW91IHJlYWQgZGF0YXNoZWV0LCB0aGUgSFcgaXMgYWx3YXlzIHJhdGVkIHRvIG1heGltdW0g
bGV2ZWwgKGFuZAo+Pj4+PiBpdCdzIGEgcmFuZ2UpIHdpdGggdGhlIGFzc3VtcHRpb24gb2YgYSBz
aW5nbGUgc3RyZWFtLiBJdCBzZWVtcyBtdWNoCj4+Pj4+IGVhc2llciB0byBleHBvc2UgdGhpcyBh
cy1pcywgc3RhdGljYWxseSB0aGVuIHRvIHN0YXJ0IGRvaW5nIHNvbWUgbWF0aAo+Pj4+PiB3aXRo
IGRhdGEgdGhhdCBpc24ndCBmdWxseSBleHBvc2VkIHRvIHRoZSB1c2VyLiBUaGlzIGlzIGFib3V0
IGZpbHRlcmluZwo+Pj4+PiBvZiBtdWx0aXBsZSBDT0RFQyBpbnN0YW5jZXMsIGl0IGRvZXMgbm90
IG5lZWQgdG8gYmUgcm9ja2V0IHNjaWVuY2UsCj4+Pj4+IHNwZWNpYWxseSB0aGF0IHRoZSBhbW91
bnQgb2YgbWlzc2luZyBkYXRhIGlzIGltcG9ydGFudCAoZS5nLiB1c2FnZSBvZgo+Pj4+PiB0aWxl
cywgY29tcHJlc3Npb24sIElQUCBhbGwgaGF2ZSBhbiBpbXBhY3Qgb24gdGhlIGZpbmFsIHBlcmZv
cm1hbmNlKS4KPj4+Pj4gQWxsIHdlIHdhbnQgdG8ga25vdyBpbiB1c2Vyc3BhY2UgaXMgaWYgdGhp
cyBIVyBpcyBldmVuIHBvc3NpYmx5IGNhcGFibGUKPj4+Pj4gb2YgTEVWRUwgWCwgYW5kIGlmIG5v
dCwgd2UnbGwgbG9vayBmb3IgYW5vdGhlciBvbmUuCj4+Pj4+Cj4+Pj4KPj4+PiBBZ3JlZWQsIG9u
ZSBjb3VsZCBwb3RlbnRpYWxseSBkZWZpbmUgaXQgdGhpcyB3YXksIGJ1dCB3b3VsZCBpdCBiZQo+
Pj4+IHJlYWxseSB1c2VmdWwgZm9yIHRoZSB1c2Vyc3BhY2UgYW5kIHRoZSB1c2Vycz8gSSBndWVz
cyBpdCBjb3VsZCBlbmFibGUKPj4+PiBzbGlnaHRseSBmYXN0ZXIgZmFsbGJhY2sgdG8gc29mdHdh
cmUgZGVjb2RpbmcgaW4gdGhlIGV4dHJlbWUgY2FzZSBvZgo+Pj4+IHRoZSBoYXJkd2FyZSBub3Qg
c3VwcG9ydGluZyB0aGUgbGV2ZWwgYXQgYWxsLCBidXQgSSBzdXNwZWN0IHRoYXQgdGhlCj4+Pj4g
bWFqb3JpdHkgb2YgY2FzZXMgd291bGQgYmUgdGhlIGhhcmR3YXJlIGp1c3QgYmVpbmcgdW51c2Fi
bHkgc2xvdy4KPj4+Pgo+Pj4+IEFsc28sIGFzIEkgbWVudGlvbmVkIGJlZm9yZSwgd2UgYWxyZWFk
eSByZXR1cm4gdGhlIHJhbmdlIG9mIHN1cHBvcnRlZAo+Pj4+IHJlc29sdXRpb25zLCB3aGljaCBp
biBwcmFjdGljZSBzaG91bGQgbWFwIHRvIHRoZSBwYXJ0IG9mIHRoZSBsZXZlbAo+Pj4+IHRoYXQg
bWF5IGRlcGVuZCBvbiBoYXJkd2FyZSBjYXBhYmlsaXRpZXMgcmF0aGVyIHRoYW4gcGVyZm9ybWFu
Y2UsIHNvCj4+Pj4gZXhwb3NpbmcgbGV2ZWxzIGFzIHdlbGwgd291bGQgYWRkIHJlZHVuZGFuY3kg
dG8gdGhlIGluZm9ybWF0aW9uCj4+Pj4gZXhwb3NlZC4KPj4+Cj4+PiBUaGVyZSBpcyBhIGxvdCBv
ZiBkaXNjdXNzaW9uIGhlcmUsIGJ1dCBpdCBhbGwgcmV2b2x2ZXMgYXJvdW5kIGEgcG90ZW50aWFs
Cj4+PiBMRVZFTCBjb250cm9sLgo+Pj4KPj4+IFNvIEkgZ2F0aGVyIGV2ZXJ5b25lIGlzIE9LIHdp
dGggbWVyZ2luZyB0aGlzIHBhdGNoPwo+Pgo+PiBJJ20gb2sgd2l0aCB0aGlzLiBGb3IgbWUsIHRo
ZSBsZXZlbCByZWZsZWN0cyB0aGUgcmVhbCB0aW1lIHBlcmZvcm1hbmNlCj4+IGNhcGFiaWxpdHkg
YXMgZGVmaW5lIGluIHRoZSBzcGVjLCB3aGlsZSB0aGUgd2lkdGgvaGVpZ2h0IGNvbnN0cmFpbnRz
IHVzdWFsbHkKPj4gcmVwcmVzZW50IGFuIGFkZHJlc3NpbmcgY2FwYWJpY2l0eSwgd2hpY2ggbWF5
IG9yIG1heSBub3Qgb3BlcmF0ZSByZWFsLXRpbWUuCj4+Cj4gCj4gSSdkIGxpa2UgdG8gc2VlIHRo
ZSBsZXZlbCBjb250cm9sIGRvY3VtZW50YXRpb24gaW1wcm92ZWQgYmVmb3JlIHdlCj4gc3RhcnQg
YWRkaW5nIGl0IHRvIHRoZSBkcml2ZXJzLiBJJ2xsIGJlIG9rYXkgd2l0aCB0aGF0IHRoZW4gYXMg
bG9uZyBhcwo+IHRoZSB2YWx1ZXMgYXJlIGV4cG9zZWQgaW4gYSBjb25zaXN0ZW50IGFuZCB3ZWxs
IGRlZmluZWQgd2F5LiA6KQo+IAo+IEFzIGZvciB0aGlzIHBhdGNoLCBIYW5zLCBhcmUgeW91IGdv
aW5nIHRvIGFwcGx5IGl0PwoKSXQncyBpbiBhIFBSIGZvciA1LjcuIEkgaGFkIGhvcGVkIGl0IHdv
dWxkIGdvIGluIGZvciB2NS42LCBidXQgaXQgd2FzCnRvbyBsYXRlIGZvciB0aGF0LgoKUmVnYXJk
cywKCglIYW5zCgo+IAo+IEJlc3QgcmVnYXJkcywKPiBUb21hc3oKPiAKPj4+Cj4+PiBJZiBub3Qs
IGxldCBtZSBrbm93IGFzYXAuCj4+Pgo+Pj4gUmVnYXJkcywKPj4+Cj4+PiAgICAgICBIYW5zCj4+
Pgo+Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBIaXJva2F6dSBIb25kYSA8aGlyb2hAY2hyb21pdW0u
b3JnPgo+Pj4+Pj4+PiAtLS0KPj4+Pj4+Pj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
aGFudHJvX2Rydi5jIHwgMTAgKysrKysrKysrKwo+Pj4+Pj4+PiAgMSBmaWxlIGNoYW5nZWQsIDEw
IGluc2VydGlvbnMoKykKPj4+Pj4+Pj4KPj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4+Pj4+Pj4+IGIvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPj4+Pj4+Pj4gaW5kZXggNmQ5ZDQxMTcwODMyLi45
Mzg3NjE5MjM1ZDggMTAwNjQ0Cj4+Pj4+Pj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9o
YW50cm8vaGFudHJvX2Rydi5jCj4+Pj4+Pj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9o
YW50cm8vaGFudHJvX2Rydi5jCj4+Pj4+Pj4+IEBAIC0zNTUsNiArMzU1LDE2IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaGFudHJvX2N0cmwgY29udHJvbHNbXSA9IHsKPj4+Pj4+Pj4gICAgICAgICAg
ICAgICAgICAgICAgIC5kZWYgPQo+Pj4+Pj4+PiBWNEwyX01QRUdfVklERU9fSDI2NF9TVEFSVF9D
T0RFX0FOTkVYX0IsCj4+Pj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAubWF4ID0KPj4+Pj4+
Pj4gVjRMMl9NUEVHX1ZJREVPX0gyNjRfU1RBUlRfQ09ERV9BTk5FWF9CLAo+Pj4+Pj4+PiAgICAg
ICAgICAgICAgIH0sCj4+Pj4+Pj4+ICsgICAgIH0sIHsKPj4+Pj4+Pj4gKyAgICAgICAgICAgICAu
Y29kZWMgPSBIQU5UUk9fSDI2NF9ERUNPREVSLAo+Pj4+Pj4+PiArICAgICAgICAgICAgIC5jZmcg
PSB7Cj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAuaWQgPSBWNEwyX0NJRF9NUEVHX1ZJ
REVPX0gyNjRfUFJPRklMRSwKPj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIC5taW4gPSBW
NEwyX01QRUdfVklERU9fSDI2NF9QUk9GSUxFX0JBU0VMSU5FLAo+Pj4+Pj4+PiArICAgICAgICAg
ICAgICAgICAgICAgLm1heCA9IFY0TDJfTVBFR19WSURFT19IMjY0X1BST0ZJTEVfSElHSCwKPj4+
Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIC5tZW51X3NraXBfbWFzayA9Cj4+Pj4+Pj4+ICsg
ICAgICAgICAgICAgICAgICAgICBCSVQoVjRMMl9NUEVHX1ZJREVPX0gyNjRfUFJPRklMRV9FWFRF
TkRFRCksCj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAuZGVmID0gVjRMMl9NUEVHX1ZJ
REVPX0gyNjRfUFJPRklMRV9NQUlOLAo+Pj4+Pj4+PiArICAgICAgICAgICAgIH0KPj4+Pj4+Pj4g
ICAgICAgfSwgewo+Pj4+Pj4+PiAgICAgICB9LAo+Pj4+Pj4+PiAgfTsKPj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
