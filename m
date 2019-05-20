Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A27023127
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 12:18:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 74AF580EC3;
	Mon, 20 May 2019 10:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WxTZ9C58-bI3; Mon, 20 May 2019 10:18:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3DD4785264;
	Mon, 20 May 2019 10:18:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 04A551BF31E
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 10:18:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 00E82852D5
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 10:18:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GeddmQyJmG8R for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 10:18:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5610585264
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 10:18:05 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id u11so12443992otq.7
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 03:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gXwsAJO0tts828Qbued5BPG7sund0+mXZJvWOgHS3vY=;
 b=iQAITR2y2ALK+DXNVCDoxbPn/16kG/IHjlbxCktgfcJNl3XRt2ANdnqTcmOPzmiyRx
 yXCEUxVVY1AxgcNc47ZyWl6Vs9NKKXUG6JKcv0d3259jZNud3yZGuBlerBbVQIwZbyO3
 XJqOUSu3CXfkkIssP/9Eb8rgAXX0AijpE1E2ywHdyHRLXRFFrg+qhI36pxTMhrYFbDlO
 +DrnMKW4jpr8b1GkxgDAiR00f6M8CA9ayBO46IfzmSHV+YqO5wd1XCbX2Ku0xS17pYac
 g0ryZOuCKK/P/Nt5Bx0/vq+BZDUei0kkAk8KDBahsze3Qw+mTnySlp7cr8Ndf3JCd6SW
 2SMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gXwsAJO0tts828Qbued5BPG7sund0+mXZJvWOgHS3vY=;
 b=WlY75n5HoC1NxBVHmTL8+rW+k1TMiet4ghT6iptS1bliTIWLM2oBBn+0DW+LRGo3Kh
 zxJsT7aA5c7/niqqFRQAHmIz8czsSICgI0+ipQTcIYWnznVnZleYQ2OQa44+ZGOnmIVC
 bvdEWbfVJr8GFHfSjp4pJKPUw0jezSWGEYnqEbW36NCXo+ThxY+wVsdWd/P8DmlcIx7/
 aXKC7mdS5gMrlFBhxJjyGxo29fi+wG2g0BXCnRjmD+6qI4QGUvr+ejERqTLKpd6GqfH5
 MKuUA1bNo4rUcmINFM4SPvF56kLxiwkMBHoOYlVRZuKrDOpmuP0AMh/yefHgBkis5evT
 MwBg==
X-Gm-Message-State: APjAAAWkbyiEGto6o7hNdsexaB8eNrrrLLnBgq4WSZyB7ioGJ9e4GLso
 4avJXXKcIhoUZMDAQ1rpQSSiFy6G76YXQ6Aqnh/Px32KfvzX8w==
X-Google-Smtp-Source: APXvYqx7pLD341rUTybvnarwr59FGhzs0WWXDMkINehHblzHMzqOx8qCzoVTCfM8JUX/BB/ldjQ4+ERk7eqLLRsEDDs=
X-Received: by 2002:a05:6830:1386:: with SMTP id
 d6mr14534603otq.149.1558347484552; 
 Mon, 20 May 2019 03:18:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190518221558.21799-1-tallysmartins@gmail.com>
 <20190518221558.21799-2-tallysmartins@gmail.com>
 <20190519121747.0e7b5824@archlinux>
