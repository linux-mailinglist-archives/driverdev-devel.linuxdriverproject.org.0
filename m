Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E831507B2
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Feb 2020 14:49:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 61ADB82DE1;
	Mon,  3 Feb 2020 13:49:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aSoy2E_Qzs7B; Mon,  3 Feb 2020 13:49:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 852CA80D9D;
	Mon,  3 Feb 2020 13:49:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C9951BF95A
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 13:49:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 50DB0857BF
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 13:49:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7SlE3aP7uQyW for <devel@linuxdriverproject.org>;
 Mon,  3 Feb 2020 13:49:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A1BE6859E3
 for <devel@driverdev.osuosl.org>; Mon,  3 Feb 2020 13:49:05 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id f8so16044655edv.2
 for <devel@driverdev.osuosl.org>; Mon, 03 Feb 2020 05:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gZZ8ko4O/jUPA/decaQ2lD3GEYFrqD//5nnLiZlDpbE=;
 b=lpwEEmpRyeVKSUU/dUAb+BRKkoVZ0LkjrF9vKb50tLhFDu/xYSEMbvb5pLQZmwbFoe
 lompMw0l8jYOQMkjabLTSFkzQ5JH+C6BD8eJPmRAFHOUuZrBaM/OAFpR5vvfDYh6D+2N
 iUGmEUqTvePQL0a2jyDwSx5voHvsuewAC2U10=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gZZ8ko4O/jUPA/decaQ2lD3GEYFrqD//5nnLiZlDpbE=;
 b=W9CjV9qf1/ONp2YVBQTocLhZEkZewStm2oue4t6xlqtrDjg76Ao0A5dC8Z0PSobq65
 F2+zDyWq0/6th5PxheH3cPX1Y3EiZ7pZRFuFeu5CC7jzg2EtKwpIC4Xy4rNUL0V66/XX
 GgXAXpSlc32m1bDUKSrXj2lRMkVVWVn9y4avw9ToQjZsNzg5BEzE0EUIBURm1z5oIkg1
 VfYxcm+oenMDu2cg/F813TG+bkVqECs3tYyJaM/H6vLge1AY6YWq4nw0Pp+9XMrfV5YJ
 2Wt3bpAuUbt63KAFyszpO54KAE/hOi8mtW80/RAEqeNPJyfDgkeTmXJbeqPruYNcxV65
 KOBQ==
X-Gm-Message-State: APjAAAVvv4Btlt4j5br4iPPRCEiVs820odrS7i6cdiUNHQxFg1N6MuHb
 zYZe6+cC31DgZd1P9oTQYKxaDgw5uMXTEw==
X-Google-Smtp-Source: APXvYqx/kmCXPP5OkyugtjXEevXNv66vX29M92ASFo7Cj0pnGRwq8U9Rhb9gtR8Pa+tOtWLMkmuf8A==
X-Received: by 2002:a50:ed18:: with SMTP id j24mr12804782eds.124.1580737743061; 
 Mon, 03 Feb 2020 05:49:03 -0800 (PST)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com.
 [209.85.128.47])
 by smtp.gmail.com with ESMTPSA id oq2sm1056657ejb.17.2020.02.03.05.49.00
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Feb 2020 05:49:01 -0800 (PST)
Received: by mail-wm1-f47.google.com with SMTP id p9so15984683wmc.2
 for <devel@driverdev.osuosl.org>; Mon, 03 Feb 2020 05:49:00 -0800 (PST)
X-Received: by 2002:a05:600c:2215:: with SMTP id
 z21mr29287067wml.55.1580737740170; 
 Mon, 03 Feb 2020 05:49:00 -0800 (PST)
