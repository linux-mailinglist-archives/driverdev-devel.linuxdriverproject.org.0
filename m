Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 231C9254B0E
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Aug 2020 18:44:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB1BC884DF;
	Thu, 27 Aug 2020 16:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h64h-dvF8Bh6; Thu, 27 Aug 2020 16:44:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A03AC884B2;
	Thu, 27 Aug 2020 16:44:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E7C91BF2FC
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 16:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 98621868C9
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 16:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RMdKdaDOC_kp for <devel@linuxdriverproject.org>;
 Thu, 27 Aug 2020 16:44:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6DFCD86073
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 16:44:37 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id i10so6533717iow.3
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 09:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yD0oCQhhV/YgON9Q9qRgw4PKAGTMOkPcQdtUeu+eeGo=;
 b=H05tKdjRA7CpsxEhAgD2n+R4Zle8k6MFcogR4vh+WxqFQFBrWtVUdJz3+SUM49oHD9
 zfD94Dxq/goNnWe5STC8ZOGq3O1pQQzCsLTtD8+q8FTmclfPnQU473ymDA4x/Nd0v02C
 lEFjhLE0CSByi+9XTNWb9TYCy0ZrRoSh1D7gE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yD0oCQhhV/YgON9Q9qRgw4PKAGTMOkPcQdtUeu+eeGo=;
 b=f2XPu9nedXrO6JJlZRFcat+XdZJmwPsb0/pZUpPt8EHp+ORYdRtiPqoPoDhVzUb2Ct
 ZfCU6l/PSj13HpOh+jKPdJFDMkbX+rMLto8YcFQ7PlbcGhbdu2MFYGTa6kpbj0cDR0Pa
 iWo3k7TRDkstAHgxALfkbwkZUtyLq6JLWdbhAgslYFFRNMnR2G2dmryHoK+YnmTwAh2y
 HuXp1jy8MxNHPW/+8nZEOUHbmg/+BsgC3dyx2rDdxBZw1oY95Vw36Jxb+2rMxX6MppTw
 k78f3jxt2M2C8j2zBGqQm/nGK8daijk/tVRb7tAI1r7FvApr9tD2ZSXtHarM3kffpWY9
 9CgA==
X-Gm-Message-State: AOAM531BIOujdpB9bE4gaxWvKOxjQtKs2mNxC4a0wHthUHmlV+98Whzu
 Y/f0vKU3g4pubb3YOueWi7BsTQ==
X-Google-Smtp-Source: ABdhPJy0QNZLAye/+ntACjbnw1CEGNqxV2Hk5ydPtsRxq1oIDicWP2J9Mdu1tNXeMBU5axSrEjfP7A==
X-Received: by 2002:a02:843:: with SMTP id 64mr14945203jac.59.1598546676673;
 Thu, 27 Aug 2020 09:44:36 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id v11sm632346ili.66.2020.08.27.09.44.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Aug 2020 09:44:36 -0700 (PDT)
Subject: Re: [PATCH] staging: ion: remove from the tree
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, laura@labbott.name,
 sumit.semwal@linaro.org, john.stultz@linaro.org
References: <20200827123627.538189-1-gregkh@linuxfoundation.org>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <6be71d12-1335-e53a-72ed-bd4392f20394@linuxfoundation.org>
Date: Thu, 27 Aug 2020 10:44:34 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200827123627.538189-1-gregkh@linuxfoundation.org>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, linaro-mm-sig@lists.linaro.org,
 Shuah Khan <shuah@kernel.org>, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Suren Baghdasaryan <surenb@google.com>,
 Christoph Hellwig <hch@infradead.org>, Joel Fernandes <joel@joelfernandes.org>,
 =?UTF-8?Q?Arve_Hj=c3=b8nnev=c3=a5g?= <arve@android.com>,
 Shuah Khan <skhan@linuxfoundation.org>, Hridya Valsaraju <hridya@google.com>,
 kernel-team@android.com,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Christian Brauner <christian@brauner.io>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gOC8yNy8yMCA2OjM2IEFNLCBHcmVnIEtyb2FoLUhhcnRtYW4gd3JvdGU6Cj4gVGhlIElPTiBh
