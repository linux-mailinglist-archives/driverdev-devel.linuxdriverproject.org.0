Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE801504F4
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Feb 2020 12:14:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 09B4A8401C;
	Mon,  3 Feb 2020 11:14:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y+awdnUJeR17; Mon,  3 Feb 2020 11:14:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 310E381FEE;
	Mon,  3 Feb 2020 11:14:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F8481BF400
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 11:14:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4F07D85A2E
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 11:14:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 59dwpAEwpMQ1 for <devel@linuxdriverproject.org>;
 Mon,  3 Feb 2020 11:14:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 731DC8587D
 for <devel@driverdev.osuosl.org>; Mon,  3 Feb 2020 11:14:05 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id m8so15486342edi.13
 for <devel@driverdev.osuosl.org>; Mon, 03 Feb 2020 03:14:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+yNuFpCLdENCrOu/6taXbpfMWjpnDOjCp0lZEI0arXY=;
 b=c27VhUEbZIHiatO2u6kTPbn7uHk+J7oRFhVv+JnEG72EmFdvLo26GFcwMGdFQH3k5g
 vft0Z3R293XgeV8XluJlhxXIr/aJgqBvCZpB+iiiwc06yUExjRRVAzkOBqBGIdYTpafW
 WfBk0LNZPyEPCGuXg5ju1klO4hnhfHCGO9vd4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+yNuFpCLdENCrOu/6taXbpfMWjpnDOjCp0lZEI0arXY=;
 b=eb7QQSHa/73OjBPjFN3jST6eLeY3S5q5cJVooQQmfzDEBxP3uXcj1eKbqMhtdC92on
 rMgiS69b/yma9PuyBtSTnxbFo2SS3aIy9DSbLgXR/A/ygiVY2DT3egdgsqKN4KsBJSVz
 vCVs/xzT7fJSH7Rfcp4O4vruSOPZxnrcB5q0yIohV/3pULt7C38vGg6JMj/maJgcuJ35
 LQR6eSX4Dofz9wZXC+IFv3Qu5WmA/95D6FBweu6qrtHiU58Nzv/lu/x7JzUC9ui3QjQo
 TszsTIpyqZKNtII3YZmrMrpcRRenpDE6ZbwohGV2uOGdxDYFib1pmGO8+zN4Y1FiI6h8
 9pjQ==
X-Gm-Message-State: APjAAAV20GHRg1KNIxCoGwIbG+jfPl5FomNX9nyum9Vz5Wi96nGfq4fu
 at/3uciGoyGyXiOU+cwG/Ml4nGTT+cMHtQ==
X-Google-Smtp-Source: APXvYqzFG/iSI+ZZW5Y+7sYzQMzYaJUNWqbKfVUay28KPq7QggF2ergvVCtS+3y2w+Ha9NcP9nLU4A==
X-Received: by 2002:a17:906:f241:: with SMTP id
 gy1mr21427583ejb.340.1580728443408; 
 Mon, 03 Feb 2020 03:14:03 -0800 (PST)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com.
 [209.85.221.48])
 by smtp.gmail.com with ESMTPSA id k11sm1020169ejq.24.2020.02.03.03.14.01
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Feb 2020 03:14:02 -0800 (PST)
Received: by mail-wr1-f48.google.com with SMTP id c9so17473543wrw.8
 for <devel@driverdev.osuosl.org>; Mon, 03 Feb 2020 03:14:01 -0800 (PST)
X-Received: by 2002:adf:f58a:: with SMTP id f10mr15866458wro.105.1580728441001; 
 Mon, 03 Feb 2020 03:14:01 -0800 (PST)
MIME-Version: 1.0
References: <20191122051608.128717-1-hiroh@chromium.org>
 <767528be59275265072896e5c679e97575615fdd.camel@ndufresne.ca>
 <CAAFQd5D3OpAAtX7_0ktz4-aAgWN_G4YBQMR=Vwp7JPopjvRkRA@mail.gmail.com>
 <f5341ed837529bd38d466d4b655e261d64065912.camel@ndufresne.ca>
 <CAAFQd5Cpk8qG+VgE6+aznBmXu11YG0gNQyCRanZghds-TPKvyg@mail.gmail.com>
 <c88b2822-0dd2-8ea3-eb0b-262df5a30830@xs4all.nl>
 <8b10414a1c198a6e3bd5e131a72bd6f68466bea5.camel@ndufresne.ca>