In-Reply-To: <20190519121747.0e7b5824@archlinux>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Mon, 20 May 2019 13:17:53 +0300
Message-ID: <CA+U=DsqCpBrOoZR0HcQVO6B3TVtsF=rC3DHcLLh8isj7i=dpwg@mail.gmail.com>
Subject: Re: [PATCH 2/2] staging: iio: ad2s1210: Add devicetree yaml doc
To: Jonathan Cameron <jic23@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Tallys Martins <tallysmartins@gmail.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Souza Guilherme <gdsdsilva@inf.ufpel.edu.br>, kernel-usp@googlegroups.com,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 LKML <linux-kernel@vger.kernel.or>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU3VuLCBNYXkgMTksIDIwMTkgYXQgODoxOCBQTSBKb25hdGhhbiBDYW1lcm9uIDxqaWMyM0Br
ZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIFNhdCwgMTggTWF5IDIwMTkgMTk6MTU6NTggLTAzMDAK
PiBUYWxseXMgTWFydGlucyA8dGFsbHlzbWFydGluc0BnbWFpbC5jb20+IHdyb3RlOgo+CgpDQy1p
bmcgbXkgd29yay1lbWFpbApUaGVyZSBhcmUgc29tZSBpc3N1ZXMgd2l0aCBpdCBhbmQgbWFpbGlu
ZyBsaXN0czsgSSdsbCBob3BlZnVsbHkgc29ydAp0aGVtIG91dCBpbiB0aGUgbmV4dCB3ZWVrcy4K
Cj4gPiBUaGUgZHJpdmVyIGN1cnJlbnRseSBoYXMgbm8gZGV2aWNldHJlZSBkb2N1bWVudGF0aW9u
LiBUaGlzIGNvbW1pdCBhZGRzIGEKPiA+IGRldmljZXRyZWUgZm9sZGVyIGFuZCBkb2N1bWVudGF0
aW9uIGZvciBpdC4gRG9jdW1lbnRhdGlvbiBtdXN0IGJlIG1vdmVkCj4gPiBhcyB3ZWxsIHdoZW4g
dGhlIGRyaXZlciBnZXRzIG91dCBvZiBzdGFnaW5nLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFRh
bGx5cyBNYXJ0aW5zIDx0YWxseXNtYXJ0aW5zQGdtYWlsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6
IFNvdXphIEd1aWxoZXJtZSA8Z2RzZHNpbHZhQGluZi51ZnBlbC5lZHUuYnI+Cj4gPiBDby1kZXZl
bG9wZWQtYnk6IFNvdXphIEd1aWxoZXJtZSA8Z2RzZHNpbHZhQGluZi51ZnBlbC5lZHUuYnI+Cj4K
PiBIaSwKPgo+IFRoZXJlIGlzIG5vIG5lZWQgZm9yIGEgZGlyZWN0IHJlbGF0aW9uc2hpcCBiZXR3
ZWVuIGEgYmluZGluZyBhbmQgYSBkcml2ZXIKPiBhdCBhbGwuIEFzIHN1Y2gsIHdlIG5vcm1hbGx5
IGRvbid0IHRha2UgYmluZGluZyBkb2N1bWVudHMgaW4gc3RhZ2luZy4KPgo+IEp1c3QgcHV0IGl0
IGRpcmVjdGx5IGluIGl0J3MgZmluYWwgZGVzdGluYXRpb24uICBUaGUgZHJpdmVyIGNhbiBjYXRj
aAo+IHVwIHdpdGggaXQgbGF0ZXIhCj4KPiBJJ20gc3RpbGwgbm90IHRoYXQgY29tZm9ydGFibGUg
d2l0aCB5YW1sIChoYXZlbid0IGdvdHRlbiBhcm91bmQKPiB0byBkb2luZyBhbnkgY29udmVyc2lv
bnMgbXlzZWxmIHlldCkgc28gSSdsbCBiZSBsb29raW5nIGZvciBhZGRpdGlvbmFsCj4gcmV2aWV3
IG9uIHRoZXNlIGZyb20gb3RoZXJzLgoKUGVyc29uYWwgbm90ZTogSSBhbHNvIGRvbid0IGxpa2Ug
WUFNTCwgYnV0IHRoYXQgbWF5IGJlIG1lIGZlZWxpbmcgb2xkLgpJJ20gbm90IHRoYXQgb2xkIHRv
IHByZWZlciBYTUwsIGJ1dCBvbGQgZW5vdWdoIHRvIHByZWZlciBKU09OLgpJIGFtIHN0aWxsIHRy
eWluZyB0byBhY2NvbW1vZGF0ZSBteSB0YXN0ZS9mZWVsaW5nIGZvciB0aGUgZm9ybWF0LCBldmVu
CnRob3VnaCBJJ3ZlIGJlZW4gdXNpbmcgaXQgc3BvcmFkaWNhbGx5IGZvciB+NSB5ZWFycyBub3cg
aW4gdmFyaW91cwpvdGhlciBlbGVtZW50cy4KVHJhdmlzLUNJIG1heSBiZSB0aGUgYmlnZ2VzdCB1
c2VyIG9mIGl0LgpMb29rcyBsaWtlIFJ1YnkgdXNlcnMgd2VyZSB0aGUgYmlnZ2VzdCBwdXNoZXJz
L2luaXRpYXRvcnMgb2YgWUFNTCwgYW5kClB5dGhvbiBwZW9wbGUgc2VlbSB0byBoYXZlIGp1bXBl
ZCBpbiBzaG9ydGx5IGFmdGVyLgoKT2ggd2VsbDogwq9cXyjjg4QpXy/CrwoKPgo+IEEgZmV3IGNv
bW1lbnRzIGlubGluZS4KPgo+ID4gLS0tCj4gPiAgLi4uL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9hZDJzMTIxMC55YW1sICAgIHwgNDEgKysrKysrKysrKysrKysrKysrKwo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCA0MSBpbnNlcnRpb25zKCspCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMv
c3RhZ2luZy9paW8vRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2FkMnMxMjEwLnlhbWwKCk1heWJl
IGFsc28gcmVtb3ZlIHRoZSBvbGQgdHh0IGJpbmRpbmcgaWYgYWRkaW5nIHRoaXMgbmV3IG9uZS4K
Tm8gbmVlZCB0byBrZWVwIHRoZW0gYm90aC4KCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy9paW8vRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2FkMnMxMjEwLnlhbWwgYi9kcml2
ZXJzL3N0YWdpbmcvaWlvL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9hZDJzMTIxMC55YW1sCj4g
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi43MzNhYTA3YjQ2
MjYKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9paW8vRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2FkMnMxMjEwLnlhbWwKPiA+IEBAIC0wLDAgKzEsNDEgQEAKPiA+
ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gPiArJVlBTUwgMS4yCj4gPiAr
LS0tCj4gPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9paW8vaWlvL2FkMnMx
MjEwLnlhbWwjCj4gPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1h
cy9jb3JlLnlhbWwjCj4gPiArCj4gPiArdGl0bGU6IHwKPiA+ICsgIEFuYWxvZyBEZXZpY2VzIElu
Yy4gQUQyUzEyMTAgMTAtQml0IHRvIDE2LUJpdCBSL0QgQ29udmVydGVycwo+ID4gKwo+ID4gK21h
aW50YWluZXJzOgo+ID4gKyAgLSBHcmFmZiBZYW5nIDxncmFmZi55YW5nQGdtYWlsLmNvbT4KPiBJ
IHdvdWxkIGNoZWNrIHRoYXQgb25lIHdpdGggdGhlIEFuYWxvZyBkZXZpY2VzIHRlYW0uCgpJIGd1
ZXNzLCBhZGQgKGhlcmUpOgpNaWNoYWVsIEhlbm5lcmljaCA8bWljaGFlbC5oZW5uZXJpY2hAYW5h
bG9nLmNvbT4KCj4KPiA+ICsKPiA+ICtkZXNjcmlwdGlvbjogfAo+ID4gKyAgQW5hbG9nIERldmlj
ZXMgQUQyUzEyMTAgUmVzb2x2ZXIgdG8gRGlnaXRhbCBTUEkgZHJpdmVyCj4gPiArCj4gPiArICBo
dHRwczovL3d3dy5hbmFsb2cuY29tL2VuL3Byb2R1Y3RzL2FkMnMxMjEwLmh0bWwKPiA+ICsKPiA+
ICtwcm9wZXJ0aWVzOgo+ID4gKyAgY29tcGF0aWJsZToKPiA+ICsgICAgZW51bToKPiA+ICsgICAg
ICAtIGFkaSxhZDJzMTIxMAoKVGhlc2UgMiBhcmUgcmVxdWlyZWQgaGVyZSwgc2luY2UgdGhpcyBj
aGlwIG9wZXJhdGVzIGluIFNQSSBtb2RlIDMuCgpzcGktY3BoYTogIHRydWUKCnNwaS1jcG9sOiB0
cnVlCgpBbHNvLCBmcm9tIHRoZSBkcml2ZXIsIHNvbWUgR1BJT3Mgc2hvdWxkIGFsc28gYmUgZG9j
dW1lbnRlZDoKCnN0YXRpYyBjb25zdCBzdHJ1Y3QgYWQyczEyMTBfZ3BpbyBncGlvc1tdID0gewog
ICAgICAgIFtBRDJTMTIxMF9TQU1QTEVdID0geyAubmFtZSA9ICJhZGksc2FtcGxlIiwgLmZsYWdz
ID0gR1BJT0RfT1VUX0xPVyB9LAogICAgICAgIFtBRDJTMTIxMF9BMF0gPSB7IC5uYW1lID0gImFk
aSxhMCIsIC5mbGFncyA9IEdQSU9EX09VVF9MT1cgfSwKICAgICAgICBbQUQyUzEyMTBfQTFdID0g
eyAubmFtZSA9ICJhZGksYTEiLCAuZmxhZ3MgPSBHUElPRF9PVVRfTE9XIH0sCiAgICAgICAgW0FE
MlMxMjEwX1JFUzBdID0geyAubmFtZSA9ICJhZGkscmVzMCIsIC5mbGFncyA9IEdQSU9EX09VVF9M
T1cgfSwKICAgICAgICBbQUQyUzEyMTBfUkVTMV0gPSB7IC5uYW1lID0gImFkaSxyZXMxIiwgLmZs
YWdzID0gR1BJT0RfT1VUX0xPVyB9LAp9OwoKU28sCgphZGksc2FtcGxlLWdwaW9zOgphZGksYTAt
Z3Bpb3M6CmFkaSxhMS1ncGlvczoKYWRpLHJlczAtZ3Bpb3M6CmFkaSxyZXMxMC1ncGlvczoKClRo
ZXNlIGFsc28gbG9vayBsaWtlIHRoZXkgYXJlIHJlcXVpcmVkLgoKPiA+ICsKPiA+ICsgIHJlZzoK
PiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ICsKPiA+ICsgIGNsb2NrLWZyZXF1ZW5jeToKPiA+ICsg
ICAgbWluaW11bTogMjAwMAo+ID4gKyAgICBtYXhpbXVtOiAyMDAwMAo+ID4gKyAgICBkZWZhdWx0
OiA4MTkyCj4gVGhpcyBkb2Vzbid0IGxvb2sgbGlrZSBhIG1vZGVybiBjbG9jayBiaW5kaW5nLgo+
IElmIHdlIGFyZSBnb2luZyB0byBlbmQgdXAgY2hhbmdpbmcgdGhpcywgdGhlbiB3ZSBzaG91bGQg
cHJvYmFibHkgZGVsYXkKPiBoYXZpbmcgYSBiaW5kaW5nIGRvYyB1bnRpbCBhZnRlciB0aGF0IGNo
YW5nZSBpcyBtYWRlLgo+Cj4gV2Ugb2Z0ZW4gb25seSBkbyBiaW5kaW5nIGRvY3MgZm9yIGRyaXZl
cnMgaW4gc3RhZ2luZyBqdXN0IGJlZm9yZSBtb3ZpbmcKPiB0aGVtIG91dCBzbyBhcyB0byBhdm9p
ZCB0aGlzIHNvcnQgb2YgaXNzdWUuCgpUaGVzZSBjbG9jayBwcm9wZXJ0aWVzIGFyZSBub3QgbmVl
ZGVkIGhlcmUuCgo+Cj4gPiArCj4gPiArcmVxdWlyZWQ6Cj4gPiArICAtIGNvbXBhdGlibGUKPiA+
ICsgIC0gcmVnCj4gPiArCj4gPiArZXhhbXBsZXM6Cj4gPiArICAtIHwKPiA+ICsgIHJlc29sdmVy
QDAgewo+ID4gKyAgICBjb21wYXRpYmxlID0gImFkaSxhZDJzMTIxMCI7Cj4gPiArICAgIHJlZyA9
IDwwPjsKPiBBbiBleGFtcGxlIGlzIHByb2JhYmx5IG1vcmUgdXNlZnVsIGlmIGl0IGluY2x1ZGVz
IGFsbCB0aGUgb3B0aW9uYWwgcHJvcGVydGllcwo+IGFzIHdlbGwuCgpUaGlzIHNob3VsZCBhbHNv
IGJlIGluY2x1ZGVkIGluIGFuIHNwaSBibG9jazoKU286CgpzcGkwIHsKICAgICAgIHJlc29sdmVy
QDAgewogICAgICAgICAgICBjb21wYXRpYmxlID0gImFkaSxhZDJzMTIxMCI7CiAgICAgICAgICAg
IHJlZyA9IDwwPjsKICAgICAgICAgICAgc3BpLWNwaGE7CiAgICAgICAgICAgIHNwaS1jcG9sOwog
ICAgICAgICAgICAvLyBhbmQgdGhlbiB0aGUgYWRpLCoqKi1ncGlvcyBJIHRoaW5rIGhlcmUKICAg
ICAgIH07Cn07CgpJIGRvbid0IHRoaW5rIG11Y2ggbW9yZS1lbHNlIGlzIG5lZWRlZCBmb3IgdGhp
cyBkcml2ZXIuCgo+ID4gKyAgfTsKPiA+ICsuLi4KPgo+IFRoYW5rcywKPgo+IEpvbmF0aGFuCj4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