MIME-Version: 1.0
References: <20191122051608.128717-1-hiroh@chromium.org>
 <767528be59275265072896e5c679e97575615fdd.camel@ndufresne.ca>
 <CAAFQd5D3OpAAtX7_0ktz4-aAgWN_G4YBQMR=Vwp7JPopjvRkRA@mail.gmail.com>
 <f5341ed837529bd38d466d4b655e261d64065912.camel@ndufresne.ca>
 <CAAFQd5Cpk8qG+VgE6+aznBmXu11YG0gNQyCRanZghds-TPKvyg@mail.gmail.com>
 <c88b2822-0dd2-8ea3-eb0b-262df5a30830@xs4all.nl>
 <8b10414a1c198a6e3bd5e131a72bd6f68466bea5.camel@ndufresne.ca>
 <CAAFQd5AZ1DTtz2myuO9YSwjMaxPme0BDNaOBo97tSHLbm4XWPg@mail.gmail.com>
 <8a6a371d-17cd-eb32-779c-0669da5a8d5e@xs4all.nl>
In-Reply-To: <8a6a371d-17cd-eb32-779c-0669da5a8d5e@xs4all.nl>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 3 Feb 2020 22:48:47 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CXGqv5W+uZurGEv+iwz4=R7crLwqUAe2d5_gXt1e7XzQ@mail.gmail.com>
Message-ID: <CAAFQd5CXGqv5W+uZurGEv+iwz4=R7crLwqUAe2d5_gXt1e7XzQ@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: Support H264 profile control
To: Hans Verkuil <hverkuil@xs4all.nl>
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
 Nicolas Dufresne <nicolas@ndufresne.ca>, Hirokazu Honda <hiroh@chromium.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBGZWIgMywgMjAyMCBhdCA5OjAwIFBNIEhhbnMgVmVya3VpbCA8aHZlcmt1aWxAeHM0
