Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B760118558
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 11:42:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE31587657;
	Tue, 10 Dec 2019 10:42:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gc5evKkwDu0c; Tue, 10 Dec 2019 10:42:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25D1A8763C;
	Tue, 10 Dec 2019 10:42:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 499191BF291
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 10:42:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3EFDD8698E
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 10:42:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AqdKzI22A2OZ for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 10:42:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3BE8B8761A
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 10:42:18 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id l4so7251619pjt.5
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 02:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kfdQQeeLkcakBGBCZLadlJ1Gb6o3OJURT7E+WRswKJ4=;
 b=UkxmP9mxRXTpS8hT7YgShz2dcmP5Hwuqr2jD3WSGJ07fm4fm+lPoO9zMD+Zvi3djZr
 zM+8T3oWM2JVrYhcTfAykTmzzCnhoKjtu4Zes0V/pqrwXR8nLTLKTAU6sIVfhT1okOmW
 55ztvGctEHx/cIOzl3BRQKwnHP2BCnNvrgFzYX7W+sVztMrPlLQ/VTqo1PT3l8V9hr64
 z8S54c4gW7y5vZnsE3TCdaaK88Mz8SpPXBmwese0apssXggOKhO5Lc9P+s5rc6wqqxQw
 aKRtUoiowJ//JLoPVtDjRBrokwibIk3gQgbIXML4PgZVwfvE4WAUt9Es2K4AINj4WoRm
 3U5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kfdQQeeLkcakBGBCZLadlJ1Gb6o3OJURT7E+WRswKJ4=;
 b=GxgOZPYcf6Ex6LHGkCM3t75/zp+RZTk6zNlRJCX3iF4M/GdiWfpOpcZ6T7Wv5jkT4d
 02NnW67DOlEzJ17yYI79e6RezQQVJoftiOHnGlz2MRYeafOJ4SR2T6ABsBKWKUKIawJA
 uR0cd8y/4d9Fn/J9yKsRMQhlK0Suw1U6aaBU2pL+yYo3gvxBeWiTC8l1WRbTNuDKDXoJ
 wll+61L3hAqFUUxCcxewWRFbWu5I7Q28FBd0pxpWoJjXl5FrZukbBd35k0InghLb53OZ
 XzvuL9VYpCx5/oNLFl5ov/uKyEz/0HqICjy/rwtrOqzAjQYsZKZIojMst7LoD6VHS9S6
 cEaA==
X-Gm-Message-State: APjAAAXH5F8WTp2sNl3F+J7lAlxqA/Lg3ZURachEvEN52/s8BOjlPrj9
 +zZ4SLAIjqHEHTCBLHa7PBA=
X-Google-Smtp-Source: APXvYqwu+tTCvyc9M4sHHFPFQ80Mkvn4JOQJ9Afdczl4FWLtBn8MV1Rpo6aKaRC84TjVx5vssAJ3mQ==
X-Received: by 2002:a17:902:ff10:: with SMTP id
 f16mr3996110plj.312.1575974537741; 
 Tue, 10 Dec 2019 02:42:17 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 a26sm2993251pfo.5.2019.12.10.02.42.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Dec 2019 02:42:16 -0800 (PST)
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <6f934497-0635-7aa0-e7d5-ed2c4cc48d2d@roeck-us.net>
Date: Tue, 10 Dec 2019 02:42:14 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
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
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
 Giovanni Gherdovich <bobdc9664@seznam.cz>, Paul Burton <paulburton@kernel.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Florian Westphal <fw@strlen.de>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 David Daney <ddaney@caviumnetworks.com>, Julia Lawall <julia.lawall@lip6.fr>,
 Sandro Volery <sandro@volery.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Valery Ivanov <ivalery111@gmail.com>,
 =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMTIvMTAvMTkgMToxNSBBTSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgo+IFRoaXMgZHJp
dmVyIGhhcyBiZWVuIGluIHRoZSB0cmVlIHNpbmNlIDIwMDkgd2l0aCBubyByZWFsIG1vdmVtZW50
IHRvIGdldAo+IGl0IG91dC4gIE5vdyBpdCBpcyBzdGFydGluZyB0byBjYXVzZSBidWlsZCBpc3N1
ZXMgYW5kIG90aGVyIHByb2JsZW1zIGZvcgo+IHBlb3BsZSB3aG8gd2FudCB0byBmaXggY29kaW5n
IHN0eWxlIHByb2JsZW1zLCBidXQgY2FuIG5vdCBhY3R1YWxseSBidWlsZAo+IGl0Lgo+IAo+IEFz
IG5vdGhpbmcgaXMgaGFwcGVuaW5nIGhlcmUsIGp1c3QgZGVsZXRlIHRoZSBtb2R1bGUgZW50aXJl
bHkuCj4gCj4gUmVwb3J0ZWQtYnk6IEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNrLXVzLm5ldD4K
PiBDYzogRGF2aWQgRGFuZXkgPGRkYW5leUBjYXZpdW1uZXR3b3Jrcy5jb20+Cj4gQ2M6ICJEYXZp
ZCBTLiBNaWxsZXIiIDxkYXZlbUBkYXZlbWxvZnQubmV0Pgo+IENjOiAiTWF0dGhldyBXaWxjb3gg
KE9yYWNsZSkiIDx3aWxseUBpbmZyYWRlYWQub3JnPgo+IENjOiBHdWVudGVyIFJvZWNrIDxsaW51
eEByb2Vjay11cy5uZXQ+Cj4gQ2M6IFl1ZUhhaWJpbmcgPHl1ZWhhaWJpbmdAaHVhd2VpLmNvbT4K
PiBDYzogQWFybyBLb3NraW5lbiA8YWFyby5rb3NraW5lbkBpa2kuZmk+Cj4gQ2M6IFdhbWJ1aSBL
YXJ1Z2EgPHdhbWJ1aS5rYXJ1Z2F4QGdtYWlsLmNvbT4KPiBDYzogSnVsaWEgTGF3YWxsIDxqdWxp
YS5sYXdhbGxAbGlwNi5mcj4KPiBDYzogRmxvcmlhbiBXZXN0cGhhbCA8ZndAc3RybGVuLmRlPgo+
IENjOiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0QGxpbnV4LW02OGsub3JnPgo+IENjOiBCcmFu
ZGVuIEJvbmFieSA8YnJhbmRvbmJvbmFieTk0QGdtYWlsLmNvbT4KPiBDYzogIlBldHIgxaB0ZXRp
YXIiIDx5bmV6ekB0cnVlLmN6Pgo+IENjOiBTYW5kcm8gVm9sZXJ5IDxzYW5kcm9Adm9sZXJ5LmNv
bT4KPiBDYzogUGF1bCBCdXJ0b24gPHBhdWxidXJ0b25Aa2VybmVsLm9yZz4KPiBDYzogRGFuIENh
cnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPgo+IENjOiBHaW92YW5uaSBHaGVyZG92
aWNoIDxib2JkYzk2NjRAc2V6bmFtLmN6Pgo+IENjOiBWYWxlcnkgSXZhbm92IDxpdmFsZXJ5MTEx
QGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBs
aW51eGZvdW5kYXRpb24ub3JnPgoKQWNrZWQtYnk6IEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNr
LXVzLm5ldD4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
