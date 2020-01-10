Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF679136D17
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jan 2020 13:31:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C799F87605;
	Fri, 10 Jan 2020 12:31:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Y3KPl1iYXJa; Fri, 10 Jan 2020 12:31:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D5C1875E0;
	Fri, 10 Jan 2020 12:31:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 70A2A1BF2EF
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 12:31:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6CDD38758B
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 12:31:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2u8uqXXi9CKG for <devel@linuxdriverproject.org>;
 Fri, 10 Jan 2020 12:31:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud8.xs4all.net (lb3-smtp-cloud8.xs4all.net
 [194.109.24.29])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 243248757D
 for <devel@driverdev.osuosl.org>; Fri, 10 Jan 2020 12:31:14 +0000 (UTC)
Received: from [IPv6:2001:420:44c1:2577:c967:e1d3:183a:b8ef]
 ([IPv6:2001:420:44c1:2577:c967:e1d3:183a:b8ef])
 by smtp-cloud8.xs4all.net with ESMTPA
 id ptRUimnGnpLtbptRXiQX2R; Fri, 10 Jan 2020 13:31:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1578659472; bh=Q4tGujyc0qMIli9sFFN1Y2SjsV4ntbfAJ95PuThwHNo=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=wVy1VAbUe9iHSsSMlQRYcvuUGVHHOkYaXBCi0ulHQzsBqeDXnTlWE3dPY3Cd9N1T5
 ym08+Bx6xkVDafW0WyHGEryJhllacfjUsyH2wbDdc4aYGfP52TKIG5qS//HO3YTP7A
 6x2hJWc0vaXoRvlK3yxgd201kjp7KNhTnyxZ51jj55d0rRQT8Mg87BhZ+4OwOu36vR
 uYm8fLnZJEVjmizDcRvj0FL9KLrJxugUppzrEZk6/hTBZPiELHW7Hx0oEA/Agi15xX
 ongBXCUp69XYdiBOzglUD+FCZy02wl/UhCkWbnhLBTI5Yq99nq/pteqEEZSv7WI9Gu
 XFHhMzM3GOvDg==
Subject: Re: [PATCH] media: hantro: Support H264 profile control
To: Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas@ndufresne.ca>
References: <20191122051608.128717-1-hiroh@chromium.org>
 <767528be59275265072896e5c679e97575615fdd.camel@ndufresne.ca>
 <CAAFQd5D3OpAAtX7_0ktz4-aAgWN_G4YBQMR=Vwp7JPopjvRkRA@mail.gmail.com>
 <f5341ed837529bd38d466d4b655e261d64065912.camel@ndufresne.ca>
 <CAAFQd5Cpk8qG+VgE6+aznBmXu11YG0gNQyCRanZghds-TPKvyg@mail.gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <c88b2822-0dd2-8ea3-eb0b-262df5a30830@xs4all.nl>
Date: Fri, 10 Jan 2020 13:31:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAAFQd5Cpk8qG+VgE6+aznBmXu11YG0gNQyCRanZghds-TPKvyg@mail.gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfCFM+zo00wI7D/Z3xha1mTiaLvB2X7xakAJsEjudm/mMCDqgPaS0ALMhUjD7FGbvE9gaHbDCUeW6n1mMAlU7QRFfJKjoy/BBOSUPUQFvcX/o45cNq4c6
 5eZpmXxjvHYyiGX9RlfZvSEvEfdVejRHqa8EPYDEpLHNZxIrFZdBP3+M8/B2npPNo2Jt1GKe4CiPY6HdBF4Zd5tKqTjkcWTCB+Mxo45kl1Lgr/yHvk5OXcas
 zoKjDuUji2iCldwA4CtG5rwyJROW8e9Ow+nP4xAZKA1smJnTD3I/HL4APkxK4ZAe91FOwEfm7Aft6utF2gb40RLhIxZe4c+egotdX28vGAjX+zy8cOj5TPvW
 +F31IZeiVZzkbHd6PZ/fwkHt3Q01X919mz3KU9GjzXjLQGHLwSdpmI/+h/CjDNDZHfsq5lO2+dXYP61cEroyLFU5pDOudC66+OuldyAgD10cCKoig7L6P8VZ
 wvHGZLe4PZGqBMqu404KcZzZiv80OtiP8smSOkHJQp6pubqkkve9gU1cPactlH2ZTufUXax+8bQWNoNO61wqk8N06yA7vkxzkkABaA==
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