YWxsLm5sPiB3cm90ZToKPgo+IE9uIDIvMy8yMCAxMjoxMyBQTSwgVG9tYXN6IEZpZ2Egd3JvdGU6
Cj4gPiBPbiBTYXQsIEphbiAxOCwgMjAyMCBhdCAxMDozMSBQTSBOaWNvbGFzIER1ZnJlc25lIDxu
aWNvbGFzQG5kdWZyZXNuZS5jYT4gd3JvdGU6Cj4gPj4KPiA+PiBMZSB2ZW5kcmVkaSAxMCBqYW52
aWVyIDIwMjAgw6AgMTM6MzEgKzAxMDAsIEhhbnMgVmVya3VpbCBhIMOpY3JpdCA6Cj4gPj4+IE9u
IDExLzI5LzE5IDE6MTYgQU0sIFRvbWFzeiBGaWdhIHdyb3RlOgo+ID4+Pj4gT24gU2F0LCBOb3Yg
MjMsIDIwMTkgYXQgMTo1MiBBTSBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzQG5kdWZyZXNuZS5j
YT4KPiA+Pj4+IHdyb3RlOgo+ID4+Pj4+IExlIHNhbWVkaSAyMyBub3ZlbWJyZSAyMDE5IMOgIDAx
OjAwICswOTAwLCBUb21hc3ogRmlnYSBhIMOpY3JpdCA6Cj4gPj4+Pj4+IE9uIFNhdCwgTm92IDIz
LCAyMDE5IGF0IDEyOjA5IEFNIE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNh
Pgo+ID4+Pj4+PiB3cm90ZToKPiA+Pj4+Pj4+IExlIHZlbmRyZWRpIDIyIG5vdmVtYnJlIDIwMTkg
w6AgMTQ6MTYgKzA5MDAsIEhpcm9rYXp1IEhvbmRhIGEgw6ljcml0IDoKPiA+Pj4+Pj4+PiBUaGUg
SGFudHJvIEcxIGRlY29kZXIgc3VwcG9ydHMgSC4yNjQgcHJvZmlsZXMgZnJvbSBCYXNlbGluZSB0
byBIaWdoLAo+ID4+Pj4+Pj4+IHdpdGgKPiA+Pj4+Pj4+PiB0aGUgZXhjZXB0aW9uIG9mIHRoZSBF
eHRlbmRlZCBwcm9maWxlLgo+ID4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4gRXhwb3NlIHRoZSBWNEwyX0NJ
RF9NUEVHX1ZJREVPX0gyNjRfUFJPRklMRSBjb250cm9sLCBzbyB0aGF0IHRoZQo+ID4+Pj4+Pj4+
IGFwcGxpY2F0aW9ucyBjYW4gcXVlcnkgdGhlIGRyaXZlciBmb3IgdGhlIGxpc3Qgb2Ygc3VwcG9y
dGVkCj4gPj4+Pj4+Pj4gcHJvZmlsZXMuCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gVGhhbmtzIGZvciB0
aGlzIHBhdGNoLiBEbyB5b3UgdGhpbmsgd2UgY291bGQgYWxzbyBhZGQgdGhlIExFVkVMCj4gPj4+
Pj4+PiBjb250cm9sCj4gPj4+Pj4+PiBzbyB0aGUgcHJvZmlsZS9sZXZlbCBlbnVtZXJhdGlvbiBi
ZWNvbWVzIGNvbXBsZXRlID8KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBJJ20gdGhpbmtpbmcgaXQgd291
bGQgYmUgbmljZSBpZiB0aGUgdjRsMiBjb21wbGlhbmNlIHRlc3QgbWFrZSBzdXJlCj4gPj4+Pj4+
PiB0aGF0IGNvZGVjcyBkbyBpbXBsZW1lbnQgdGhlc2UgY29udHJvbHMgKGJvdGggc3RhdGVmdWwg
YW5kIHN0YXRlbGVzcyksCj4gPj4+Pj4+PiBpdCdzIGVzc2VudGlhbCBmb3Igc3RhY2sgd2l0aCBz
b2Z0d2FyZSBmYWxsYmFjaywgb3IgbXVsdGlwbGUgY2FwYWJsZQo+ID4+Pj4+Pj4gY29kZWMgaGFy
ZHdhcmUgYnV0IHdpdGggZGlmZmVyZW50IGNhcGFiaWxpdGllcy4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+
Cj4gPj4+Pj4+IExldmVsIGlzIGEgZGlmZmljdWx0IHN0b3J5LCBiZWNhdXNlIGl0IGFsc28gc3Bl
Y2lmaWVzIHRoZSBudW1iZXIgb2YKPiA+Pj4+Pj4gbWFjcm9ibG9ja3MgcGVyIHNlY29uZCwgYnV0
IGZvciBkZWNvZGVycyBsaWtlIHRoaXMgdGhlIG51bWJlciBvZgo+ID4+Pj4+PiBtYWNyb2Jsb2Nr
cyBwZXIgc2Vjb25kIGl0IGNhbiBoYW5kbGUgZGVwZW5kcyBvbiB0aGluZ3MgdGhlIGRyaXZlcgo+
ID4+Pj4+PiBtaWdodCBiZSBub3QgYXdhcmUgb2YgLSBjbG9jayBmcmVxdWVuY2llcywgRERSIHRo
cm91Z2hwdXQsIHN5c3RlbQo+ID4+Pj4+PiBsb2FkLCBldGMuCj4gPj4+Pj4+Cj4gPj4+Pj4+IE15
IHRha2Ugb24gdGhpcyBpcyB0aGF0IHRoZSBkZWNvZGVyIGRyaXZlciBzaG91bGQgYWR2ZXJ0aXNl
IHRoZQo+ID4+Pj4+PiBoaWdoZXN0IHJlc29sdXRpb24gdGhlIGRlY29kZXIgY2FuIGhhbmRsZSBk
dWUgdG8gaGFyZHdhcmUgY29uc3RyYWludHMuCj4gPj4+Pj4+IFBlcmZvcm1hbmNlIHJlbGF0ZWQg
dGhpbmdzIGRlcGVuZCBvbiB0aGUgaW50ZWdyYXRpb24gZGV0YWlscyBhbmQKPiA+Pj4+Pj4gc2hv
dWxkIGJlIG1hbmFnZWQgZWxzZXdoZXJlLiBGb3IgZXhhbXBsZSBBbmRyb2lkIGFuZCBDaHJvbWUg
T1MgbWFuYWdlCj4gPj4+Pj4+IGV4cGVjdGVkIGRlY29kaW5nIHBlcmZvcm1hbmNlIGluIHBlci1i
b2FyZCBjb25maWd1cmF0aW9uIGZpbGVzLgo+ID4+Pj4+Cj4gPj4+Pj4gV2hlbiB5b3UgcmVhZCBk
YXRhc2hlZXQsIHRoZSBIVyBpcyBhbHdheXMgcmF0ZWQgdG8gbWF4aW11bSBsZXZlbCAoYW5kCj4g
Pj4+Pj4gaXQncyBhIHJhbmdlKSB3aXRoIHRoZSBhc3N1bXB0aW9uIG9mIGEgc2luZ2xlIHN0cmVh
bS4gSXQgc2VlbXMgbXVjaAo+ID4+Pj4+IGVhc2llciB0byBleHBvc2UgdGhpcyBhcy1pcywgc3Rh
dGljYWxseSB0aGVuIHRvIHN0YXJ0IGRvaW5nIHNvbWUgbWF0aAo+ID4+Pj4+IHdpdGggZGF0YSB0
aGF0IGlzbid0IGZ1bGx5IGV4cG9zZWQgdG8gdGhlIHVzZXIuIFRoaXMgaXMgYWJvdXQgZmlsdGVy
aW5nCj4gPj4+Pj4gb2YgbXVsdGlwbGUgQ09ERUMgaW5zdGFuY2VzLCBpdCBkb2VzIG5vdCBuZWVk
IHRvIGJlIHJvY2tldCBzY2llbmNlLAo+ID4+Pj4+IHNwZWNpYWxseSB0aGF0IHRoZSBhbW91bnQg
b2YgbWlzc2luZyBkYXRhIGlzIGltcG9ydGFudCAoZS5nLiB1c2FnZSBvZgo+ID4+Pj4+IHRpbGVz
LCBjb21wcmVzc2lvbiwgSVBQIGFsbCBoYXZlIGFuIGltcGFjdCBvbiB0aGUgZmluYWwgcGVyZm9y
bWFuY2UpLgo+ID4+Pj4+IEFsbCB3ZSB3YW50IHRvIGtub3cgaW4gdXNlcnNwYWNlIGlzIGlmIHRo
aXMgSFcgaXMgZXZlbiBwb3NzaWJseSBjYXBhYmxlCj4gPj4+Pj4gb2YgTEVWRUwgWCwgYW5kIGlm
IG5vdCwgd2UnbGwgbG9vayBmb3IgYW5vdGhlciBvbmUuCj4gPj4+Pj4KPiA+Pj4+Cj4gPj4+PiBB
Z3JlZWQsIG9uZSBjb3VsZCBwb3RlbnRpYWxseSBkZWZpbmUgaXQgdGhpcyB3YXksIGJ1dCB3b3Vs
ZCBpdCBiZQo+ID4+Pj4gcmVhbGx5IHVzZWZ1bCBmb3IgdGhlIHVzZXJzcGFjZSBhbmQgdGhlIHVz
ZXJzPyBJIGd1ZXNzIGl0IGNvdWxkIGVuYWJsZQo+ID4+Pj4gc2xpZ2h0bHkgZmFzdGVyIGZhbGxi
YWNrIHRvIHNvZnR3YXJlIGRlY29kaW5nIGluIHRoZSBleHRyZW1lIGNhc2Ugb2YKPiA+Pj4+IHRo
ZSBoYXJkd2FyZSBub3Qgc3VwcG9ydGluZyB0aGUgbGV2ZWwgYXQgYWxsLCBidXQgSSBzdXNwZWN0
IHRoYXQgdGhlCj4gPj4+PiBtYWpvcml0eSBvZiBjYXNlcyB3b3VsZCBiZSB0aGUgaGFyZHdhcmUg
anVzdCBiZWluZyB1bnVzYWJseSBzbG93Lgo+ID4+Pj4KPiA+Pj4+IEFsc28sIGFzIEkgbWVudGlv
bmVkIGJlZm9yZSwgd2UgYWxyZWFkeSByZXR1cm4gdGhlIHJhbmdlIG9mIHN1cHBvcnRlZAo+ID4+
Pj4gcmVzb2x1dGlvbnMsIHdoaWNoIGluIHByYWN0aWNlIHNob3VsZCBtYXAgdG8gdGhlIHBhcnQg
b2YgdGhlIGxldmVsCj4gPj4+PiB0aGF0IG1heSBkZXBlbmQgb24gaGFyZHdhcmUgY2FwYWJpbGl0
aWVzIHJhdGhlciB0aGFuIHBlcmZvcm1hbmNlLCBzbwo+ID4+Pj4gZXhwb3NpbmcgbGV2ZWxzIGFz
IHdlbGwgd291bGQgYWRkIHJlZHVuZGFuY3kgdG8gdGhlIGluZm9ybWF0aW9uCj4gPj4+PiBleHBv
c2VkLgo+ID4+Pgo+ID4+PiBUaGVyZSBpcyBhIGxvdCBvZiBkaXNjdXNzaW9uIGhlcmUsIGJ1dCBp
dCBhbGwgcmV2b2x2ZXMgYXJvdW5kIGEgcG90ZW50aWFsCj4gPj4+IExFVkVMIGNvbnRyb2wuCj4g
Pj4+Cj4gPj4+IFNvIEkgZ2F0aGVyIGV2ZXJ5b25lIGlzIE9LIHdpdGggbWVyZ2luZyB0aGlzIHBh
dGNoPwo+ID4+Cj4gPj4gSSdtIG9rIHdpdGggdGhpcy4gRm9yIG1lLCB0aGUgbGV2ZWwgcmVmbGVj
dHMgdGhlIHJlYWwgdGltZSBwZXJmb3JtYW5jZQo+ID4+IGNhcGFiaWxpdHkgYXMgZGVmaW5lIGlu
IHRoZSBzcGVjLCB3aGlsZSB0aGUgd2lkdGgvaGVpZ2h0IGNvbnN0cmFpbnRzIHVzdWFsbHkKPiA+
PiByZXByZXNlbnQgYW4gYWRkcmVzc2luZyBjYXBhYmljaXR5LCB3aGljaCBtYXkgb3IgbWF5IG5v
dCBvcGVyYXRlIHJlYWwtdGltZS4KPiA+Pgo+ID4KPiA+IEknZCBsaWtlIHRvIHNlZSB0aGUgbGV2
ZWwgY29udHJvbCBkb2N1bWVudGF0aW9uIGltcHJvdmVkIGJlZm9yZSB3ZQo+ID4gc3RhcnQgYWRk
aW5nIGl0IHRvIHRoZSBkcml2ZXJzLiBJJ2xsIGJlIG9rYXkgd2l0aCB0aGF0IHRoZW4gYXMgbG9u
ZyBhcwo+ID4gdGhlIHZhbHVlcyBhcmUgZXhwb3NlZCBpbiBhIGNvbnNpc3RlbnQgYW5kIHdlbGwg
ZGVmaW5lZCB3YXkuIDopCj4gPgo+ID4gQXMgZm9yIHRoaXMgcGF0Y2gsIEhhbnMsIGFyZSB5b3Ug
Z29pbmcgdG8gYXBwbHkgaXQ/Cj4KPiBJdCdzIGluIGEgUFIgZm9yIDUuNy4gSSBoYWQgaG9wZWQg
aXQgd291bGQgZ28gaW4gZm9yIHY1LjYsIGJ1dCBpdCB3YXMKPiB0b28gbGF0ZSBmb3IgdGhhdC4K
Ck9rYXksIHRoYW5rcyEKCj4KPiBSZWdhcmRzLAo+Cj4gICAgICAgICBIYW5zCj4KPiA+Cj4gPiBC
ZXN0IHJlZ2FyZHMsCj4gPiBUb21hc3oKPiA+Cj4gPj4+Cj4gPj4+IElmIG5vdCwgbGV0IG1lIGtu
b3cgYXNhcC4KPiA+Pj4KPiA+Pj4gUmVnYXJkcywKPiA+Pj4KPiA+Pj4gICAgICAgSGFucwo+ID4+
Pgo+ID4+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEhpcm9rYXp1IEhvbmRhIDxoaXJvaEBjaHJvbWl1
bS5vcmc+Cj4gPj4+Pj4+Pj4gLS0tCj4gPj4+Pj4+Pj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9o
YW50cm8vaGFudHJvX2Rydi5jIHwgMTAgKysrKysrKysrKwo+ID4+Pj4+Pj4+ICAxIGZpbGUgY2hh
bmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+ID4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gPj4+Pj4+Pj4gYi9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ID4+Pj4+Pj4+IGluZGV4
IDZkOWQ0MTE3MDgzMi4uOTM4NzYxOTIzNWQ4IDEwMDY0NAo+ID4+Pj4+Pj4+IC0tLSBhL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gPj4+Pj4+Pj4gKysrIGIvZHJp
dmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiA+Pj4+Pj4+PiBAQCAtMzU1
LDYgKzM1NSwxNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19jdHJsIGNvbnRyb2xzW10g
PSB7Cj4gPj4+Pj4+Pj4gICAgICAgICAgICAgICAgICAgICAgIC5kZWYgPQo+ID4+Pj4+Pj4+IFY0
TDJfTVBFR19WSURFT19IMjY0X1NUQVJUX0NPREVfQU5ORVhfQiwKPiA+Pj4+Pj4+PiAgICAgICAg
ICAgICAgICAgICAgICAgLm1heCA9Cj4gPj4+Pj4+Pj4gVjRMMl9NUEVHX1ZJREVPX0gyNjRfU1RB
UlRfQ09ERV9BTk5FWF9CLAo+ID4+Pj4+Pj4+ICAgICAgICAgICAgICAgfSwKPiA+Pj4+Pj4+PiAr
ICAgICB9LCB7Cj4gPj4+Pj4+Pj4gKyAgICAgICAgICAgICAuY29kZWMgPSBIQU5UUk9fSDI2NF9E
RUNPREVSLAo+ID4+Pj4+Pj4+ICsgICAgICAgICAgICAgLmNmZyA9IHsKPiA+Pj4+Pj4+PiArICAg
ICAgICAgICAgICAgICAgICAgLmlkID0gVjRMMl9DSURfTVBFR19WSURFT19IMjY0X1BST0ZJTEUs
Cj4gPj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIC5taW4gPSBWNEwyX01QRUdfVklERU9f
SDI2NF9QUk9GSUxFX0JBU0VMSU5FLAo+ID4+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAu
bWF4ID0gVjRMMl9NUEVHX1ZJREVPX0gyNjRfUFJPRklMRV9ISUdILAo+ID4+Pj4+Pj4+ICsgICAg
ICAgICAgICAgICAgICAgICAubWVudV9za2lwX21hc2sgPQo+ID4+Pj4+Pj4+ICsgICAgICAgICAg
ICAgICAgICAgICBCSVQoVjRMMl9NUEVHX1ZJREVPX0gyNjRfUFJPRklMRV9FWFRFTkRFRCksCj4g
Pj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIC5kZWYgPSBWNEwyX01QRUdfVklERU9fSDI2
NF9QUk9GSUxFX01BSU4sCj4gPj4+Pj4+Pj4gKyAgICAgICAgICAgICB9Cj4gPj4+Pj4+Pj4gICAg
ICAgfSwgewo+ID4+Pj4+Pj4+ICAgICAgIH0sCj4gPj4+Pj4+Pj4gIH07Cj4gPj4KPgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