bmRyb2lkIGNvZGUgaGFzIGxvbmcgYmVlbiBtYXJrZWQgdG8gYmUgcmVtb3ZlZCwgbm93IHRoYXQg
d2UKPiBkbWEtYnVmIHN1cHBvcnQgbWVyZ2VkIGludG8gdGhlIHJlYWwgcGFydCBvZiB0aGUga2Vy
bmVsLgo+IAo+IEl0IHdhcyB0aG91Z2h0IHRoYXQgd2UgY291bGQgd2FpdCB0byByZW1vdmUgdGhl
IGlvbiBrZXJuZWwgYXQgYSBsYXRlcgo+IHRpbWUsIGJ1dCBhcyB0aGUgb3V0LW9mLXRyZWUgQW5k
cm9pZCBmb3JrIG9mIHRoZSBpb24gY29kZSBoYXMgZGl2ZXJnZWQKPiBxdWl0ZSBhIGJpdCwgYW5k
IGFueSBBbmRyb2lkIGRldmljZSB1c2luZyB0aGUgaW9uIGludGVyZmFjZSB1c2VzIHRoYXQKPiBm
b3JrZWQgdmVyc2lvbiBhbmQgbm90IHRoaXMgaW4tdHJlZSB2ZXJzaW9uLCB0aGUgaW4tdHJlZSBj
b3B5IG9mIHRoZQo+IGNvZGUgaXMgYWJhbmRvbmRlZCBhbmQgbm90IHVzZWQgYnkgYW55b25lLgo+
IAo+IENvbWJpbmUgdGhpcyBhYmFuZG9uZWQgY29kZWJhc2Ugd2l0aCB0aGUgbmVlZCB0byBtYWtl
IGNoYW5nZXMgdG8gaXQgaW4KPiBvcmRlciB0byBrZWVwIHRoZSBrZXJuZWwgYnVpbGRpbmcgcHJv
cGVybHksIHdoaWNoIHRoZW4gY2F1c2VzIG1lcmdlCj4gaXNzdWVzIHdoZW4gbWVyZ2luZyB0aG9z
ZSBjaGFuZ2VzIGludG8gdGhlIG91dC1vZi10cmVlIEFuZHJvaWQgY29kZSwgYW5kCj4geW91IGVu
ZCB1cCB3aXRoIHR3byBkaWZmZXJlbnQgZ3JvdXBzIG9mIHBlb3BsZSAodGhlIGluLWtlcm5lbC10
cmVlCj4gZGV2ZWxvcGVycywgYW5kIHRoZSBBbmRyb2lkIGtlcm5lbCBkZXZlbG9wZXJzKSB3aG8g
YXJlIGJvdGggYW5ub3llZCBhdAo+IHRoZSBjdXJyZW50IHNpdHVhdGlvbi4gIEJlY2F1c2Ugb2Yg
dGhpcyBwcm9ibGVtLCBqdXN0IGRyb3AgdGhlIGluLWtlcm5lbAo+IGNvcHkgb2YgdGhlIGlvbiBj
b2RlIG5vdywgYXMgaXQncyBub3QgdXNlZCwgYW5kIGlzIG9ubHkgY2F1c2luZyBwcm9ibGVtcwo+
IGZvciBldmVyeW9uZSBpbnZvbHZlZC4KPiAKPiBDYzogIkFydmUgSGrDuG5uZXbDpWciIDxhcnZl
QGFuZHJvaWQuY29tPgo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4KPiBDYzogQ2hyaXN0aWFuIEJyYXVuZXIgPGNocmlzdGlhbkBicmF1bmVyLmlvPgo+
IENjOiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGluZnJhZGVhZC5vcmc+Cj4gQ2M6IEhyaWR5YSBW
YWxzYXJhanUgPGhyaWR5YUBnb29nbGUuY29tPgo+IENjOiBKb2VsIEZlcm5hbmRlcyA8am9lbEBq
b2VsZmVybmFuZGVzLm9yZz4KPiBDYzogSm9obiBTdHVsdHogPGpvaG4uc3R1bHR6QGxpbmFyby5v
cmc+Cj4gQ2M6IExhdXJhIEFiYm90dCA8bGF1cmFAbGFiYm90dC5uYW1lPgo+IENjOiBNYXJ0aWpu
IENvZW5lbiA8bWFjb0BhbmRyb2lkLmNvbT4KPiBDYzogU2h1YWggS2hhbiA8c2h1YWhAa2VybmVs
Lm9yZz4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzog
U3VyZW4gQmFnaGRhc2FyeWFuIDxzdXJlbmJAZ29vZ2xlLmNvbT4KPiBDYzogVG9kZCBLam9zIDx0
a2pvc0BhbmRyb2lkLmNvbT4KPiBDYzogZGV2ZWxAZHJpdmVyZGV2Lm9zdW9zbC5vcmcKPiBDYzog
ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBs
aW51eGZvdW5kYXRpb24ub3JnPgo+IC0tLQo+ICAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgIDEwIC0KPiAgIGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL0tj
b25maWcgICAgICAgICAgICAgICB8ICAgMiAtCj4gICBkcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9N
YWtlZmlsZSAgICAgICAgICAgICAgfCAgIDIgLQo+ICAgZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQv
VE9ETyAgICAgICAgICAgICAgICAgIHwgICA1IC0KPiAgIGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lk
L2lvbi9LY29uZmlnICAgICAgICAgICB8ICAyNyAtCj4gICBkcml2ZXJzL3N0YWdpbmcvYW5kcm9p
ZC9pb24vTWFrZWZpbGUgICAgICAgICAgfCAgIDQgLQo+ICAgZHJpdmVycy9zdGFnaW5nL2FuZHJv
aWQvaW9uL2lvbi5jICAgICAgICAgICAgIHwgNjQ5IC0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgZHJp
dmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5oICAgICAgICAgICAgIHwgMzAyIC0tLS0tLS0t
Cj4gICBkcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uX2NtYV9oZWFwLmMgICAgfCAxMzgg
LS0tLQo+ICAgZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9oZWFwLmMgICAgICAgIHwg
Mjg2IC0tLS0tLS0tCj4gICBkcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uX3BhZ2VfcG9v
bC5jICAgfCAxNTUgLS0tLS0KPiAgIGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25fc3lz
dGVtX2hlYXAuYyB8IDM3NyAtLS0tLS0tLS0tCj4gICBkcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC91
YXBpL2lvbi5oICAgICAgICAgICAgfCAxMjcgLS0tLQo+ICAgdG9vbHMvdGVzdGluZy9zZWxmdGVz
dHMvTWFrZWZpbGUgICAgICAgICAgICAgIHwgICAzICstCj4gICB0b29scy90ZXN0aW5nL3NlbGZ0
ZXN0cy9hbmRyb2lkL01ha2VmaWxlICAgICAgfCAgMzkgLS0KPiAgIHRvb2xzL3Rlc3Rpbmcvc2Vs
ZnRlc3RzL2FuZHJvaWQvY29uZmlnICAgICAgICB8ICAgNSAtCj4gICAuLi4vdGVzdGluZy9zZWxm
dGVzdHMvYW5kcm9pZC9pb24vLmdpdGlnbm9yZSAgfCAgIDQgLQo+ICAgdG9vbHMvdGVzdGluZy9z
ZWxmdGVzdHMvYW5kcm9pZC9pb24vTWFrZWZpbGUgIHwgIDIwIC0KPiAgIHRvb2xzL3Rlc3Rpbmcv
c2VsZnRlc3RzL2FuZHJvaWQvaW9uL1JFQURNRSAgICB8IDEwMSAtLS0KPiAgIHRvb2xzL3Rlc3Rp
bmcvc2VsZnRlc3RzL2FuZHJvaWQvaW9uL2lvbi5oICAgICB8IDEzNCAtLS0tCj4gICAuLi4vdGVz
dGluZy9zZWxmdGVzdHMvYW5kcm9pZC9pb24vaW9uX3Rlc3Quc2ggfCAgNTggLS0KPiAgIC4uLi9z
ZWxmdGVzdHMvYW5kcm9pZC9pb24vaW9uYXBwX2V4cG9ydC5jICAgICB8IDEyNyAtLS0tCj4gICAu
Li4vc2VsZnRlc3RzL2FuZHJvaWQvaW9uL2lvbmFwcF9pbXBvcnQuYyAgICAgfCAgNzkgLS0tCj4g
ICAuLi4vc2VsZnRlc3RzL2FuZHJvaWQvaW9uL2lvbm1hcF90ZXN0LmMgICAgICAgfCAxMzYgLS0t
LQo+ICAgLi4uL3Rlc3Rpbmcvc2VsZnRlc3RzL2FuZHJvaWQvaW9uL2lvbnV0aWxzLmMgIHwgMjUz
IC0tLS0tLS0KPiAgIC4uLi90ZXN0aW5nL3NlbGZ0ZXN0cy9hbmRyb2lkL2lvbi9pb251dGlscy5o
ICB8ICA1NSAtLQo+ICAgLi4uL3Rlc3Rpbmcvc2VsZnRlc3RzL2FuZHJvaWQvaW9uL2lwY3NvY2tl
dC5jIHwgMjI3IC0tLS0tLQo+ICAgLi4uL3Rlc3Rpbmcvc2VsZnRlc3RzL2FuZHJvaWQvaW9uL2lw
Y3NvY2tldC5oIHwgIDM1IC0KPiAgIHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FuZHJvaWQvcnVu
LnNoICAgICAgICB8ICAgMyAtCj4gICAyOSBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MzM2MiBkZWxldGlvbnMoLSkKPiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcv
YW5kcm9pZC9pb24vS2NvbmZpZwo+ICAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2lu
Zy9hbmRyb2lkL2lvbi9NYWtlZmlsZQo+ICAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3Rh
Z2luZy9hbmRyb2lkL2lvbi9pb24uYwo+ICAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3Rh
Z2luZy9hbmRyb2lkL2lvbi9pb24uaAo+ICAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3Rh
Z2luZy9hbmRyb2lkL2lvbi9pb25fY21hX2hlYXAuYwo+ICAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25faGVhcC5jCj4gICBkZWxldGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9wYWdlX3Bvb2wuYwo+ICAgZGVsZXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25fc3lzdGVtX2hlYXAu
Ywo+ICAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL3VhcGkvaW9u
LmgKPiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9hbmRyb2lk
L01ha2VmaWxlCj4gICBkZWxldGUgbW9kZSAxMDA2NDQgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMv
YW5kcm9pZC9jb25maWcKPiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCB0b29scy90ZXN0aW5nL3NlbGZ0
ZXN0cy9hbmRyb2lkL2lvbi8uZ2l0aWdub3JlCj4gICBkZWxldGUgbW9kZSAxMDA2NDQgdG9vbHMv
dGVzdGluZy9zZWxmdGVzdHMvYW5kcm9pZC9pb24vTWFrZWZpbGUKPiAgIGRlbGV0ZSBtb2RlIDEw
MDY0NCB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9hbmRyb2lkL2lvbi9SRUFETUUKPiAgIGRlbGV0
ZSBtb2RlIDEwMDY0NCB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9hbmRyb2lkL2lvbi9pb24uaAo+
ICAgZGVsZXRlIG1vZGUgMTAwNzU1IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FuZHJvaWQvaW9u
L2lvbl90ZXN0LnNoCj4gICBkZWxldGUgbW9kZSAxMDA2NDQgdG9vbHMvdGVzdGluZy9zZWxmdGVz
dHMvYW5kcm9pZC9pb24vaW9uYXBwX2V4cG9ydC5jCj4gICBkZWxldGUgbW9kZSAxMDA2NDQgdG9v
bHMvdGVzdGluZy9zZWxmdGVzdHMvYW5kcm9pZC9pb24vaW9uYXBwX2ltcG9ydC5jCj4gICBkZWxl
dGUgbW9kZSAxMDA2NDQgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYW5kcm9pZC9pb24vaW9ubWFw
X3Rlc3QuYwo+ICAgZGVsZXRlIG1vZGUgMTAwNjQ0IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2Fu
ZHJvaWQvaW9uL2lvbnV0aWxzLmMKPiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCB0b29scy90ZXN0aW5n
L3NlbGZ0ZXN0cy9hbmRyb2lkL2lvbi9pb251dGlscy5oCj4gICBkZWxldGUgbW9kZSAxMDA2NDQg
dG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYW5kcm9pZC9pb24vaXBjc29ja2V0LmMKPiAgIGRlbGV0
ZSBtb2RlIDEwMDY0NCB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9hbmRyb2lkL2lvbi9pcGNzb2Nr
ZXQuaAo+ICAgZGVsZXRlIG1vZGUgMTAwNzU1IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FuZHJv
aWQvcnVuLnNoCj4gCj4KCkZvciBzZWxmdGVzdCBjaGFuZ2VzIGluIHRoaXMgcGF0Y2g6CgpBY2tl
ZC1ieTogU2h1YWggS2hhbiA8c2toYW5AbGludXhmb3VuZGF0aW9uLm9yZz4KCnRoYW5rcywKLS0g
U2h1YWgKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
