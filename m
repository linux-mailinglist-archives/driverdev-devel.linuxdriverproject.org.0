Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9A01CEE62
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 May 2020 09:43:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0287486A51;
	Tue, 12 May 2020 07:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QaDYCcDdHDTd; Tue, 12 May 2020 07:43:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A6E586A99;
	Tue, 12 May 2020 07:43:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 943AA1BF2C7
 for <devel@linuxdriverproject.org>; Tue, 12 May 2020 07:43:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8D46F88618
 for <devel@linuxdriverproject.org>; Tue, 12 May 2020 07:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Kble14uPgm0 for <devel@linuxdriverproject.org>;
 Tue, 12 May 2020 07:43:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 46E7B88596
 for <devel@driverdev.osuosl.org>; Tue, 12 May 2020 07:43:47 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id m13so9756201otf.6
 for <devel@driverdev.osuosl.org>; Tue, 12 May 2020 00:43:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WL99cZpSCjAY9uTUemuiOdybxhEn/p8SNKkMW2pnMgk=;
 b=VEhjZervjJELWU3YdP4aEEuAc9JYUj/Yb8O7t+llS5f+D+JMCWECFw/+9xi2W4lLR5
 GDWYO6ALED46WOAIPlcmftQnsBm7i9NUoH1M3zxE2P/bZKbJWSBuZTloJROegVZS5y5Q
 GYuogawUHINh69iCIVJia6pYd95eg98Us9K+DzncFfZeVNrm559cRbHCosD26irz6b/j
 fP88SH/IDkMrGCZAwGu0Vzi4Y85bOG+UdbJ/k6QPcKbdmWN54odFtV/kYpMFKkqT5eOI
 1Ba9azlbQgxTBKYcKxO+/PC2vf/JEGK0jyMkSCGEEVNfYH0cdZMnIvroSeyEZOJeqsaf
 ssSw==
X-Gm-Message-State: AGi0PuYfJvCVVCTP3plIvdYPc2t1OWKbOQ+Ija4PrTukMKvFnLWyvu89
 wdzuwTtD38NsTrYjAKBsXzMd9A+ZRGm/0oSoOG0=
X-Google-Smtp-Source: APiQypIDWmbHTXLtnOKXo30M5B3vTkf3nDlAfbBCqheKh4YZxA4lrYnndNhzQpgu3wBVeeut/IwxOF4lTFymYCLt8jo=
X-Received: by 2002:a9d:7990:: with SMTP id h16mr15276353otm.145.1589269426183; 
 Tue, 12 May 2020 00:43:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200511154930.190212-1-Jerome.Pouiller@silabs.com>
 <20200511154930.190212-14-Jerome.Pouiller@silabs.com>
