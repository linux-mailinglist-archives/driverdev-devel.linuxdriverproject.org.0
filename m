Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 964B77FB4D
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 15:42:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4C41C23600;
	Fri,  2 Aug 2019 13:42:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1qX8SFAd9ZMH; Fri,  2 Aug 2019 13:42:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2A14D204DB;
	Fri,  2 Aug 2019 13:42:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8EBE01BF343
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 13:42:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8BC05885B6
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 13:42:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pr5Rp3M6-jMP for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 13:42:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 48D058854A
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 13:42:08 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F3CD021783
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 13:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564753328;
 bh=IoVEoGx+pEYcoHuGT3Isfjaes3VzXzDRPdkPqgazDLM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zT30hLyO1jmhDmKE1NnDJECwT2sFEMdbo1HDlbAC8lJ9jzKxPWYfdpfThS1OW12Tz
 MNVTOGsw3zn0EiaoB6tcG9UjaOEIRHNC6ue9gAmOSGcAO21puQn/YtfgtP794WcakJ
 NsOopJoUpjyuWvHhv63TsexZ0dEPspChJPSbqNNc=
Received: by mail-qk1-f181.google.com with SMTP id 201so54755636qkm.9
 for <devel@driverdev.osuosl.org>; Fri, 02 Aug 2019 06:42:07 -0700 (PDT)
X-Gm-Message-State: APjAAAVSdbFWWLUyRSLI4Liv1ZOMXsrR2h/nAUexkLKvjP8K38CPALmi
 h3wXIZQxxtMwSHSdeLpUR9sGzIe0pqM9S/QFSw==
X-Google-Smtp-Source: APXvYqzh9QayLCLuHgtHUM1eNLwCwAQxG/HKTf+FKaaaC01Voz9ah9VQQp6jCTJOfLVn7WzMTpLB6/HdexydFuUZXew=
X-Received: by 2002:a37:6944:: with SMTP id e65mr83316126qkc.119.1564753327109; 
 Fri, 02 Aug 2019 06:42:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190802100304.15899-1-beniamin.bia@analog.com>
 <20190802100304.15899-3-beniamin.bia@analog.com>
In-Reply-To: <20190802100304.15899-3-beniamin.bia@analog.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 2 Aug 2019 07:41:54 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+ip4rOkCdob0JhM01Yjz_eb1wtyy4OC1sTjo1w4OtRbA@mail.gmail.com>
Message-ID: <CAL_Jsq+ip4rOkCdob0JhM01Yjz_eb1wtyy4OC1sTjo1w4OtRbA@mail.gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: iio: adc: Migrate AD7606 documentation
 to yaml
To: Beniamin Bia <beniamin.bia@analog.com>
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
Cc: devel@driverdev.osuosl.org, Mark Rutland <mark.rutland@arm.com>,
 Lars-Peter Clausen <lars@metafoo.de>, biabeniamin@outlook.com,
 Michael Hennerich <Michael.Hennerich@analog.com>, devicetree@vger.kernel.org,
 "open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Peter Meerwald <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpLCBBdWcgMiwgMjAxOSBhdCA0OjAzIEFNIEJlbmlhbWluIEJpYSA8YmVuaWFtaW4uYmlh