In-Reply-To: <8b10414a1c198a6e3bd5e131a72bd6f68466bea5.camel@ndufresne.ca>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 3 Feb 2020 20:13:48 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AZ1DTtz2myuO9YSwjMaxPme0BDNaOBo97tSHLbm4XWPg@mail.gmail.com>
Message-ID: <CAAFQd5AZ1DTtz2myuO9YSwjMaxPme0BDNaOBo97tSHLbm4XWPg@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: Support H264 profile control
To: Nicolas Dufresne <nicolas@ndufresne.ca>
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
 Hans Verkuil <hverkuil@xs4all.nl>, Hirokazu Honda <hiroh@chromium.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCBKYW4gMTgsIDIwMjAgYXQgMTA6MzEgUE0gTmljb2xhcyBEdWZyZXNuZSA8bmljb2xh
c0BuZHVmcmVzbmUuY2E+IHdyb3RlOgo+Cj4gTGUgdmVuZHJlZGkgMTAgamFudmllciAyMDIwIMOg
IDEzOjMxICswMTAwLCBIYW5zIFZlcmt1aWwgYSDDqWNyaXQgOgo+ID4gT24gMTEvMjkvMTkgMTox
NiBBTSwgVG9tYXN6IEZpZ2Egd3JvdGU6Cj4gPiA+IE9uIFNhdCwgTm92IDIzLCAyMDE5IGF0IDE6
NTIgQU0gTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhc0BuZHVmcmVzbmUuY2E+Cj4gPiA+IHdyb3Rl
Ogo+ID4gPiA+IExlIHNhbWVkaSAyMyBub3ZlbWJyZSAyMDE5IMOgIDAxOjAwICswOTAwLCBUb21h
c3ogRmlnYSBhIMOpY3JpdCA6Cj4gPiA+ID4gPiBPbiBTYXQsIE5vdiAyMywgMjAxOSBhdCAxMjow
OSBBTSBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzQG5kdWZyZXNuZS5jYT4KPiA+ID4gPiA+IHdy
b3RlOgo+ID4gPiA+ID4gPiBMZSB2ZW5kcmVkaSAyMiBub3ZlbWJyZSAyMDE5IMOgIDE0OjE2ICsw
OTAwLCBIaXJva2F6dSBIb25kYSBhIMOpY3JpdCA6Cj4gPiA+ID4gPiA+ID4gVGhlIEhhbnRybyBH
MSBkZWNvZGVyIHN1cHBvcnRzIEguMjY0IHByb2ZpbGVzIGZyb20gQmFzZWxpbmUgdG8gSGlnaCwK
PiA+ID4gPiA+ID4gPiB3aXRoCj4gPiA+ID4gPiA+ID4gdGhlIGV4Y2VwdGlvbiBvZiB0aGUgRXh0
ZW5kZWQgcHJvZmlsZS4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IEV4cG9zZSB0aGUgVjRM
Ml9DSURfTVBFR19WSURFT19IMjY0X1BST0ZJTEUgY29udHJvbCwgc28gdGhhdCB0aGUKPiA+ID4g
PiA+ID4gPiBhcHBsaWNhdGlvbnMgY2FuIHF1ZXJ5IHRoZSBkcml2ZXIgZm9yIHRoZSBsaXN0IG9m
IHN1cHBvcnRlZAo+ID4gPiA+ID4gPiA+IHByb2ZpbGVzLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4g
PiBUaGFua3MgZm9yIHRoaXMgcGF0Y2guIERvIHlvdSB0aGluayB3ZSBjb3VsZCBhbHNvIGFkZCB0
aGUgTEVWRUwKPiA+ID4gPiA+ID4gY29udHJvbAo+ID4gPiA+ID4gPiBzbyB0aGUgcHJvZmlsZS9s
ZXZlbCBlbnVtZXJhdGlvbiBiZWNvbWVzIGNvbXBsZXRlID8KPiA+ID4gPiA+ID4KPiA+ID4gPiA+
ID4gSSdtIHRoaW5raW5nIGl0IHdvdWxkIGJlIG5pY2UgaWYgdGhlIHY0bDIgY29tcGxpYW5jZSB0
ZXN0IG1ha2Ugc3VyZQo+ID4gPiA+ID4gPiB0aGF0IGNvZGVjcyBkbyBpbXBsZW1lbnQgdGhlc2Ug
Y29udHJvbHMgKGJvdGggc3RhdGVmdWwgYW5kIHN0YXRlbGVzcyksCj4gPiA+ID4gPiA+IGl0J3Mg
ZXNzZW50aWFsIGZvciBzdGFjayB3aXRoIHNvZnR3YXJlIGZhbGxiYWNrLCBvciBtdWx0aXBsZSBj
YXBhYmxlCj4gPiA+ID4gPiA+IGNvZGVjIGhhcmR3YXJlIGJ1dCB3aXRoIGRpZmZlcmVudCBjYXBh
YmlsaXRpZXMuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gTGV2ZWwgaXMgYSBkaWZm
aWN1bHQgc3RvcnksIGJlY2F1c2UgaXQgYWxzbyBzcGVjaWZpZXMgdGhlIG51bWJlciBvZgo+ID4g
PiA+ID4gbWFjcm9ibG9ja3MgcGVyIHNlY29uZCwgYnV0IGZvciBkZWNvZGVycyBsaWtlIHRoaXMg
dGhlIG51bWJlciBvZgo+ID4gPiA+ID4gbWFjcm9ibG9ja3MgcGVyIHNlY29uZCBpdCBjYW4gaGFu
ZGxlIGRlcGVuZHMgb24gdGhpbmdzIHRoZSBkcml2ZXIKPiA+ID4gPiA+IG1pZ2h0IGJlIG5vdCBh
d2FyZSBvZiAtIGNsb2NrIGZyZXF1ZW5jaWVzLCBERFIgdGhyb3VnaHB1dCwgc3lzdGVtCj4gPiA+
ID4gPiBsb2FkLCBldGMuCj4gPiA+ID4gPgo+ID4gPiA+ID4gTXkgdGFrZSBvbiB0aGlzIGlzIHRo
YXQgdGhlIGRlY29kZXIgZHJpdmVyIHNob3VsZCBhZHZlcnRpc2UgdGhlCj4gPiA+ID4gPiBoaWdo
ZXN0IHJlc29sdXRpb24gdGhlIGRlY29kZXIgY2FuIGhhbmRsZSBkdWUgdG8gaGFyZHdhcmUgY29u
c3RyYWludHMuCj4gPiA+ID4gPiBQZXJmb3JtYW5jZSByZWxhdGVkIHRoaW5ncyBkZXBlbmQgb24g
dGhlIGludGVncmF0aW9uIGRldGFpbHMgYW5kCj4gPiA+ID4gPiBzaG91bGQgYmUgbWFuYWdlZCBl
bHNld2hlcmUuIEZvciBleGFtcGxlIEFuZHJvaWQgYW5kIENocm9tZSBPUyBtYW5hZ2UKPiA+ID4g
PiA+IGV4cGVjdGVkIGRlY29kaW5nIHBlcmZvcm1hbmNlIGluIHBlci1ib2FyZCBjb25maWd1cmF0
aW9uIGZpbGVzLgo+ID4gPiA+Cj4gPiA+ID4gV2hlbiB5b3UgcmVhZCBkYXRhc2hlZXQsIHRoZSBI
VyBpcyBhbHdheXMgcmF0ZWQgdG8gbWF4aW11bSBsZXZlbCAoYW5kCj4gPiA+ID4gaXQncyBhIHJh
bmdlKSB3aXRoIHRoZSBhc3N1bXB0aW9uIG9mIGEgc2luZ2xlIHN0cmVhbS4gSXQgc2VlbXMgbXVj
aAo+ID4gPiA+IGVhc2llciB0byBleHBvc2UgdGhpcyBhcy1pcywgc3RhdGljYWxseSB0aGVuIHRv
IHN0YXJ0IGRvaW5nIHNvbWUgbWF0aAo+ID4gPiA+IHdpdGggZGF0YSB0aGF0IGlzbid0IGZ1bGx5
IGV4cG9zZWQgdG8gdGhlIHVzZXIuIFRoaXMgaXMgYWJvdXQgZmlsdGVyaW5nCj4gPiA+ID4gb2Yg
bXVsdGlwbGUgQ09ERUMgaW5zdGFuY2VzLCBpdCBkb2VzIG5vdCBuZWVkIHRvIGJlIHJvY2tldCBz
Y2llbmNlLAo+ID4gPiA+IHNwZWNpYWxseSB0aGF0IHRoZSBhbW91bnQgb2YgbWlzc2luZyBkYXRh
IGlzIGltcG9ydGFudCAoZS5nLiB1c2FnZSBvZgo+ID4gPiA+IHRpbGVzLCBjb21wcmVzc2lvbiwg
SVBQIGFsbCBoYXZlIGFuIGltcGFjdCBvbiB0aGUgZmluYWwgcGVyZm9ybWFuY2UpLgo+ID4gPiA+
IEFsbCB3ZSB3YW50IHRvIGtub3cgaW4gdXNlcnNwYWNlIGlzIGlmIHRoaXMgSFcgaXMgZXZlbiBw
b3NzaWJseSBjYXBhYmxlCj4gPiA+ID4gb2YgTEVWRUwgWCwgYW5kIGlmIG5vdCwgd2UnbGwgbG9v
ayBmb3IgYW5vdGhlciBvbmUuCj4gPiA+ID4KPiA+ID4KPiA+ID4gQWdyZWVkLCBvbmUgY291bGQg
cG90ZW50aWFsbHkgZGVmaW5lIGl0IHRoaXMgd2F5LCBidXQgd291bGQgaXQgYmUKPiA+ID4gcmVh
bGx5IHVzZWZ1bCBmb3IgdGhlIHVzZXJzcGFjZSBhbmQgdGhlIHVzZXJzPyBJIGd1ZXNzIGl0IGNv
dWxkIGVuYWJsZQo+ID4gPiBzbGlnaHRseSBmYXN0ZXIgZmFsbGJhY2sgdG8gc29mdHdhcmUgZGVj
b2RpbmcgaW4gdGhlIGV4dHJlbWUgY2FzZSBvZgo+ID4gPiB0aGUgaGFyZHdhcmUgbm90IHN1cHBv
cnRpbmcgdGhlIGxldmVsIGF0IGFsbCwgYnV0IEkgc3VzcGVjdCB0aGF0IHRoZQo+ID4gPiBtYWpv
cml0eSBvZiBjYXNlcyB3b3VsZCBiZSB0aGUgaGFyZHdhcmUganVzdCBiZWluZyB1bnVzYWJseSBz
bG93Lgo+ID4gPgo+ID4gPiBBbHNvLCBhcyBJIG1lbnRpb25lZCBiZWZvcmUsIHdlIGFscmVhZHkg
cmV0dXJuIHRoZSByYW5nZSBvZiBzdXBwb3J0ZWQKPiA+ID4gcmVzb2x1dGlvbnMsIHdoaWNoIGlu
IHByYWN0aWNlIHNob3VsZCBtYXAgdG8gdGhlIHBhcnQgb2YgdGhlIGxldmVsCj4gPiA+IHRoYXQg
bWF5IGRlcGVuZCBvbiBoYXJkd2FyZSBjYXBhYmlsaXRpZXMgcmF0aGVyIHRoYW4gcGVyZm9ybWFu
Y2UsIHNvCj4gPiA+IGV4cG9zaW5nIGxldmVscyBhcyB3ZWxsIHdvdWxkIGFkZCByZWR1bmRhbmN5
IHRvIHRoZSBpbmZvcm1hdGlvbgo+ID4gPiBleHBvc2VkLgo+ID4KPiA+IFRoZXJlIGlzIGEgbG90
IG9mIGRpc2N1c3Npb24gaGVyZSwgYnV0IGl0IGFsbCByZXZvbHZlcyBhcm91bmQgYSBwb3RlbnRp
YWwKPiA+IExFVkVMIGNvbnRyb2wuCj4gPgo+ID4gU28gSSBnYXRoZXIgZXZlcnlvbmUgaXMgT0sg
d2l0aCBtZXJnaW5nIHRoaXMgcGF0Y2g/Cj4KPiBJJ20gb2sgd2l0aCB0aGlzLiBGb3IgbWUsIHRo
ZSBsZXZlbCByZWZsZWN0cyB0aGUgcmVhbCB0aW1lIHBlcmZvcm1hbmNlCj4gY2FwYWJpbGl0eSBh
cyBkZWZpbmUgaW4gdGhlIHNwZWMsIHdoaWxlIHRoZSB3aWR0aC9oZWlnaHQgY29uc3RyYWludHMg
dXN1YWxseQo+IHJlcHJlc2VudCBhbiBhZGRyZXNzaW5nIGNhcGFiaWNpdHksIHdoaWNoIG1heSBv
ciBtYXkgbm90IG9wZXJhdGUgcmVhbC10aW1lLgo+CgpJJ2QgbGlrZSB0byBzZWUgdGhlIGxldmVs
IGNvbnRyb2wgZG9jdW1lbnRhdGlvbiBpbXByb3ZlZCBiZWZvcmUgd2UKc3RhcnQgYWRkaW5nIGl0
IHRvIHRoZSBkcml2ZXJzLiBJJ2xsIGJlIG9rYXkgd2l0aCB0aGF0IHRoZW4gYXMgbG9uZyBhcwp0
aGUgdmFsdWVzIGFyZSBleHBvc2VkIGluIGEgY29uc2lzdGVudCBhbmQgd2VsbCBkZWZpbmVkIHdh
eS4gOikKCkFzIGZvciB0aGlzIHBhdGNoLCBIYW5zLCBhcmUgeW91IGdvaW5nIHRvIGFwcGx5IGl0
PwoKQmVzdCByZWdhcmRzLApUb21hc3oKCj4gPgo+ID4gSWYgbm90LCBsZXQgbWUga25vdyBhc2Fw
Lgo+ID4KPiA+IFJlZ2FyZHMsCj4gPgo+ID4gICAgICAgSGFucwo+ID4KPiA+ID4gPiA+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBIaXJva2F6dSBIb25kYSA8aGlyb2hAY2hyb21pdW0ub3JnPgo+ID4gPiA+
ID4gPiA+IC0tLQo+ID4gPiA+ID4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hh
bnRyb19kcnYuYyB8IDEwICsrKysrKysrKysKPiA+ID4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQs
IDEwIGluc2VydGlvbnMoKykKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ID4gPiA+ID4gPiA+
IGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiA+ID4gPiA+ID4g
PiBpbmRleCA2ZDlkNDExNzA4MzIuLjkzODc2MTkyMzVkOCAxMDA2NDQKPiA+ID4gPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ID4gPiA+ID4g
PiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gPiA+
ID4gPiA+ID4gQEAgLTM1NSw2ICszNTUsMTYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBoYW50cm9f
Y3RybCBjb250cm9sc1tdID0gewo+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAu
ZGVmID0KPiA+ID4gPiA+ID4gPiBWNEwyX01QRUdfVklERU9fSDI2NF9TVEFSVF9DT0RFX0FOTkVY
X0IsCj4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgIC5tYXggPQo+ID4gPiA+ID4g
PiA+IFY0TDJfTVBFR19WSURFT19IMjY0X1NUQVJUX0NPREVfQU5ORVhfQiwKPiA+ID4gPiA+ID4g
PiAgICAgICAgICAgICAgIH0sCj4gPiA+ID4gPiA+ID4gKyAgICAgfSwgewo+ID4gPiA+ID4gPiA+
ICsgICAgICAgICAgICAgLmNvZGVjID0gSEFOVFJPX0gyNjRfREVDT0RFUiwKPiA+ID4gPiA+ID4g
PiArICAgICAgICAgICAgIC5jZmcgPSB7Cj4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIC5pZCA9IFY0TDJfQ0lEX01QRUdfVklERU9fSDI2NF9QUk9GSUxFLAo+ID4gPiA+ID4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAubWluID0gVjRMMl9NUEVHX1ZJREVPX0gyNjRfUFJPRklM
RV9CQVNFTElORSwKPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgLm1heCA9IFY0
TDJfTVBFR19WSURFT19IMjY0X1BST0ZJTEVfSElHSCwKPiA+ID4gPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgLm1lbnVfc2tpcF9tYXNrID0KPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgQklUKFY0TDJfTVBFR19WSURFT19IMjY0X1BST0ZJTEVfRVhURU5ERUQpLAo+ID4g
PiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAuZGVmID0gVjRMMl9NUEVHX1ZJREVPX0gy
NjRfUFJPRklMRV9NQUlOLAo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgfQo+ID4gPiA+ID4g
PiA+ICAgICAgIH0sIHsKPiA+ID4gPiA+ID4gPiAgICAgICB9LAo+ID4gPiA+ID4gPiA+ICB9Owo+
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
