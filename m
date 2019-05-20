Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9F022F46
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 10:50:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 30EDC87397;
	Mon, 20 May 2019 08:50:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pTeT3ecUAwQe; Mon, 20 May 2019 08:50:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F15D58733B;
	Mon, 20 May 2019 08:50:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF3711BF83A
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:50:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BB4FE85135
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:50:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uKQJFHIOwhcM for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 08:50:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6CE75847D3
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 08:50:01 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id v2so9383172oie.6
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 01:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=P1TdkWjZDyMvgvAekCwH44KLfVofJlhltHXYPikObHM=;
 b=IQD9uO3C2GesLoN9nqijf6aIcsX9U5BWfDczuYVOvjk3EsEJyYV43dgWLtNCzb1dTE
 IeiK3cDrJ/32uMDDqQh9vLyYRkL2ykD9JFjLPX5pz0r7NXfLe7lHwZ9jxnsjyxlt53Lm
 oc85TGVG5YCtaYoOgEWPxDK5MNZwxZBAZAZRUM0e/ZFC7EoBn8I466nrluKwAN9twFBd
 FjwaZ19YxGNpi/C4ZNd8g5XOJntviZAL7NfoMzzTDyH1jgWcTJdfRzD1JB3q90ZkFk9v
 LWDNGymFv2AuP0LEE6mRLrzwTxpugoqeSMd+J8gAGgS95L9JKAbfEXFxSGwzibk1JnuL
 th9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=P1TdkWjZDyMvgvAekCwH44KLfVofJlhltHXYPikObHM=;
 b=fcl8OB8Sv67uOaP9rWTRUmXq7m22IzeudjvfisMcO1selYQ89HK8hI15HjYmlk8hMS
 6uDilU6jFe1+118iBna3PjLKIfMpFlPcbdl0ej48vAOUjqHan34EezidP6x3o/wrnezT
 YfELdemxUOf9VyK+9pwgGCh88lVNf1FEA3AKhZ/VtQpImgACHmIitz90f5tRHCD7GJu9
 FizSOJfjl33lc0bft7q+cDYxljoMysxCzWp5habb3CGtUxL4Fl8Ce2zr3rQjfrFmv13O
 XLBw0X5hRdNVlJhMeuI9ZyZOaygQNxPxQhGS6VEIeZnjGbjIympB2vXVopyO7+KgdudZ
 9xOA==
X-Gm-Message-State: APjAAAUD38oOhLdsrEubHrlAYWoM7bDHCdb4c6EavpfxsOoZLgk0CmG6
 7k9T+LMn4g7rLoyNMxvmpx6s5L/tM80Sb83ryT4=
X-Google-Smtp-Source: APXvYqy0A+TEpuXRVOGSPnrr8cGfN7DBGyeGHWRWr/gpf2dOimPebq+LJAdPpkASG2eQLHc5hPz2Vy54RMNA8LJe7NY=
X-Received: by 2002:aca:4341:: with SMTP id q62mr17612509oia.140.1558342200528; 
 Mon, 20 May 2019 01:50:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190518204825.4kh5qkqo2e5q2se6@smtp.gmail.com>
 <20190519121935.341fd173@archlinux>
In-Reply-To: <20190519121935.341fd173@archlinux>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Mon, 20 May 2019 11:49:48 +0300
Message-ID: <CA+U=DspTnzOeQexB4YiANBa+6N20uMPNQLDc+ntgW2bSxyHp=Q@mail.gmail.com>
Subject: Re: [PATCH] staging: iio: ad9832: Add device tree support
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
Cc: devel@driverdev.osuosl.org,
 =?UTF-8?Q?Jo=C3=A3o_Seckler?= <joaoseckler@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU3VuLCBNYXkgMTksIDIwMTkgYXQgODoxNyBQTSBKb25hdGhhbiBDYW1lcm9uIDxqaWMyM0Br
ZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIFNhdCwgMTggTWF5IDIwMTkgMTc6NDg6MjUgLTAzMDAK
PiBKb8OjbyBTZWNrbGVyIDxqb2Fvc2Vja2xlckBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gPiBBZGQg
YSBvZl9kZXZpY2VfaWQgc3RydWN0IHZhcmlhYmxlIGFuZCBzdWJzZXF1ZW50IGNhbGwgdG8KPiA+
IE1PRFVMRV9ERVZJQ0VfVEFCTEUgbWFjcm8gdG8gc3VwcG9ydCBkZXZpY2UgdHJlZS4KPiA+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBKb8OjbyBTZWNrbGVyIDxqb2Fvc2Vja2xlckBnbWFpbC5jb20+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBBbmRlcnNvbiBSZWlzIDxhbmRlcnNvbnJlaXNyb3NhQGdtYWlsLmNv
bT4KPiA+IENvLWRldmVsb3BlZC1ieTogQW5kZXJzb24gUmVpcyAgPGFuZGVyc29ucmVpc3Jvc2FA
Z21haWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogQW5kcmUgVGFkZXUgZGUgQ2FydmFsaG8gPGFu
ZHJlLnRhZGV1LmRlLmNhcnZhbGhvQGdtYWlsLmNvbT4KPiA+IENvLWRldmVsb3BlZC1ieTogQW5k
cmUgVGFkZXUgZGUgQ2FydmFsaG8gPGFuZHJlLnRhZGV1LmRlLmNhcnZhbGhvQGdtYWlsLmNvbT4K
PiBIaSBBbGwsCj4KPiBNaXNzaW5nIHRoZSBzZXR0aW5nIG9mIHRoZSByZWxldmFudCBlbnRyeSBp
biB0aGUgc3BpX2RyaXZlciBzdHJ1Y3R1cmUuCj4gT3RoZXJ3aXNlIGxvb2tzIGZpbmUsCj4KPiBU
aGFua3MsCj4KPiBKb25hdGhhbgo+ID4gLS0tCj4gPiAgZHJpdmVycy9zdGFnaW5nL2lpby9mcmVx
dWVuY3kvYWQ5ODMyLmMgfCA3ICsrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9paW8vZnJlcXVlbmN5
L2FkOTgzMi5jIGIvZHJpdmVycy9zdGFnaW5nL2lpby9mcmVxdWVuY3kvYWQ5ODMyLmMKPiA+IGlu
ZGV4IDc0MzA4YTJlNzJkYi4uNTFlOTdjNzRjNmIyIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9z
dGFnaW5nL2lpby9mcmVxdWVuY3kvYWQ5ODMyLmMKPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9p
aW8vZnJlcXVlbmN5L2FkOTgzMi5jCj4gPiBAQCAtNDUxLDYgKzQ1MSwxMyBAQCBzdGF0aWMgaW50
IGFkOTgzMl9yZW1vdmUoc3RydWN0IHNwaV9kZXZpY2UgKnNwaSkKPiA+ICAgICAgIHJldHVybiAw
Owo+ID4gIH0KPiA+Cj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgYWQ5ODMy
X29mX21hdGNoW10gPSB7Cj4gPiArICAgICB7IC5jb21wYXRpYmxlID0gImFkaSxhZDk4MzIiLCB9
LAo+ID4gKyAgICAgeyAuY29tcGF0aWJsZSA9ICJhZGksYWQ5ODM1IiwgfSwKPiA+ICsgICAgIHsg
Lyogc2VudGluZWwgKi8gfSwKPiA+ICt9Owo+ID4gK01PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGFk
OTgzMl9vZl9tYXRjaCk7Cj4gPiArCgoKWWVwLgpUbyBjbGFyaWZ5IHdoYXQgSm9uYXRoYW4gc2Fp
ZCAoc2VlIGxpbmUgYmVsb3cgd2l0aCBwbHVzICsgKSA6CgpzdGF0aWMgc3RydWN0IHNwaV9kcml2
ZXIgYWQ5ODMyX2RyaXZlciA9IHsKICAgICAgICAuZHJpdmVyID0gewogICAgICAgICAgICAgICAg
Lm5hbWUgICA9ICJhZDk4MzIiLAorICAgICAgICAgICAgICAub2ZfbWF0Y2hfdGFibGUgPSBhZDk4
MzJfb2ZfbWF0Y2gsCiAgICAgICAgfSwKICAgICAgICAucHJvYmUgICAgICAgICAgPSBhZDk4MzJf
cHJvYmUsCiAgICAgICAgLnJlbW92ZSAgICAgICAgID0gYWQ5ODMyX3JlbW92ZSwKICAgICAgICAu
aWRfdGFibGUgICAgICAgPSBhZDk4MzJfaWQsCn07CgoKCj4gPiAgc3RhdGljIGNvbnN0IHN0cnVj
dCBzcGlfZGV2aWNlX2lkIGFkOTgzMl9pZFtdID0gewo+ID4gICAgICAgeyJhZDk4MzIiLCAwfSwK
PiA+ICAgICAgIHsiYWQ5ODM1IiwgMH0sCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
