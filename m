Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9E8219576
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jul 2020 02:59:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 556A8220CA;
	Thu,  9 Jul 2020 00:59:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UxvSUKh1nxeq; Thu,  9 Jul 2020 00:59:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ED42B220DF;
	Thu,  9 Jul 2020 00:59:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C0AA1BF21A
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 00:59:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 08BDF87D70
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 00:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T_lm0MJS1914 for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 00:59:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com
 [209.85.219.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C5B5B87D4C
 for <devel@driverdev.osuosl.org>; Thu,  9 Jul 2020 00:59:37 +0000 (UTC)
Received: by mail-qv1-f67.google.com with SMTP id t11so254007qvk.1
 for <devel@driverdev.osuosl.org>; Wed, 08 Jul 2020 17:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=Lwy/TUmMO5Z/1GlX8cJ31apZHSAxwS7d7SzRutu1MJ0=;
 b=ET/M19TQjjEkmefFj2CMQwprybD/BLQRr97CSRxnIaNeqxpWggWTX79xfT98AbQksA
 Itn1U3XblGbyN5j01FOIE4COxzij3/ecEXBQ28/B3+CkSLP6156pYvXrcd9CPuCCrBf8
 n0mDyma6G/7AKmGDpNpG26QB2tYJpdGGDyjw5QnUSGIHsgk0KzHNRGSYODCLhHp9Botr
 CYYMkVsktfwHvdQP20FXID0+qLH/uu6vuahRLeJp0cwqJ9cUy/pOJwRPdRx1rm0mrVcs
 Q3bAcXL4kZRewbwjGVA2WDWRgVSfv/FkqzbwSk7U4je+rx/wZK5QqNKnHREnvbRWQbyC
 SCSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=Lwy/TUmMO5Z/1GlX8cJ31apZHSAxwS7d7SzRutu1MJ0=;
 b=lhS9BZ5+naUzyQ4HXlAai/BBEguIoHmleToAuUE3GDCGfRtjdTYTQTLRQJU5Hk72zo
 fT+hmwQaBkoEk2mCC4FHdbfiqG0hEIORT1WobzNeby+ZV4GDx0h3nv3c3vtvfaWy4zH3
 TUBxHz+dO+kjCVrmMs/zRtF6GBYytVZkdqdI1ODfwXxd5tfkGBmZz6uNeLGAYOH8687t
 G6/ts/0ybRChF/3FSVtI04D9+WJ4L1SkgyYgrQ1IA8h0007XJaQwuQbIRS0KjrmIn91D
 oTIjtgh/TraTffuNEi9pwR3kKvkay3kv+LQFcAoJWxpkiBywJpHRDGkUo4dIlijyeKfS
 J/Aw==
X-Gm-Message-State: AOAM532SvCaQUqY9m8HK9XfC4hFFWR1kTzAdSYF7qzf/tmdg1hOrSugO
 gAqkUJnDNqRbtkspnAruDeuTpA==
X-Google-Smtp-Source: ABdhPJy0dhosaYd4+tncZ23pF3TfazXsuH+2tE7yu4vVoTb7EieibAGJOCdi09ESkIvxyCpS/aQFVA==
X-Received: by 2002:ad4:57c7:: with SMTP id y7mr61409102qvx.124.1594256376656; 
 Wed, 08 Jul 2020 17:59:36 -0700 (PDT)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id g17sm1593649qto.73.2020.07.08.17.59.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jul 2020 17:59:35 -0700 (PDT)
Message-ID: <f485930bb8d8a5506e9ffd6804d08945920fce61.camel@ndufresne.ca>
Subject: Re: [PATCH 1/3] media: uapi: h264: update reference lists
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jernej =?UTF-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>, Ezequiel
 Garcia <ezequiel@vanguardiasur.com.ar>
Date: Wed, 08 Jul 2020 20:59:34 -0400
In-Reply-To: <3602665.eG79kSnugm@jernej-laptop>
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
 <20200604185745.23568-2-jernej.skrabec@siol.net>
 <CAAEAJfAx4=RGJBVPccVFNYxNUqom7tkQD=J9oMfqajGxn6k+Zg@mail.gmail.com>
 <3602665.eG79kSnugm@jernej-laptop>
User-Agent: Evolution 3.36.3 (3.36.3-1.fc32) 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Jonas Karlman <jonas@kwiboo.se>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TGUgbWVyY3JlZGkgMDgganVpbGxldCAyMDIwIMOgIDE3OjU3ICswMjAwLCBKZXJuZWogxaBrcmFi
ZWMgYSDDqWNyaXQgOgo+IEhpIQo+IAo+IERuZSBzcmVkYSwgMDguIGp1bGlqIDIwMjAgb2IgMTU6
Mjg6NTIgQ0VTVCBqZSBFemVxdWllbCBHYXJjaWEgbmFwaXNhbChhKToKPiA+IEhlbGxvIEplcm5l
aiwKPiA+IAo+ID4gSSdkIGxpa2UgdG8gcG9zdCBhIG5ldyBIMjY0IHVBUEkgY2xlYW51cCBzZXJp
ZXMgc29vbiwKPiA+IHdvdWxkIHlvdSBtaW5kIHJlc2VuZGluZyB0aGlzLCBvciBvdGhlcndpc2Ug
ZG8geW91Cj4gPiBtaW5kIGlmIEkgaW5jbHVkZSB0aGlzIHBhdGNoIGluIHRoZSBzZXJpZXM/Cj4g
Cj4gSSBkb24ndCBtaW5kIGF0IGFsbC4gQ3VycmVudGx5IG15IGZvY3VzIHdhcyBlbHNld2hlcmUu
Li4KPiAKPiA+IFNlZSBiZWxvdyBmb3IgYSB0aW55IGNvbW1lbnQuCj4gPiAKPiA+IE9uIFRodSwg
NCBKdW4gMjAyMCBhdCAxNTo1NSwgSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wu
bmV0PiB3cm90ZToKPiA+ID4gV2hlbiBkZWFsaW5nIHdpdGggd2l0aCBpbnRlcmxhY2VkIGZyYW1l
cywgcmVmZXJlbmNlIGxpc3RzIG11c3QgdGVsbCBpZgo+ID4gPiBlYWNoIHBhcnRpY3VsYXIgcmVm
ZXJlbmNlIGlzIG1lYW50IGZvciB0b3Agb3IgYm90dG9tIGZpZWxkLiBUaGlzIGluZm8KPiA+ID4g
aXMgY3VycmVudGx5IG5vdCBwcm92aWRlZCBhdCBhbGwgaW4gdGhlIEgyNjQgcmVsYXRlZCBjb250
cm9scy4KPiA+ID4gCj4gPiA+IE1ha2UgcmVmZXJlbmNlIGxpc3RzIGhvbGQgYSBzdHJ1Y3R1cmUg
d2hpY2ggd2lsbCBhbHNvIGhvbGQgZmxhZ3MgYWxvbmcKPiA+ID4gaW5kZXggaW50byBEUEIgYXJy
YXkuIEZsYWdzIHdpbGwgdGVsbCBpZiByZWZlcmVuY2UgaXMgbWVhbnQgZm9yIHRvcCBvcgo+ID4g
PiBib3R0b20gZmllbGQuCj4gPiA+IAo+ID4gPiBDdXJyZW50bHkgdGhlIG9ubHkgdXNlciBvZiB0
aGVzZSBsaXN0cyBpcyBDZWRydXMgd2hpY2ggaXMganVzdCBjb21waWxlCj4gPiA+IGZpeGVkIGhl
cmUuIEFjdHVhbCB1c2FnZSBvZiBuZXdseSBpbnRyb2R1Y2VkIGZsYWdzIHdpbGwgY29tZSBpbgo+
ID4gPiBmb2xsb3dpbmcgY29tbWl0Lgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogSmVybmVq
IFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gPiAtLS0KPiA+ID4gCj4gPiA+
ICAuLi4vbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3QgICAgICAgICAgICAgfCA0MCArKysr
KysrKysrKysrKysrKystCj4gPiA+ICAuLi4vc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2Vk
cnVzX2gyNjQuYyAgfCAgNiArLS0KPiA+ID4gIGluY2x1ZGUvbWVkaWEvaDI2NC1jdHJscy5oICAg
ICAgICAgICAgICAgICAgICB8IDEyICsrKysrLQo+ID4gPiAgMyBmaWxlcyBjaGFuZ2VkLCA1MSBp
bnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdAo+
ID4gPiBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNv
ZGVjLnJzdCBpbmRleAo+ID4gPiBkMGQ1MDZhNDQ0YjEuLjZjMzZkMjk4ZGIyMCAxMDA2NDQKPiA+
ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMt
Y29kZWMucnN0Cj4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92
NGwvZXh0LWN0cmxzLWNvZGVjLnJzdAo+ID4gPiBAQCAtMTg0MywxMCArMTg0MywxMCBAQCBlbnVt
IHY0bDJfbXBlZ192aWRlb19oMjY0X2hpZXJhcmNoaWNhbF9jb2RpbmdfdHlwZQo+ID4gPiAtPiAK
PiA+ID4gICAgICAqIC0gX191MzIKPiA+ID4gICAgICAKPiA+ID4gICAgICAgIC0gYGBzbGljZV9n
cm91cF9jaGFuZ2VfY3ljbGVgYAo+ID4gPiAgICAgICAgLQo+ID4gPiAKPiA+ID4gLSAgICAqIC0g
X191OAo+ID4gPiArICAgICogLSBzdHJ1Y3QgOmM6dHlwZTpgdjRsMl9oMjY0X3JlZmVyZW5jZWAK
PiA+ID4gCj4gPiA+ICAgICAgICAtIGBgcmVmX3BpY19saXN0MFszMl1gYAo+ID4gPiAgICAgICAg
LSBSZWZlcmVuY2UgcGljdHVyZSBsaXN0IGFmdGVyIGFwcGx5aW5nIHRoZSBwZXItc2xpY2UgbW9k
aWZpY2F0aW9ucwo+ID4gPiAKPiA+ID4gLSAgICAqIC0gX191OAo+ID4gPiArICAgICogLSBzdHJ1
Y3QgOmM6dHlwZTpgdjRsMl9oMjY0X3JlZmVyZW5jZWAKPiA+ID4gCj4gPiA+ICAgICAgICAtIGBg
cmVmX3BpY19saXN0MVszMl1gYAo+ID4gPiAgICAgICAgLSBSZWZlcmVuY2UgcGljdHVyZSBsaXN0
IGFmdGVyIGFwcGx5aW5nIHRoZSBwZXItc2xpY2UgbW9kaWZpY2F0aW9ucwo+ID4gPiAgICAgIAo+
ID4gPiAgICAgICogLSBfX3UzMgo+ID4gPiAKPiA+ID4gQEAgLTE5MjYsNiArMTkyNiw0MiBAQCBl
bnVtIHY0bDJfbXBlZ192aWRlb19oMjY0X2hpZXJhcmNoaWNhbF9jb2RpbmdfdHlwZQo+ID4gPiAt
Cj4gPiA+IAo+ID4gPiAgICAgICAgLSBgYGNocm9tYV9vZmZzZXRbMzJdWzJdYGAKPiA+ID4gICAg
ICAgIC0KPiA+ID4gCj4gPiA+ICtgYFBpY3R1cmUgUmVmZXJlbmNlYGAKPiA+ID4gKwo+ID4gPiAr
Li4gYzp0eXBlOjogdjRsMl9oMjY0X3JlZmVyZW5jZQo+ID4gPiArCj4gPiA+ICsuLiBjc3NjbGFz
czo6IGxvbmd0YWJsZQo+ID4gPiArCj4gPiA+ICsuLiBmbGF0LXRhYmxlOjogc3RydWN0IHY0bDJf
aDI2NF9yZWZlcmVuY2UKPiA+ID4gKyAgICA6aGVhZGVyLXJvd3M6ICAwCj4gPiA+ICsgICAgOnN0
dWItY29sdW1uczogMAo+ID4gPiArICAgIDp3aWR0aHM6ICAgICAgIDEgMSAyCj4gPiA+ICsKPiA+
ID4gKyAgICAqIC0gX191MTYKPiA+ID4gKyAgICAgIC0gYGBmbGFnc2BgCj4gPiA+ICsgICAgICAt
IFNlZSA6cmVmOmBQaWN0dXJlIFJlZmVyZW5jZSBGbGFncyA8aDI2NF9yZWZlcmVuY2VfZmxhZ3M+
YAo+ID4gPiArICAgICogLSBfX3U4Cj4gPiA+ICsgICAgICAtIGBgaW5kZXhgYAo+ID4gPiArICAg
ICAgLQo+ID4gPiArCj4gPiA+ICsuLiBfaDI2NF9yZWZlcmVuY2VfZmxhZ3M6Cj4gPiA+ICsKPiA+
ID4gK2BgUGljdHVyZSBSZWZlcmVuY2UgRmxhZ3NgYAo+ID4gPiArCj4gPiA+ICsuLiBjc3NjbGFz
czo6IGxvbmd0YWJsZQo+ID4gPiArCj4gPiA+ICsuLiBmbGF0LXRhYmxlOjoKPiA+ID4gKyAgICA6
aGVhZGVyLXJvd3M6ICAwCj4gPiA+ICsgICAgOnN0dWItY29sdW1uczogMAo+ID4gPiArICAgIDp3
aWR0aHM6ICAgICAgIDEgMSAyCj4gPiA+ICsKPiA+ID4gKyAgICAqIC0gYGBWNEwyX0gyNjRfUkVG
RVJFTkNFX0ZMQUdfVE9QX0ZJRUxEYGAKPiA+ID4gKyAgICAgIC0gMHgwMDAwMDAwMQo+ID4gPiAr
ICAgICAgLQo+ID4gPiArICAgICogLSBgYFY0TDJfSDI2NF9SRUZFUkVOQ0VfRkxBR19CT1RUT01f
RklFTERgYAo+ID4gPiArICAgICAgLSAweDAwMDAwMDAyCj4gPiA+ICsgICAgICAtCj4gPiA+ICsK
PiA+ID4gCj4gPiA+ICBgYFY0TDJfQ0lEX01QRUdfVklERU9fSDI2NF9ERUNPREVfUEFSQU1TIChz
dHJ1Y3QpYGAKPiA+ID4gIAo+ID4gPiAgICAgIFNwZWNpZmllcyB0aGUgZGVjb2RlIHBhcmFtZXRl
cnMgKGFzIGV4dHJhY3RlZCBmcm9tIHRoZSBiaXRzdHJlYW0pCj4gPiA+ICAgICAgZm9yIHRoZSBh
c3NvY2lhdGVkIEgyNjQgc2xpY2UgZGF0YS4gVGhpcyBpbmNsdWRlcyB0aGUgbmVjZXNzYXJ5Cj4g
PiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1
cy9jZWRydXNfaDI2NC5jCj4gPiA+IGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1
cy9jZWRydXNfaDI2NC5jIGluZGV4Cj4gPiA+IDU0ZWUyYWE0MjNlMi4uY2NlNTI3YmJkZjg2IDEw
MDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1
c19oMjY0LmMKPiA+ID4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9j
ZWRydXNfaDI2NC5jCj4gPiA+IEBAIC0xNjYsOCArMTY2LDggQEAgc3RhdGljIHZvaWQgY2VkcnVz
X3dyaXRlX2ZyYW1lX2xpc3Qoc3RydWN0IGNlZHJ1c19jdHgKPiA+ID4gKmN0eCw+IAo+ID4gPiAg
c3RhdGljIHZvaWQgX2NlZHJ1c193cml0ZV9yZWZfbGlzdChzdHJ1Y3QgY2VkcnVzX2N0eCAqY3R4
LAo+ID4gPiAgCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0
IGNlZHJ1c19ydW4gKnJ1biwKPiA+ID4gCj4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgY29uc3QgdTggKnJlZl9saXN0LCB1OCBudW1fcmVmLAo+ID4gPiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGVudW0gY2VkcnVzX2gyNjRfc3JhbV9vZmYgc3JhbSkK
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgdjRs
Ml9oMjY0X3JlZmVyZW5jZQo+ID4gPiAqcmVmX2xpc3QsICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdTggbnVtX3JlZiwgZW51bQo+ID4gPiBjZWRydXNfaDI2NF9zcmFtX29mZiBz
cmFtKT4gCj4gPiA+ICB7Cj4gPiA+ICAKPiA+ID4gICAgICAgICBjb25zdCBzdHJ1Y3QgdjRsMl9j
dHJsX2gyNjRfZGVjb2RlX3BhcmFtcyAqZGVjb2RlID0KPiA+ID4gICAgICAgICBydW4tPmgyNjQu
ZGVjb2RlX3BhcmFtczsgc3RydWN0IHZiMl9xdWV1ZSAqY2FwX3E7Cj4gPiA+IAo+ID4gPiBAQCAt
MTg4LDcgKzE4OCw3IEBAIHN0YXRpYyB2b2lkIF9jZWRydXNfd3JpdGVfcmVmX2xpc3Qoc3RydWN0
IGNlZHJ1c19jdHgKPiA+ID4gKmN0eCw+IAo+ID4gPiAgICAgICAgICAgICAgICAgaW50IGJ1Zl9p
ZHg7Cj4gPiA+ICAgICAgICAgICAgICAgICB1OCBkcGJfaWR4Owo+ID4gPiAKPiA+ID4gLSAgICAg
ICAgICAgICAgIGRwYl9pZHggPSByZWZfbGlzdFtpXTsKPiA+ID4gKyAgICAgICAgICAgICAgIGRw
Yl9pZHggPSByZWZfbGlzdFtpXS5pbmRleDsKPiA+ID4gCj4gPiA+ICAgICAgICAgICAgICAgICBk
cGIgPSAmZGVjb2RlLT5kcGJbZHBiX2lkeF07Cj4gPiA+ICAgICAgICAgICAgICAgICAKPiA+ID4g
ICAgICAgICAgICAgICAgIGlmICghKGRwYi0+ZmxhZ3MgJiBWNEwyX0gyNjRfRFBCX0VOVFJZX0ZM
QUdfQUNUSVZFKSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL21lZGlhL2gyNjQt
Y3RybHMuaCBiL2luY2x1ZGUvbWVkaWEvaDI2NC1jdHJscy5oCj4gPiA+IGluZGV4IDA4MGZkMTI5
M2M0Mi4uOWIxY2JjOWJjMzhlIDEwMDY0NAo+ID4gPiAtLS0gYS9pbmNsdWRlL21lZGlhL2gyNjQt
Y3RybHMuaAo+ID4gPiArKysgYi9pbmNsdWRlL21lZGlhL2gyNjQtY3RybHMuaAo+ID4gPiBAQCAt
MTQwLDYgKzE0MCwxNCBAQCBzdHJ1Y3QgdjRsMl9oMjY0X3ByZWRfd2VpZ2h0X3RhYmxlIHsKPiA+
ID4gCj4gPiA+ICAjZGVmaW5lIFY0TDJfSDI2NF9TTElDRV9GTEFHX0RJUkVDVF9TUEFUSUFMX01W
X1BSRUQgICAgMHgwNAo+ID4gPiAgI2RlZmluZSBWNEwyX0gyNjRfU0xJQ0VfRkxBR19TUF9GT1Jf
U1dJVENIICAgICAgICAgICAgIDB4MDgKPiA+ID4gCj4gPiA+ICsjZGVmaW5lIFY0TDJfSDI2NF9S
RUZFUkVOQ0VfRkxBR19UT1BfRklFTEQgICAgICAgICAgICAgMHgwMQo+ID4gPiArI2RlZmluZSBW
NEwyX0gyNjRfUkVGRVJFTkNFX0ZMQUdfQk9UVE9NX0ZJRUxEICAgICAgICAgIDB4MDIKPiA+ID4g
Kwo+ID4gPiArc3RydWN0IHY0bDJfaDI2NF9yZWZlcmVuY2Ugewo+ID4gPiArICAgICAgIF9fdTgg
ZmxhZ3M7Cj4gPiA+ICsgICAgICAgX191OCBpbmRleDsKPiA+ID4gK307Cj4gPiA+ICsKPiA+ID4g
Cj4gPiA+ICBzdHJ1Y3QgdjRsMl9jdHJsX2gyNjRfc2xpY2VfcGFyYW1zIHsKPiA+ID4gIAo+ID4g
PiAgICAgICAgIC8qIFNpemUgaW4gYnl0ZXMsIGluY2x1ZGluZyBoZWFkZXIgKi8KPiA+ID4gICAg
ICAgICBfX3UzMiBzaXplOwo+ID4gPiAKPiA+ID4gQEAgLTE4Miw4ICsxOTAsOCBAQCBzdHJ1Y3Qg
djRsMl9jdHJsX2gyNjRfc2xpY2VfcGFyYW1zIHsKPiA+ID4gCj4gPiA+ICAgICAgICAgICogRW50
cmllcyBvbiBlYWNoIGxpc3QgYXJlIGluZGljZXMgaW50bwo+ID4gPiAgICAgICAgICAqIHY0bDJf
Y3RybF9oMjY0X2RlY29kZV9wYXJhbXMuZHBiW10uCj4gPiA+ICAgICAgICAgICovCj4gPiA+IAo+
ID4gPiAtICAgICAgIF9fdTggcmVmX3BpY19saXN0MFszMl07Cj4gPiA+IC0gICAgICAgX191OCBy
ZWZfcGljX2xpc3QxWzMyXTsKPiA+ID4gKyAgICAgICBzdHJ1Y3QgdjRsMl9oMjY0X3JlZmVyZW5j
ZSByZWZfcGljX2xpc3QwWzMyXTsKPiA+ID4gKyAgICAgICBzdHJ1Y3QgdjRsMl9oMjY0X3JlZmVy
ZW5jZSByZWZfcGljX2xpc3QxWzMyXTsKPiA+IAo+ID4gQ291bGQgd2UgdXNlIGEgbWFjcm8gZm9y
ICIzMiIgaGVyZT8gU29tZXRoaW5nIGxpa2U6Cj4gPiAKPiA+ICNkZWZpbmUgVjRMMl9IMjY0X1JF
Rl9QSUNfTElTVF9MRU4gKFY0TDJfSDI2NF9OVU1fRFBCX0VOVFJJRVMgKiAyKS4KPiA+IAo+ID4g
RG9lcyBpdCBtYWtlIHNlbnNlIHRvIGFkZCBhIGNvbW1lbnQgYXMgd2VsbD8KPiA+IAo+ID4gSSB3
YXMgdGhpbmtpbmcgc29tZXRoaW5nIGFsb25nIHRoZXNlIGxpbmVzOgo+ID4gCj4gPiAiIiIKPiA+
IFBpY3R1cmVzIGluIHRoZSBEUEIgY2FuIGJlIGEgZnJhbWUsIGEgY29tcGxlbWVudGFyeSBmaWVs
ZCBwYWlyIG9yIGEKPiA+IHNpbmdsZSBmaWVsZC4KPiAKPiBUbyBiZSBob25lc3QsIEkgZG9uJ3Qg
a25vdyBpZiB1c2VyIGhhcyBhIGZyZWUgY2hvaWNlIHRvIHNlbGVjdCBzYW1lIG9yIAo+IGRpZmZl
cmVudCBkZXN0aW5hdGlvbiAoY2FwdHVyZSkgYnVmZmVyIGZvciBhbm90aGVyIGZpZWxkLiBJIG5l
dmVyIHRlc3RlZCBpdCBhbmQgCj4gSSdtIG5vdCBzdXJlIGhvdyB0byB0ZXN0IGl0IHdpdGggZmZt
cGVnLiBIVyBkZWludGVybGFjaW5nIGNvcmVzIG9uIEFsbHdpbm5lciAKPiBTb0NzIHN1cHBvcnQg
b25seSBpbnRlcmxlYXZlZCBmaWVsZHMgYXMgYSBpbnB1dCwgdGhhdCdzIHdoeSBJIG5ldmVyIHRo
b3VnaCAKPiBhYm91dCBzZXBhcmF0ZSBmaWVsZHMuCgpXaGVuIHNldHRpbmcgdGhlIGZvcm1hdCwg
b25lIHdpbGwgY2hvb3NlIFY0TDJfRklFTERfSU5URVJMQUNFRF9UQi9CVC4KTW9zdCBkcml2ZXIg
d2lsbCBzdXBwb3J0IHRoYXQsIGJ1dCBpZiBub3QsIHRoZXkgY2FuIHVwZGF0ZSBmaWVsZCBpbiB0
aGUKc3RydWN0dXJlLiBJbnRlcmxhY2VkIGJlaW5nIHZlcnkgY29tbW9uLCBJIHRoaW5rIGl0J3Mg
ZmluZSB0byBvbmx5CnN1cHBvcnQgdGhhdCwgYnV0IHRoZSBkcml2ZSBtdXN0IGVuZm9yY2UgdGhp
cyBmaWVsZCB2YWx1ZS4KCkJ1dCBJIGtub3cgdGhlIFhpbGlueCBaeW5xTVAgd2lsbCBkbyBBTFRF
Uk5BVEUgaW5zdGVhZCwgd2hpY2ggd291bGQgYmUKZWFjaCBmaWVsZCBnZXQgZGVjb2RlZCBpbiBp
dCdzIG93biBidWZmZXIuIFRoYXQsIHRvIGJlIGhvbmVzdCwgSQpoYXZlbid0IHRob3VnaCBhYm91
dC4gVGhlIHRyaWNreSBwYXJ0IGlzIGZvciBIMjY0LCBzaW5jZSBpdCBtZWFucyAxCnNsaWNlIG1h
eSBwb3B1bGF0ZSB0d28gY2FwdHVyZSBidWZmZXJzIGFuZCBJIGRvbid0IGtub3cgaWYgd2UgY2Fu
CnN1cHBvcnQgdGhpcyByaWdodCBub3cuCgpGb3Igbm93IEknZCBzYXkgd2Ugc2hvdWxkIGp1c3Qg
ZW5zdXJlIHRoYXQgd2hhdGV2ZXIgdXNlcnNwYWNlIGFzaywgd2UKZW5mb3JjZSBWNEwyX0ZJRUxE
X0lOVEVSTEFDRURfVEIvQlQgYXBwcm9wcmlhdGVseS4gVGhhdCBpcyBsaWtlbHkgbm90CmNvbXBs
ZXRlLCBqdXN0IGxvb2sgYXQgaG93IGludGVybGFjaW5nIGlzIHNpZ25hbCBpbiB0aGUgYml0c3Ry
ZWFtLgoKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gSmVybmVqCj4gCj4gPiBUaGVyZWZvcmUsIHJlZmVy
ZW5jZSBwaWN0dXJlcyBsaXN0cyBuZWVkIHR3aWNlIGFzIG11Y2ggZW50cmllcywgc28gaXQKPiA+
IGNhbiByZWZlcmVuY2UKPiA+IGVpdGhlciBmaWVsZCBvZiBhIGZpZWxkIHBhaXIuCj4gPiAiIiIK
PiA+IAo+ID4gV2hpbGUgaXQgZG9lc24ndCByZXBsYWNlIHByb3BlciBIMjY0IHNwZWNpZmljYXRp
b24gcmVhZGluZywKPiA+IGl0IHdvdWxkIGFkZCBzb21lIGNsYXJpdHkuCj4gPiAKPiA+IFRoYW5r
cywKPiA+IEV6ZXF1aWVsCj4gCj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