T24gMTEvMjkvMTkgMToxNiBBTSwgVG9tYXN6IEZpZ2Egd3JvdGU6Cj4gT24gU2F0LCBOb3YgMjMs
IDIwMTkgYXQgMTo1MiBBTSBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzQG5kdWZyZXNuZS5jYT4g
d3JvdGU6Cj4+Cj4+IExlIHNhbWVkaSAyMyBub3ZlbWJyZSAyMDE5IMOgIDAxOjAwICswOTAwLCBU
b21hc3ogRmlnYSBhIMOpY3JpdCA6Cj4+PiBPbiBTYXQsIE5vdiAyMywgMjAxOSBhdCAxMjowOSBB
TSBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzQG5kdWZyZXNuZS5jYT4gd3JvdGU6Cj4+Pj4gTGUg
dmVuZHJlZGkgMjIgbm92ZW1icmUgMjAxOSDDoCAxNDoxNiArMDkwMCwgSGlyb2thenUgSG9uZGEg
YSDDqWNyaXQgOgo+Pj4+PiBUaGUgSGFudHJvIEcxIGRlY29kZXIgc3VwcG9ydHMgSC4yNjQgcHJv
ZmlsZXMgZnJvbSBCYXNlbGluZSB0byBIaWdoLCB3aXRoCj4+Pj4+IHRoZSBleGNlcHRpb24gb2Yg
dGhlIEV4dGVuZGVkIHByb2ZpbGUuCj4+Pj4+Cj4+Pj4+IEV4cG9zZSB0aGUgVjRMMl9DSURfTVBF
R19WSURFT19IMjY0X1BST0ZJTEUgY29udHJvbCwgc28gdGhhdCB0aGUKPj4+Pj4gYXBwbGljYXRp
b25zIGNhbiBxdWVyeSB0aGUgZHJpdmVyIGZvciB0aGUgbGlzdCBvZiBzdXBwb3J0ZWQgcHJvZmls
ZXMuCj4+Pj4KPj4+PiBUaGFua3MgZm9yIHRoaXMgcGF0Y2guIERvIHlvdSB0aGluayB3ZSBjb3Vs
ZCBhbHNvIGFkZCB0aGUgTEVWRUwgY29udHJvbAo+Pj4+IHNvIHRoZSBwcm9maWxlL2xldmVsIGVu
dW1lcmF0aW9uIGJlY29tZXMgY29tcGxldGUgPwo+Pj4+Cj4+Pj4gSSdtIHRoaW5raW5nIGl0IHdv
dWxkIGJlIG5pY2UgaWYgdGhlIHY0bDIgY29tcGxpYW5jZSB0ZXN0IG1ha2Ugc3VyZQo+Pj4+IHRo
YXQgY29kZWNzIGRvIGltcGxlbWVudCB0aGVzZSBjb250cm9scyAoYm90aCBzdGF0ZWZ1bCBhbmQg
c3RhdGVsZXNzKSwKPj4+PiBpdCdzIGVzc2VudGlhbCBmb3Igc3RhY2sgd2l0aCBzb2Z0d2FyZSBm
YWxsYmFjaywgb3IgbXVsdGlwbGUgY2FwYWJsZQo+Pj4+IGNvZGVjIGhhcmR3YXJlIGJ1dCB3aXRo
IGRpZmZlcmVudCBjYXBhYmlsaXRpZXMuCj4+Pj4KPj4+Cj4+PiBMZXZlbCBpcyBhIGRpZmZpY3Vs
dCBzdG9yeSwgYmVjYXVzZSBpdCBhbHNvIHNwZWNpZmllcyB0aGUgbnVtYmVyIG9mCj4+PiBtYWNy
b2Jsb2NrcyBwZXIgc2Vjb25kLCBidXQgZm9yIGRlY29kZXJzIGxpa2UgdGhpcyB0aGUgbnVtYmVy
IG9mCj4+PiBtYWNyb2Jsb2NrcyBwZXIgc2Vjb25kIGl0IGNhbiBoYW5kbGUgZGVwZW5kcyBvbiB0
aGluZ3MgdGhlIGRyaXZlcgo+Pj4gbWlnaHQgYmUgbm90IGF3YXJlIG9mIC0gY2xvY2sgZnJlcXVl
bmNpZXMsIEREUiB0aHJvdWdocHV0LCBzeXN0ZW0KPj4+IGxvYWQsIGV0Yy4KPj4+Cj4+PiBNeSB0
YWtlIG9uIHRoaXMgaXMgdGhhdCB0aGUgZGVjb2RlciBkcml2ZXIgc2hvdWxkIGFkdmVydGlzZSB0
aGUKPj4+IGhpZ2hlc3QgcmVzb2x1dGlvbiB0aGUgZGVjb2RlciBjYW4gaGFuZGxlIGR1ZSB0byBo
YXJkd2FyZSBjb25zdHJhaW50cy4KPj4+IFBlcmZvcm1hbmNlIHJlbGF0ZWQgdGhpbmdzIGRlcGVu
ZCBvbiB0aGUgaW50ZWdyYXRpb24gZGV0YWlscyBhbmQKPj4+IHNob3VsZCBiZSBtYW5hZ2VkIGVs
c2V3aGVyZS4gRm9yIGV4YW1wbGUgQW5kcm9pZCBhbmQgQ2hyb21lIE9TIG1hbmFnZQo+Pj4gZXhw
ZWN0ZWQgZGVjb2RpbmcgcGVyZm9ybWFuY2UgaW4gcGVyLWJvYXJkIGNvbmZpZ3VyYXRpb24gZmls
ZXMuCj4+Cj4+IFdoZW4geW91IHJlYWQgZGF0YXNoZWV0LCB0aGUgSFcgaXMgYWx3YXlzIHJhdGVk
IHRvIG1heGltdW0gbGV2ZWwgKGFuZAo+PiBpdCdzIGEgcmFuZ2UpIHdpdGggdGhlIGFzc3VtcHRp
b24gb2YgYSBzaW5nbGUgc3RyZWFtLiBJdCBzZWVtcyBtdWNoCj4+IGVhc2llciB0byBleHBvc2Ug
dGhpcyBhcy1pcywgc3RhdGljYWxseSB0aGVuIHRvIHN0YXJ0IGRvaW5nIHNvbWUgbWF0aAo+PiB3
aXRoIGRhdGEgdGhhdCBpc24ndCBmdWxseSBleHBvc2VkIHRvIHRoZSB1c2VyLiBUaGlzIGlzIGFi
b3V0IGZpbHRlcmluZwo+PiBvZiBtdWx0aXBsZSBDT0RFQyBpbnN0YW5jZXMsIGl0IGRvZXMgbm90
IG5lZWQgdG8gYmUgcm9ja2V0IHNjaWVuY2UsCj4+IHNwZWNpYWxseSB0aGF0IHRoZSBhbW91bnQg
b2YgbWlzc2luZyBkYXRhIGlzIGltcG9ydGFudCAoZS5nLiB1c2FnZSBvZgo+PiB0aWxlcywgY29t
cHJlc3Npb24sIElQUCBhbGwgaGF2ZSBhbiBpbXBhY3Qgb24gdGhlIGZpbmFsIHBlcmZvcm1hbmNl
KS4KPj4gQWxsIHdlIHdhbnQgdG8ga25vdyBpbiB1c2Vyc3BhY2UgaXMgaWYgdGhpcyBIVyBpcyBl
dmVuIHBvc3NpYmx5IGNhcGFibGUKPj4gb2YgTEVWRUwgWCwgYW5kIGlmIG5vdCwgd2UnbGwgbG9v
ayBmb3IgYW5vdGhlciBvbmUuCj4+Cj4gCj4gQWdyZWVkLCBvbmUgY291bGQgcG90ZW50aWFsbHkg
ZGVmaW5lIGl0IHRoaXMgd2F5LCBidXQgd291bGQgaXQgYmUKPiByZWFsbHkgdXNlZnVsIGZvciB0
aGUgdXNlcnNwYWNlIGFuZCB0aGUgdXNlcnM/IEkgZ3Vlc3MgaXQgY291bGQgZW5hYmxlCj4gc2xp
Z2h0bHkgZmFzdGVyIGZhbGxiYWNrIHRvIHNvZnR3YXJlIGRlY29kaW5nIGluIHRoZSBleHRyZW1l
IGNhc2Ugb2YKPiB0aGUgaGFyZHdhcmUgbm90IHN1cHBvcnRpbmcgdGhlIGxldmVsIGF0IGFsbCwg
YnV0IEkgc3VzcGVjdCB0aGF0IHRoZQo+IG1ham9yaXR5IG9mIGNhc2VzIHdvdWxkIGJlIHRoZSBo
YXJkd2FyZSBqdXN0IGJlaW5nIHVudXNhYmx5IHNsb3cuCj4gCj4gQWxzbywgYXMgSSBtZW50aW9u
ZWQgYmVmb3JlLCB3ZSBhbHJlYWR5IHJldHVybiB0aGUgcmFuZ2Ugb2Ygc3VwcG9ydGVkCj4gcmVz
b2x1dGlvbnMsIHdoaWNoIGluIHByYWN0aWNlIHNob3VsZCBtYXAgdG8gdGhlIHBhcnQgb2YgdGhl
IGxldmVsCj4gdGhhdCBtYXkgZGVwZW5kIG9uIGhhcmR3YXJlIGNhcGFiaWxpdGllcyByYXRoZXIg
dGhhbiBwZXJmb3JtYW5jZSwgc28KPiBleHBvc2luZyBsZXZlbHMgYXMgd2VsbCB3b3VsZCBhZGQg
cmVkdW5kYW5jeSB0byB0aGUgaW5mb3JtYXRpb24KPiBleHBvc2VkLgoKVGhlcmUgaXMgYSBsb3Qg
b2YgZGlzY3Vzc2lvbiBoZXJlLCBidXQgaXQgYWxsIHJldm9sdmVzIGFyb3VuZCBhIHBvdGVudGlh
bApMRVZFTCBjb250cm9sLgoKU28gSSBnYXRoZXIgZXZlcnlvbmUgaXMgT0sgd2l0aCBtZXJnaW5n
IHRoaXMgcGF0Y2g/CgpJZiBub3QsIGxldCBtZSBrbm93IGFzYXAuCgpSZWdhcmRzLAoKCUhhbnMK
Cj4gCj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBIaXJva2F6dSBIb25kYSA8aGlyb2hAY2hyb21p
dW0ub3JnPgo+Pj4+PiAtLS0KPj4+Pj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFu
dHJvX2Rydi5jIHwgMTAgKysrKysrKysrKwo+Pj4+PiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2Vy
dGlvbnMoKykKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9o
YW50cm8vaGFudHJvX2Rydi5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9f
ZHJ2LmMKPj4+Pj4gaW5kZXggNmQ5ZDQxMTcwODMyLi45Mzg3NjE5MjM1ZDggMTAwNjQ0Cj4+Pj4+
IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4+Pj4+ICsr
KyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4+Pj4+IEBAIC0z
NTUsNiArMzU1LDE2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaGFudHJvX2N0cmwgY29udHJvbHNb
XSA9IHsKPj4+Pj4gICAgICAgICAgICAgICAgICAgICAgIC5kZWYgPSBWNEwyX01QRUdfVklERU9f
SDI2NF9TVEFSVF9DT0RFX0FOTkVYX0IsCj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAubWF4
ID0gVjRMMl9NUEVHX1ZJREVPX0gyNjRfU1RBUlRfQ09ERV9BTk5FWF9CLAo+Pj4+PiAgICAgICAg
ICAgICAgIH0sCj4+Pj4+ICsgICAgIH0sIHsKPj4+Pj4gKyAgICAgICAgICAgICAuY29kZWMgPSBI
QU5UUk9fSDI2NF9ERUNPREVSLAo+Pj4+PiArICAgICAgICAgICAgIC5jZmcgPSB7Cj4+Pj4+ICsg
ICAgICAgICAgICAgICAgICAgICAuaWQgPSBWNEwyX0NJRF9NUEVHX1ZJREVPX0gyNjRfUFJPRklM
RSwKPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIC5taW4gPSBWNEwyX01QRUdfVklERU9fSDI2
NF9QUk9GSUxFX0JBU0VMSU5FLAo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgLm1heCA9IFY0
TDJfTVBFR19WSURFT19IMjY0X1BST0ZJTEVfSElHSCwKPj4+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgIC5tZW51X3NraXBfbWFzayA9Cj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICBCSVQoVjRM
Ml9NUEVHX1ZJREVPX0gyNjRfUFJPRklMRV9FWFRFTkRFRCksCj4+Pj4+ICsgICAgICAgICAgICAg
ICAgICAgICAuZGVmID0gVjRMMl9NUEVHX1ZJREVPX0gyNjRfUFJPRklMRV9NQUlOLAo+Pj4+PiAr
ICAgICAgICAgICAgIH0KPj4+Pj4gICAgICAgfSwgewo+Pj4+PiAgICAgICB9LAo+Pj4+PiAgfTsK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