QGFuYWxvZy5jb20+IHdyb3RlOgo+Cj4gVGhlIGRvY3VtZW50YXRpb24gZm9yIGFkNzYwNiB3YXMg
bWlncmF0ZWQgdG8geWFtbCwgdGhlIG5ldyBMaW51eCBLZXJuZWwKPiBzdGFuZGFyZC4KCkRpZCB5
b3UgZm9yZ2V0IHRvIGRlbGV0ZSB0aGUgb2xkIGZpbGU/CgpJdCdzIGEgRFQsIG5vdCBrZXJuZWwg
c3RhbmRhcmQgcmVhbGx5LgoKPgo+IFNpZ25lZC1vZmYtYnk6IEJlbmlhbWluIEJpYSA8YmVuaWFt
aW4uYmlhQGFuYWxvZy5jb20+Cj4gLS0tCj4gIC4uLi9iaW5kaW5ncy9paW8vYWRjL2FkaSxhZDc2
MDYueWFtbCAgICAgICAgICB8IDEzNCArKysrKysrKysrKysrKysrKysKPiAgTUFJTlRBSU5FUlMg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAyICstCj4gIDIgZmlsZXMgY2hh
bmdlZCwgMTM1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9paW8vYWRjL2FkaSxhZDc2MDYu
eWFtbAo+Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9p
aW8vYWRjL2FkaSxhZDc2MDYueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9paW8vYWRjL2FkaSxhZDc2MDYueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXgg
MDAwMDAwMDAwMDAwLi41MDlkYmU5Yzg0ZDIKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lpby9hZGMvYWRpLGFkNzYwNi55YW1sCj4gQEAg
LTAsMCArMSwxMzQgQEAKPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICsl
WUFNTCAxLjIKPiArLS0tCj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvaWlv
L2FkYy9hZGksYWQ3NjA2LnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9t
ZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IEFuYWxvZyBEZXZpY2VzIEFENzYw
NiBTaW11bHRhbmVvdXMgU2FtcGxpbmcgQURDCj4gKwo+ICttYWludGFpbmVyczoKPiArICAtIEJl
bmlhbWluIEJpYSA8YmVuaWFtaW4uYmlhQGFuYWxvZy5jb20+Cj4gKyAgLSBTdGVmYW4gUG9wYSA8
c3RlZmFuLnBvcGFAYW5hbG9nLmNvbT4KPiArCj4gK2Rlc2NyaXB0aW9uOiB8Cj4gKyAgQW5hbG9n
IERldmljZXMgQUQ3NjA2IFNpbXVsdGFuZW91cyBTYW1wbGluZyBBREMKPiArICBodHRwczovL3d3
dy5hbmFsb2cuY29tL21lZGlhL2VuL3RlY2huaWNhbC1kb2N1bWVudGF0aW9uL2RhdGEtc2hlZXRz
L2FkNzYwNl83NjA2LTZfNzYwNi00LnBkZgo+ICsgIGh0dHBzOi8vd3d3LmFuYWxvZy5jb20vbWVk
aWEvZW4vdGVjaG5pY2FsLWRvY3VtZW50YXRpb24vZGF0YS1zaGVldHMvQUQ3NjE2LnBkZgo+ICsK
PiArcHJvcGVydGllczoKPiArICBjb21wYXRpYmxlOgo+ICsgICAgZW51bToKPiArICAgICAgLSBh
ZGksYWQ3NjA1LTQKPiArICAgICAgLSBhZGksYWQ3NjA2LTgKPiArICAgICAgLSBhZGksYWQ3NjA2
LTYKPiArICAgICAgLSBhZGksYWQ3NjA2LTQKPiArICAgICAgLSBhZGksYWQ3NjE2Cj4gKwo+ICsg
IHJlZzoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIHNwaS1jcGhhOiB0cnVlCj4gKwo+ICsg
IGF2Y2Mtc3VwcGx5Ogo+ICsgICAgZGVzY3JpcHRpb246Cj4gKyAgICAgIFBoYW5kbGUgdG8gdGhl
IEF2Y2MgcG93ZXIgc3VwcGx5Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArICBpbnRlcnJ1cHRz
Ogo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gKyAgYWRpLGNvbnZlcnNpb24tc3RhcnQtZ3Bpb3M6
Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgTXVzdCBiZSB0aGUgZGV2aWNlIHRyZWUgaWRl
bnRpZmllciBvZiB0aGUgQ09OVlNUIHBpbi4KPiArICAgICAgVGhpcyBsb2dpYyBpbnB1dCBpcyB1
c2VkIHRvIGluaXRpYXRlIGNvbnZlcnNpb25zIG9uIHRoZSBhbmFsb2cKPiArICAgICAgaW5wdXQg
Y2hhbm5lbHMuIEFzIHRoZSBsaW5lIGlzIGFjdGl2ZSBoaWdoLCBpdCBzaG91bGQgYmUgbWFya2Vk
Cj4gKyAgICAgIEdQSU9fQUNUSVZFX0hJR0guCj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArICBy
ZXNldC1ncGlvczoKPiArICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICBNdXN0IGJlIHRoZSBkZXZp
Y2UgdHJlZSBpZGVudGlmaWVyIG9mIHRoZSBSRVNFVCBwaW4uIElmIHNwZWNpZmllZCwKPiArICAg
ICAgaXQgd2lsbCBiZSBhc3NlcnRlZCBkdXJpbmcgZHJpdmVyIHByb2JlLiBBcyB0aGUgbGluZSBp
cyBhY3RpdmUgaGlnaCwKPiArICAgICAgaXQgc2hvdWxkIGJlIG1hcmtlZCBHUElPX0FDVElWRV9I
SUdILgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gKyAgc3RhbmRieS1ncGlvczoKPiArICAgIGRl
c2NyaXB0aW9uOgo+ICsgICAgICAgTXVzdCBiZSB0aGUgZGV2aWNlIHRyZWUgaWRlbnRpZmllciBv
ZiB0aGUgU1RCWSBwaW4uIFRoaXMgcGluIGlzIHVzZWQKPiArICAgICAgIHRvIHBsYWNlIHRoZSBB
RDc2MDYgaW50byBvbmUgb2YgdHdvIHBvd2VyLWRvd24gbW9kZXMsIFN0YW5kYnkgbW9kZSBvcgo+
ICsgICAgICAgU2h1dGRvd24gbW9kZS4gQXMgdGhlIGxpbmUgaXMgYWN0aXZlIGxvdywgaXQgc2hv
dWxkIGJlIG1hcmtlZAo+ICsgICAgICAgR1BJT19BQ1RJVkVfTE9XLgo+ICsgICAgbWF4SXRlbXM6
IDEKPiArCj4gKyAgYWRpLGZpcnN0LWRhdGEtZ3Bpb3M6Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiAr
ICAgICAgTXVzdCBiZSB0aGUgZGV2aWNlIHRyZWUgaWRlbnRpZmllciBvZiB0aGUgRlJTVERBVEEg
cGluLgo+ICsgICAgICBUaGUgRlJTVERBVEEgb3V0cHV0IGluZGljYXRlcyB3aGVuIHRoZSBmaXJz
dCBjaGFubmVsLCBWMSwgaXMKPiArICAgICAgYmVpbmcgcmVhZCBiYWNrIG9uIGVpdGhlciB0aGUg
cGFyYWxsZWwsIGJ5dGUgb3Igc2VyaWFsIGludGVyZmFjZS4KPiArICAgICAgQXMgdGhlIGxpbmUg
aXMgYWN0aXZlIGhpZ2gsIGl0IHNob3VsZCBiZSBtYXJrZWQgR1BJT19BQ1RJVkVfSElHSC4KPiAr
ICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIGFkaSxyYW5nZS1ncGlvczoKPiArICAgIGRlc2NyaXB0
aW9uOgo+ICsgICAgICBNdXN0IGJlIHRoZSBkZXZpY2UgdHJlZSBpZGVudGlmaWVyIG9mIHRoZSBS
QU5HRSBwaW4uIFRoZSBwb2xhcml0eSBvbgo+ICsgICAgICB0aGlzIHBpbiBkZXRlcm1pbmVzIHRo
ZSBpbnB1dCByYW5nZSBvZiB0aGUgYW5hbG9nIGlucHV0IGNoYW5uZWxzLiBJZgo+ICsgICAgICB0
aGlzIHBpbiBpcyB0aWVkIHRvIGEgbG9naWMgaGlnaCwgdGhlIGFuYWxvZyBpbnB1dCByYW5nZSBp
cyDCsTEwViBmb3IKPiArICAgICAgYWxsIGNoYW5uZWxzLiBJZiB0aGlzIHBpbiBpcyB0aWVkIHRv
IGEgbG9naWMgbG93LCB0aGUgYW5hbG9nIGlucHV0IHJhbmdlCj4gKyAgICAgIGlzIMKxNVYgZm9y
IGFsbCBjaGFubmVscy4gQXMgdGhlIGxpbmUgaXMgYWN0aXZlIGhpZ2gsIGl0IHNob3VsZCBiZSBt
YXJrZWQKPiArICAgICAgR1BJT19BQ1RJVkVfSElHSC4KPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+
ICsgIGFkaSxvdmVyc2FtcGxpbmctcmF0aW8tZ3Bpb3M6Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiAr
ICAgICAgTXVzdCBiZSB0aGUgZGV2aWNlIHRyZWUgaWRlbnRpZmllciBvZiB0aGUgb3Zlci1zYW1w
bGluZwo+ICsgICAgICBtb2RlIHBpbnMuIEFzIHRoZSBsaW5lIGlzIGFjdGl2ZSBoaWdoLCBpdCBz
aG91bGQgYmUgbWFya2VkCj4gKyAgICAgIEdQSU9fQUNUSVZFX0hJR0guCj4gKyAgICBtYXhJdGVt
czogMQo+ICsKPiArICBhZGksc3ctbW9kZToKPiArICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICBT
b2Z0d2FyZSBtb2RlIG9mIG9wZXJhdGlvbiwgc28gZmFyIGF2YWlsYWJsZSBvbmx5IGZvciBhZDc2
MTYuCj4gKyAgICAgIEl0IGlzIGVuYWJsZWQgd2hlbiBhbGwgdGhyZWUgb3ZlcnNhbXBsaW5nIG1v
ZGUgcGlucyBhcmUgY29ubmVjdGVkIHRvCj4gKyAgICAgIGhpZ2ggbGV2ZWwuIFRoZSBkZXZpY2Ug
aXMgY29uZmlndXJlZCBieSB0aGUgY29ycmVzcG9uZGluZyByZWdpc3RlcnMuIElmIHRoZQo+ICsg
ICAgICBhZGksb3ZlcnNhbXBsaW5nLXJhdGlvLWdwaW9zIHByb3BlcnR5IGlzIGRlZmluZWQsIHRo
ZW4gdGhlIGRyaXZlciB3aWxsIHNldCB0aGUKPiArICAgICAgb3ZlcnNhbXBsaW5nIGdwaW9zIHRv
IGhpZ2guIE90aGVyd2lzZSwgaXQgaXMgYXNzdW1lZCB0aGF0IHRoZSBwaW5zIGFyZSBoYXJkd2ly
ZWQKPiArICAgICAgdG8gVkRELgo+ICsgICAgbWF4SXRlbXM6IDEKPiArICAgIHR5cGU6IGJvb2xl
YW4KPiArCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0aWJsZQo+ICsgIC0gcmVnCj4gKyAgLSBz
cGktY3BoYQo+ICsgIC0gYXZjYy1zdXBwbHkKPiArICAtIGludGVycnVwdHMKPiArICAtIGFkaSxj
b252ZXJzaW9uLXN0YXJ0LWdwaW9zCj4gKwo+ICtleGFtcGxlczoKPiArICAtIHwKPiArICAgIHNw
aTAgewo+ICsgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsgICAgICAgICNzaXplLWNl
bGxzID0gPDA+Owo+ICsKPiArICAgICAgICBhZGNAMCB7Cj4gKyAgICAgICAgICAgICAgICBjb21w
YXRpYmxlID0gImFkaSxhZDc2MDYtOCI7Cj4gKyAgICAgICAgICAgICAgICByZWcgPSA8MD47Cj4g
KyAgICAgICAgICAgICAgICBzcGktbWF4LWZyZXF1ZW5jeSA9IDwxMDAwMDAwPjsKPiArICAgICAg
ICAgICAgICAgIHNwaS1jcG9sOwo+ICsKPiArICAgICAgICAgICAgICAgIGF2Y2Mtc3VwcGx5ID0g
PCZhZGNfdnJlZj47Cj4gKwo+ICsgICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDwyNSBJUlFf
VFlQRV9FREdFX0ZBTExJTkc+Owo+ICsgICAgICAgICAgICAgICAgaW50ZXJydXB0LXBhcmVudCA9
IDwmZ3Bpbz47Cj4gKwo+ICsgICAgICAgICAgICAgICAgYWRpLGNvbnZlcnNpb24tc3RhcnQtZ3Bp
b3MgPSA8JmdwaW8gMTcgR1BJT19BQ1RJVkVfSElHSD47Cj4gKyAgICAgICAgICAgICAgICByZXNl
dC1ncGlvcyA9IDwmZ3BpbyAyNyBHUElPX0FDVElWRV9ISUdIPjsKPiArICAgICAgICAgICAgICAg
IGFkaSxmaXJzdC1kYXRhLWdwaW9zID0gPCZncGlvIDIyIEdQSU9fQUNUSVZFX0hJR0g+Owo+ICsg
ICAgICAgICAgICAgICAgYWRpLG92ZXJzYW1wbGluZy1yYXRpby1ncGlvcyA9IDwmZ3BpbyAxOCBH
UElPX0FDVElWRV9ISUdICj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICZncGlvIDIzIEdQSU9fQUNUSVZFX0hJR0gKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmdwaW8gMjYgR1BJT19BQ1RJVkVfSElHSD47
Cj4gKyAgICAgICAgICAgICAgICBzdGFuZGJ5LWdwaW9zID0gPCZncGlvIDI0IEdQSU9fQUNUSVZF
X0xPVz47Cj4gKyAgICAgICAgICAgICAgICBhZGksc3ctbW9kZTsKPiArICAgICAgICB9Owo+ICsg
ICAgfTsKPiArLi4uCj4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMKPiBp
bmRleCAwNTJkN2E4NTkxZmIuLmQyZTQ2NTc3MjA3MSAxMDA2NDQKPiAtLS0gYS9NQUlOVEFJTkVS
Uwo+ICsrKyBiL01BSU5UQUlORVJTCj4gQEAgLTkwMCw3ICs5MDAsNyBAQCBMOiAgbGludXgtaWlv
QHZnZXIua2VybmVsLm9yZwo+ICBXOiAgICAgaHR0cDovL2V6LmFuYWxvZy5jb20vY29tbXVuaXR5
L2xpbnV4LWRldmljZS1kcml2ZXJzCj4gIFM6ICAgICBTdXBwb3J0ZWQKPiAgRjogICAgIGRyaXZl
cnMvaWlvL2FkYy9hZDc2MDYuYwo+IC1GOiAgICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2lpby9hZGMvYWRpLGFkNzYwNi50eHQKPiArRjogICAgIERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9paW8vYWRjL2FkaSxhZDc2MDYueWFtbAo+Cj4gIEFOQUxPRyBERVZJ
Q0VTIElOQyBBRDc3NjgtMSBEUklWRVIKPiAgTTogICAgIFN0ZWZhbiBQb3BhIDxzdGVmYW4ucG9w
YUBhbmFsb2cuY29tPgo+IC0tCj4gMi4xNy4xCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
