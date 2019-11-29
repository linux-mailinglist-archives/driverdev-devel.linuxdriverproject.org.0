Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4F510D024
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Nov 2019 01:17:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 29ECB20426;
	Fri, 29 Nov 2019 00:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pq9aImLEr3WN; Fri, 29 Nov 2019 00:17:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4875D203A4;
	Fri, 29 Nov 2019 00:17:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 165A11BF3AE
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 00:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C74F86758
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 00:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m4eNSDOV57vm for <devel@linuxdriverproject.org>;
 Fri, 29 Nov 2019 00:17:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 137E0865A1
 for <devel@driverdev.osuosl.org>; Fri, 29 Nov 2019 00:17:13 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id b5so24228922eds.12
 for <devel@driverdev.osuosl.org>; Thu, 28 Nov 2019 16:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hKdxAEvC9giOVo+5fI8UhBseDYEwGbYsXK3mw9tmIQY=;
 b=hVlmWmpzm8h9AJJ3dV8J/Vq5S3tr8XdfS5TULH7gtd+QDlFhFvJl5GIs3pVRxbpuAr
 vb1xpQaVDVwJEn8ubFxWrx0Sy+N9ZDlY0LzWfmLkB4krIK6/YmWQQ+vvqvlvkaGE6nAX
 DPJPCbcwVfWu0Kox3IVCt7MSklSiOlMkMdfDc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hKdxAEvC9giOVo+5fI8UhBseDYEwGbYsXK3mw9tmIQY=;
 b=GoAOYgCKGzpIgX4iGB2z4L6OC3mvPXdCCW4U88lsdUCVmcqdF+c3uNVmQSfn2sF1j2
 eMlU7BjDmZ+vjLA4aJKTmtaiEloFJwgr6aI3LwXKj6UesBpRo4wSmE6qtnhAQKBDAi4A
 dst1/fTLLgSOnobmkUrGKi1XHfMZ6NqKitL/ECpTyeC7VfITS7SGaIDKFj/V/W06aW4T
 7kOJiC+JSVS9dXpELTT/eYQ6T+rfzpY/P/BIdTuNe5j6p+stqxXJrZO0Dlclxe2jvaXW
 Bh2/yIluVuz0Wo9ZH2sEotFgW5udl8iYXb3Gmkn/gKLXKcfSp0KksomZWK9bWY12Ms3g
 xIDA==
X-Gm-Message-State: APjAAAXqqeZHnolQGTnczuH5SdIyPA4Dn4KhLg0PbvtXoFnv1Azh8uYa
 CJUjHNCKi5JlhNgJOVvRe8saXKKgKXSjDQ==
X-Google-Smtp-Source: APXvYqwPk5Ogn4HQB7k8S0lu0Me9LFNhIqsZS6DHuVqCKx+KjIdybTeDj1+Eu8m15VV5e095laT3RA==
X-Received: by 2002:a17:906:641:: with SMTP id t1mr41261956ejb.1.1574986630753; 
 Thu, 28 Nov 2019 16:17:10 -0800 (PST)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com.
 [209.85.128.48])
 by smtp.gmail.com with ESMTPSA id m26sm1233015edr.16.2019.11.28.16.17.09
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Nov 2019 16:17:09 -0800 (PST)
Received: by mail-wm1-f48.google.com with SMTP id g206so12484815wme.1
 for <devel@driverdev.osuosl.org>; Thu, 28 Nov 2019 16:17:09 -0800 (PST)
X-Received: by 2002:a1c:3c42:: with SMTP id j63mr12611006wma.90.1574986628632; 
 Thu, 28 Nov 2019 16:17:08 -0800 (PST)
MIME-Version: 1.0
References: <20191122051608.128717-1-hiroh@chromium.org>
 <767528be59275265072896e5c679e97575615fdd.camel@ndufresne.ca>
 <CAAFQd5D3OpAAtX7_0ktz4-aAgWN_G4YBQMR=Vwp7JPopjvRkRA@mail.gmail.com>
 <f5341ed837529bd38d466d4b655e261d64065912.camel@ndufresne.ca>