In-Reply-To: <20200511154930.190212-14-Jerome.Pouiller@silabs.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 12 May 2020 09:43:34 +0200
Message-ID: <CAMuHMdVZxy+FZGPhDxotCBeEX3O4ZMkmGAwmVFXQE9ZoijDN5g@mail.gmail.com>
Subject: Re: [PATCH 13/17] staging: wfx: fix endianness of the field 'len'
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, netdev <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgSmVyb21lLAoKT24gTW9uLCBNYXkgMTEsIDIwMjAgYXQgNTo1MyBQTSBKZXJvbWUgUG91aWxs
ZXIKPEplcm9tZS5Qb3VpbGxlckBzaWxhYnMuY29tPiB3cm90ZToKPiBGcm9tOiBKw6lyw7RtZSBQ
b3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBUaGUgc3RydWN0IGhpZl9t
c2cgaXMgcmVjZWl2ZWQgZnJvbSB0aGUgaGFyZHdhcmUuIFNvLCBpdCBkZWNsYXJlZCBhcwo+IGxp
dHRsZSBlbmRpYW4uIEhvd2V2ZXIsIGl0IGlzIGFsc28gYWNjZXNzZWQgZnJvbSBtYW55IHBsYWNl
cyBpbiB0aGUKPiBkcml2ZXIuIFNwYXJzZSBjb21wbGFpbnMgYWJvdXQgdGhhdDoKPgo+ICAgICBk
cml2ZXJzL3N0YWdpbmcvd2Z4L2JoLmM6ODg6MzI6IHdhcm5pbmc6IHJlc3RyaWN0ZWQgX19sZTE2
IGRlZ3JhZGVzIHRvIGludGVnZXIKPiAgICAgZHJpdmVycy9zdGFnaW5nL3dmeC9iaC5jOjg4OjMy
OiB3YXJuaW5nOiByZXN0cmljdGVkIF9fbGUxNiBkZWdyYWRlcyB0byBpbnRlZ2VyCj4gICAgIGRy
aXZlcnMvc3RhZ2luZy93ZngvYmguYzo5MzozMjogd2FybmluZzogcmVzdHJpY3RlZCBfX2xlMTYg
ZGVncmFkZXMgdG8gaW50ZWdlcgo+ICAgICBkcml2ZXJzL3N0YWdpbmcvd2Z4L2JoLmM6OTM6MzI6
IHdhcm5pbmc6IGNhc3QgdG8gcmVzdHJpY3RlZCBfX2xlMTYKPiAgICAgZHJpdmVycy9zdGFnaW5n
L3dmeC9iaC5jOjkzOjMyOiB3YXJuaW5nOiByZXN0cmljdGVkIF9fbGUxNiBkZWdyYWRlcyB0byBp
bnRlZ2VyCj4gICAgIGRyaXZlcnMvc3RhZ2luZy93ZngvYmguYzoxMjE6MjU6IHdhcm5pbmc6IGlu
Y29ycmVjdCB0eXBlIGluIGFyZ3VtZW50IDIgKGRpZmZlcmVudCBiYXNlIHR5cGVzKQo+ICAgICBk
cml2ZXJzL3N0YWdpbmcvd2Z4L2JoLmM6MTIxOjI1OiAgICBleHBlY3RlZCB1bnNpZ25lZCBpbnQg
bGVuCj4gICAgIGRyaXZlcnMvc3RhZ2luZy93ZngvYmguYzoxMjE6MjU6ICAgIGdvdCByZXN0cmlj
dGVkIF9fbGUxNiBbdXNlcnR5cGVdIGxlbgo+ICAgICBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9y
eC5jOjI3OjIyOiB3YXJuaW5nOiByZXN0cmljdGVkIF9fbGUxNiBkZWdyYWRlcyB0byBpbnRlZ2Vy
Cj4gICAgIGRyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmM6MzQ3OjM5OiB3YXJuaW5nOiBpbmNv
cnJlY3QgdHlwZSBpbiBhcmd1bWVudCA3IChkaWZmZXJlbnQgYmFzZSB0eXBlcykKPiAgICAgZHJp
dmVycy9zdGFnaW5nL3dmeC9oaWZfcnguYzozNDc6Mzk6ICAgIGV4cGVjdGVkIHVuc2lnbmVkIGlu
dCBbdXNlcnR5cGVdIGxlbgo+ICAgICBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9yeC5jOjM0Nzoz
OTogICAgZ290IHJlc3RyaWN0ZWQgX19sZTE2IGNvbnN0IFt1c2VydHlwZV0gbGVuCj4gICAgIGRy
aXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmM6MzY1OjM5OiB3YXJuaW5nOiBpbmNvcnJlY3QgdHlw
ZSBpbiBhcmd1bWVudCA3IChkaWZmZXJlbnQgYmFzZSB0eXBlcykKPiAgICAgZHJpdmVycy9zdGFn
aW5nL3dmeC9oaWZfcnguYzozNjU6Mzk6ICAgIGV4cGVjdGVkIHVuc2lnbmVkIGludCBbdXNlcnR5
cGVdIGxlbgo+ICAgICBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9yeC5jOjM2NTozOTogICAgZ290
IHJlc3RyaWN0ZWQgX19sZTE2IGNvbnN0IFt1c2VydHlwZV0gbGVuCj4gICAgIGRyaXZlcnMvc3Rh
Z2luZy93ZngvLi90cmFjZXMuaDoxOTU6MTogd2FybmluZzogaW5jb3JyZWN0IHR5cGUgaW4gYXNz
aWdubWVudCAoZGlmZmVyZW50IGJhc2UgdHlwZXMpCj4gICAgIGRyaXZlcnMvc3RhZ2luZy93Zngv
Li90cmFjZXMuaDoxOTU6MTogICAgZXhwZWN0ZWQgaW50IG1zZ19sZW4KPiAgICAgZHJpdmVycy9z
dGFnaW5nL3dmeC8uL3RyYWNlcy5oOjE5NToxOiAgICBnb3QgcmVzdHJpY3RlZCBfX2xlMTYgY29u
c3QgW3VzZXJ0eXBlXSBsZW4KPiAgICAgZHJpdmVycy9zdGFnaW5nL3dmeC8uL3RyYWNlcy5oOjE5
NToxOiB3YXJuaW5nOiBpbmNvcnJlY3QgdHlwZSBpbiBhc3NpZ25tZW50IChkaWZmZXJlbnQgYmFz
ZSB0eXBlcykKPiAgICAgZHJpdmVycy9zdGFnaW5nL3dmeC8uL3RyYWNlcy5oOjE5NToxOiAgICBl
eHBlY3RlZCBpbnQgbXNnX2xlbgo+ICAgICBkcml2ZXJzL3N0YWdpbmcvd2Z4Ly4vdHJhY2VzLmg6
MTk1OjE6ICAgIGdvdCByZXN0cmljdGVkIF9fbGUxNiBjb25zdCBbdXNlcnR5cGVdIGxlbgo+ICAg
ICBkcml2ZXJzL3N0YWdpbmcvd2Z4L2RlYnVnLmM6MzE5OjIwOiB3YXJuaW5nOiByZXN0cmljdGVk
IF9fbGUxNiBkZWdyYWRlcyB0byBpbnRlZ2VyCj4gICAgIGRyaXZlcnMvc3RhZ2luZy93Zngvc2Vj
dXJlX2xpbmsuYzo4NToyNzogd2FybmluZzogcmVzdHJpY3RlZCBfX2xlMTYgZGVncmFkZXMgdG8g
aW50ZWdlcgo+ICAgICBkcml2ZXJzL3N0YWdpbmcvd2Z4L3NlY3VyZV9saW5rLmM6ODU6Mjc6IHdh
cm5pbmc6IHJlc3RyaWN0ZWQgX19sZTE2IGRlZ3JhZGVzIHRvIGludGVnZXIKClRoYW5rcyBmb3Ig
eW91ciBwYXRjaCEKCj4gSW4gb3JkZXIgdG8gbWFrZSBTcGFyc2UgaGFwcHkgYW5kIHRvIGtlZXAg
YWNjZXNzIGZyb20gdGhlIGRyaXZlciBlYXN5LAo+IHRoaXMgcGF0Y2ggZGVjbGFyZSAnbGVuJyB3
aXRoIG5hdGl2ZSBlbmRpYW5uZXNzLgo+Cj4gT24gcmVjZXB0aW9uIG9mIGhhcmR3YXJlIGRhdGEs
IHRoaXMgcGF0Y2ggdGFrZXMgY2FyZSB0byBkbyBieXRlLXN3YXAgYW5kCj4ga2VlcCBTcGFyc2Ug
aGFwcHkuCgpXaGljaCBtZWFucyBzcGFyc2UgY2FuIG5vIGxvbmdlciBkbyBhbnkgY2hlY2tpbmcg
b24gdGhlIGZpZWxkLAphbmQgbmV3IGJ1Z3MgbWF5L3dpbGwgY3JlZXAgaW4gaW4gdGhlIGZ1dHVy
ZSwgdW5ub3RpY2VkLgoKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlfZ2VuZXJh
bC5oCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfYXBpX2dlbmVyYWwuaAo+IEBAIC0y
Myw3ICsyMywxMCBAQAo+ICAjZGVmaW5lIEhJRl9DT1VOVEVSX01BWCAgICAgICAgICAgNwo+Cj4g
IHN0cnVjdCBoaWZfbXNnIHsKPiAtICAgICAgIF9fbGUxNiBsZW47Cj4gKyAgICAgICAvLyBsZW4g
aXMgaW4gZmFjdCBsaXR0bGUgZW5kaWFuLiBIb3dldmVyLCBpdCBpcyB3aWRlbHkgdXNlZCBpbiB0
aGUKPiArICAgICAgIC8vIGRyaXZlciwgc28gd2UgZGVjbGFyZSBpdCBpbiBuYXRpdmUgYnl0ZSBv
cmRlciBhbmQgd2UgcmVvcmRlciBqdXN0Cj4gKyAgICAgICAvLyBiZWZvcmUvYWZ0ZXIgc2VuZC9y
ZWNlaXZlIGl0IChzZWUgYmguYykuCj4gKyAgICAgICB1MTYgICAgbGVuOwoKV2hpbGUgdGhlcmUn
cyBhIHNtYWxsIHBlbmFsdHkgYXNzb2NpYXRlZCB3aXRoIGFsd2F5cyBkb2luZyB0aGUgY29udmVy
c2lvbgpvbiBiaWctZW5kaWFuIHBsYXRmb3JtcywgaXQgd2lsbCBwcm9iYWJseSBiZSBsb3N0IGlu
IHRoZSBub2lzZSBhbnl3YXkuCgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAg
ICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBM
aW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29u
dmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIu
IEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1t
ZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgLS0gTGludXMgVG9ydmFsZHMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