In-Reply-To: <f5341ed837529bd38d466d4b655e261d64065912.camel@ndufresne.ca>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 29 Nov 2019 09:16:57 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Cpk8qG+VgE6+aznBmXu11YG0gNQyCRanZghds-TPKvyg@mail.gmail.com>
Message-ID: <CAAFQd5Cpk8qG+VgE6+aznBmXu11YG0gNQyCRanZghds-TPKvyg@mail.gmail.com>
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
 Hirokazu Honda <hiroh@chromium.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCBOb3YgMjMsIDIwMTkgYXQgMTo1MiBBTSBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFz
QG5kdWZyZXNuZS5jYT4gd3JvdGU6Cj4KPiBMZSBzYW1lZGkgMjMgbm92ZW1icmUgMjAxOSDDoCAw
MTowMCArMDkwMCwgVG9tYXN6IEZpZ2EgYSDDqWNyaXQgOgo+ID4gT24gU2F0LCBOb3YgMjMsIDIw
MTkgYXQgMTI6MDkgQU0gTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhc0BuZHVmcmVzbmUuY2E+IHdy
b3RlOgo+ID4gPiBMZSB2ZW5kcmVkaSAyMiBub3ZlbWJyZSAyMDE5IMOgIDE0OjE2ICswOTAwLCBI
aXJva2F6dSBIb25kYSBhIMOpY3JpdCA6Cj4gPiA+ID4gVGhlIEhhbnRybyBHMSBkZWNvZGVyIHN1
cHBvcnRzIEguMjY0IHByb2ZpbGVzIGZyb20gQmFzZWxpbmUgdG8gSGlnaCwgd2l0aAo+ID4gPiA+
IHRoZSBleGNlcHRpb24gb2YgdGhlIEV4dGVuZGVkIHByb2ZpbGUuCj4gPiA+ID4KPiA+ID4gPiBF
eHBvc2UgdGhlIFY0TDJfQ0lEX01QRUdfVklERU9fSDI2NF9QUk9GSUxFIGNvbnRyb2wsIHNvIHRo
YXQgdGhlCj4gPiA+ID4gYXBwbGljYXRpb25zIGNhbiBxdWVyeSB0aGUgZHJpdmVyIGZvciB0aGUg
bGlzdCBvZiBzdXBwb3J0ZWQgcHJvZmlsZXMuCj4gPiA+Cj4gPiA+IFRoYW5rcyBmb3IgdGhpcyBw
YXRjaC4gRG8geW91IHRoaW5rIHdlIGNvdWxkIGFsc28gYWRkIHRoZSBMRVZFTCBjb250cm9sCj4g
PiA+IHNvIHRoZSBwcm9maWxlL2xldmVsIGVudW1lcmF0aW9uIGJlY29tZXMgY29tcGxldGUgPwo+
ID4gPgo+ID4gPiBJJ20gdGhpbmtpbmcgaXQgd291bGQgYmUgbmljZSBpZiB0aGUgdjRsMiBjb21w
bGlhbmNlIHRlc3QgbWFrZSBzdXJlCj4gPiA+IHRoYXQgY29kZWNzIGRvIGltcGxlbWVudCB0aGVz
ZSBjb250cm9scyAoYm90aCBzdGF0ZWZ1bCBhbmQgc3RhdGVsZXNzKSwKPiA+ID4gaXQncyBlc3Nl
bnRpYWwgZm9yIHN0YWNrIHdpdGggc29mdHdhcmUgZmFsbGJhY2ssIG9yIG11bHRpcGxlIGNhcGFi
bGUKPiA+ID4gY29kZWMgaGFyZHdhcmUgYnV0IHdpdGggZGlmZmVyZW50IGNhcGFiaWxpdGllcy4K
PiA+ID4KPiA+Cj4gPiBMZXZlbCBpcyBhIGRpZmZpY3VsdCBzdG9yeSwgYmVjYXVzZSBpdCBhbHNv
IHNwZWNpZmllcyB0aGUgbnVtYmVyIG9mCj4gPiBtYWNyb2Jsb2NrcyBwZXIgc2Vjb25kLCBidXQg
Zm9yIGRlY29kZXJzIGxpa2UgdGhpcyB0aGUgbnVtYmVyIG9mCj4gPiBtYWNyb2Jsb2NrcyBwZXIg
c2Vjb25kIGl0IGNhbiBoYW5kbGUgZGVwZW5kcyBvbiB0aGluZ3MgdGhlIGRyaXZlcgo+ID4gbWln
aHQgYmUgbm90IGF3YXJlIG9mIC0gY2xvY2sgZnJlcXVlbmNpZXMsIEREUiB0aHJvdWdocHV0LCBz
eXN0ZW0KPiA+IGxvYWQsIGV0Yy4KPiA+Cj4gPiBNeSB0YWtlIG9uIHRoaXMgaXMgdGhhdCB0aGUg
ZGVjb2RlciBkcml2ZXIgc2hvdWxkIGFkdmVydGlzZSB0aGUKPiA+IGhpZ2hlc3QgcmVzb2x1dGlv
biB0aGUgZGVjb2RlciBjYW4gaGFuZGxlIGR1ZSB0byBoYXJkd2FyZSBjb25zdHJhaW50cy4KPiA+
IFBlcmZvcm1hbmNlIHJlbGF0ZWQgdGhpbmdzIGRlcGVuZCBvbiB0aGUgaW50ZWdyYXRpb24gZGV0
YWlscyBhbmQKPiA+IHNob3VsZCBiZSBtYW5hZ2VkIGVsc2V3aGVyZS4gRm9yIGV4YW1wbGUgQW5k
cm9pZCBhbmQgQ2hyb21lIE9TIG1hbmFnZQo+ID4gZXhwZWN0ZWQgZGVjb2RpbmcgcGVyZm9ybWFu
Y2UgaW4gcGVyLWJvYXJkIGNvbmZpZ3VyYXRpb24gZmlsZXMuCj4KPiBXaGVuIHlvdSByZWFkIGRh
dGFzaGVldCwgdGhlIEhXIGlzIGFsd2F5cyByYXRlZCB0byBtYXhpbXVtIGxldmVsIChhbmQKPiBp
dCdzIGEgcmFuZ2UpIHdpdGggdGhlIGFzc3VtcHRpb24gb2YgYSBzaW5nbGUgc3RyZWFtLiBJdCBz
ZWVtcyBtdWNoCj4gZWFzaWVyIHRvIGV4cG9zZSB0aGlzIGFzLWlzLCBzdGF0aWNhbGx5IHRoZW4g
dG8gc3RhcnQgZG9pbmcgc29tZSBtYXRoCj4gd2l0aCBkYXRhIHRoYXQgaXNuJ3QgZnVsbHkgZXhw
b3NlZCB0byB0aGUgdXNlci4gVGhpcyBpcyBhYm91dCBmaWx0ZXJpbmcKPiBvZiBtdWx0aXBsZSBD
T0RFQyBpbnN0YW5jZXMsIGl0IGRvZXMgbm90IG5lZWQgdG8gYmUgcm9ja2V0IHNjaWVuY2UsCj4g
c3BlY2lhbGx5IHRoYXQgdGhlIGFtb3VudCBvZiBtaXNzaW5nIGRhdGEgaXMgaW1wb3J0YW50IChl
LmcuIHVzYWdlIG9mCj4gdGlsZXMsIGNvbXByZXNzaW9uLCBJUFAgYWxsIGhhdmUgYW4gaW1wYWN0
IG9uIHRoZSBmaW5hbCBwZXJmb3JtYW5jZSkuCj4gQWxsIHdlIHdhbnQgdG8ga25vdyBpbiB1c2Vy
c3BhY2UgaXMgaWYgdGhpcyBIVyBpcyBldmVuIHBvc3NpYmx5IGNhcGFibGUKPiBvZiBMRVZFTCBY
LCBhbmQgaWYgbm90LCB3ZSdsbCBsb29rIGZvciBhbm90aGVyIG9uZS4KPgoKQWdyZWVkLCBvbmUg
Y291bGQgcG90ZW50aWFsbHkgZGVmaW5lIGl0IHRoaXMgd2F5LCBidXQgd291bGQgaXQgYmUKcmVh
bGx5IHVzZWZ1bCBmb3IgdGhlIHVzZXJzcGFjZSBhbmQgdGhlIHVzZXJzPyBJIGd1ZXNzIGl0IGNv
dWxkIGVuYWJsZQpzbGlnaHRseSBmYXN0ZXIgZmFsbGJhY2sgdG8gc29mdHdhcmUgZGVjb2Rpbmcg
aW4gdGhlIGV4dHJlbWUgY2FzZSBvZgp0aGUgaGFyZHdhcmUgbm90IHN1cHBvcnRpbmcgdGhlIGxl
dmVsIGF0IGFsbCwgYnV0IEkgc3VzcGVjdCB0aGF0IHRoZQptYWpvcml0eSBvZiBjYXNlcyB3b3Vs
ZCBiZSB0aGUgaGFyZHdhcmUganVzdCBiZWluZyB1bnVzYWJseSBzbG93LgoKQWxzbywgYXMgSSBt
ZW50aW9uZWQgYmVmb3JlLCB3ZSBhbHJlYWR5IHJldHVybiB0aGUgcmFuZ2Ugb2Ygc3VwcG9ydGVk
CnJlc29sdXRpb25zLCB3aGljaCBpbiBwcmFjdGljZSBzaG91bGQgbWFwIHRvIHRoZSBwYXJ0IG9m
IHRoZSBsZXZlbAp0aGF0IG1heSBkZXBlbmQgb24gaGFyZHdhcmUgY2FwYWJpbGl0aWVzIHJhdGhl
ciB0aGFuIHBlcmZvcm1hbmNlLCBzbwpleHBvc2luZyBsZXZlbHMgYXMgd2VsbCB3b3VsZCBhZGQg
cmVkdW5kYW5jeSB0byB0aGUgaW5mb3JtYXRpb24KZXhwb3NlZC4KCj4gPgo+ID4gPiA+IFNpZ25l
ZC1vZmYtYnk6IEhpcm9rYXp1IEhvbmRhIDxoaXJvaEBjaHJvbWl1bS5vcmc+Cj4gPiA+ID4gLS0t
Cj4gPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jIHwgMTAg
KysrKysrKysrKwo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+ID4g
PiA+Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFu
dHJvX2Rydi5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiA+
ID4gPiBpbmRleCA2ZDlkNDExNzA4MzIuLjkzODc2MTkyMzVkOCAxMDA2NDQKPiA+ID4gPiAtLS0g
YS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ID4gPiA+ICsrKyBi
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gPiA+ID4gQEAgLTM1
NSw2ICszNTUsMTYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBoYW50cm9fY3RybCBjb250cm9sc1td
ID0gewo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAuZGVmID0gVjRMMl9NUEVHX1ZJREVP
X0gyNjRfU1RBUlRfQ09ERV9BTk5FWF9CLAo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAu
bWF4ID0gVjRMMl9NUEVHX1ZJREVPX0gyNjRfU1RBUlRfQ09ERV9BTk5FWF9CLAo+ID4gPiA+ICAg
ICAgICAgICAgICAgfSwKPiA+ID4gPiArICAgICB9LCB7Cj4gPiA+ID4gKyAgICAgICAgICAgICAu
Y29kZWMgPSBIQU5UUk9fSDI2NF9ERUNPREVSLAo+ID4gPiA+ICsgICAgICAgICAgICAgLmNmZyA9
IHsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgLmlkID0gVjRMMl9DSURfTVBFR19WSURF
T19IMjY0X1BST0ZJTEUsCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIC5taW4gPSBWNEwy
X01QRUdfVklERU9fSDI2NF9QUk9GSUxFX0JBU0VMSU5FLAo+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAubWF4ID0gVjRMMl9NUEVHX1ZJREVPX0gyNjRfUFJPRklMRV9ISUdILAo+ID4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAubWVudV9za2lwX21hc2sgPQo+ID4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICBCSVQoVjRMMl9NUEVHX1ZJREVPX0gyNjRfUFJPRklMRV9FWFRFTkRFRCks
Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIC5kZWYgPSBWNEwyX01QRUdfVklERU9fSDI2
NF9QUk9GSUxFX01BSU4sCj4gPiA+ID4gKyAgICAgICAgICAgICB9Cj4gPiA+ID4gICAgICAgfSwg
ewo+ID4gPiA+ICAgICAgIH0sCj4gPiA+ID4gIH07Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
