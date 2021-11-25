Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F3F45DCE7
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Nov 2021 16:07:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B54E460757;
	Thu, 25 Nov 2021 15:07:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DdIwht3oRR6b; Thu, 25 Nov 2021 15:07:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC9F460764;
	Thu, 25 Nov 2021 15:07:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B9D6C1BF27C
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 15:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A805E408D8
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 15:07:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aavgiAjh5ep0 for <devel@linuxdriverproject.org>;
 Thu, 25 Nov 2021 15:07:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AB7D040611
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 15:07:42 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id l16so12307456wrp.11
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 07:07:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=pB4n2TNbnUB7ciz0SA/lUO366pPT7mjGih2Fx1aGofw=;
 b=IbShBeTT/lv9mQqambnmEqwjXe0MpdAs6z6NgdU/gHUc73m4/UlXLGZ1A1a9+nd6Z+
 g7OSyrwMVCq6ZAUaUgvCrUXIKbLCAdNCECM5MUsOmyS4GxoXD9f8Bb84Ji5gIu9hXhs8
 pcurmsReX8aj8xXDCzj4oY8K9X8P6kZHMml7/Mq17syN4k7gxzMF3xn/nJt9vRQ2ILWz
 arlKQ/4ht9sACz2tHgFnV8l5cGzIPwZOFrnsZ4uldqluMN3Jgv0RFk89a+zr3c6QdUdq
 jE8OTcma6ZIHFitQBu6/93boJqEoUK6b9o8Jym8ywV/KoyZhhvJzZdjtscx/cCIsdKea
 QUxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=pB4n2TNbnUB7ciz0SA/lUO366pPT7mjGih2Fx1aGofw=;
 b=Oy2cTCaNealqiObxEQGLFmVLVjHmdzcT99Shiy08HqHXj+0HL447tMh93rtHJayH3t
 7x5icPIi7u27w3CEE+KH72yNK6brHJKOn5+B8SUmyvtal5B1vn8CDlTD4Su8PZKwOlHv
 ze5+m4rX+WbS9laaESYIeqczdsFkZ3s7KiXHlx87fu7RmM8hM+WfRwrnwygyTMTQ/CD5
 NkPzXlw+LraJKFvP5+ZRpKTId/ZrIp42kZiQERVXVbSZRU8uraWd72U6ZTKCWdq5T2dZ
 wkYA+rRaizB41JFv6IOQ8KTb1AByXSI0YXQULovSGelF6tmxzyutl9/kxlmepG8JRJRm
 RGQQ==
X-Gm-Message-State: AOAM530KjmWVz7PgOBvOkC5jlYSFRFgaStTBb1G1SuVyjEApfXqxCgms
 6pGXrpf5jnNUg7JlijVUZoBS/Q==
X-Google-Smtp-Source: ABdhPJx3YL510Cj/37/QGg5Q7AMo+amXTbYcnmyA1WeW+lBxhz/aIskseo+kfjUJb9UP6s2S4Ipigw==
X-Received: by 2002:a5d:4d81:: with SMTP id b1mr7493208wru.366.1637852859655; 
 Thu, 25 Nov 2021 07:07:39 -0800 (PST)
Received: from google.com ([2.31.167.18])
 by smtp.gmail.com with ESMTPSA id az15sm3123405wmb.0.2021.11.25.07.07.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 07:07:39 -0800 (PST)
Date: Thu, 25 Nov 2021 15:07:37 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 1/1] staging: ion: Prevent incorrect reference counting
 behavour
Message-ID: <YZ+muS7vC5iNs/kq@google.com>
References: <20211125142004.686650-1-lee.jones@linaro.org>
 <20211125145004.GN6514@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211125145004.GN6514@kadam>
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
Cc: devel@driverdev.osuosl.org, riandrews@android.com, stable@vger.kernel.org,
 arve@android.com, labbott@redhat.com, sumit.semwal@linaro.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCAyNSBOb3YgMjAyMSwgRGFuIENhcnBlbnRlciB3cm90ZToKCj4gT24gVGh1LCBOb3Yg
MjUsIDIwMjEgYXQgMDI6MjA6MDRQTSArMDAwMCwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gU3VwcGx5
IGFkZGl0aW9uYWwgY2hlY2tzIGluIG9yZGVyIHRvIHByZXZlbnQgdW5leHBlY3RlZCByZXN1bHRz
Lgo+ID4gCj4gPiBGaXhlczogYjg5MmJmNzViMjAzNCAoImlvbjogU3dpdGNoIGlvbiB0byB1c2Ug
ZG1hLWJ1ZiIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8u
b3JnPgo+ID4gLS0tCj4gPiBTaG91bGQgYmUgYmFjay1wb3J0ZWQgZnJvbSB2NC45IGFuZCBlYXJs
aWVyLgo+ID4gCj4gPiAgZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jIHwgNSArKysr
Kwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyBiL2RyaXZlcnMvc3RhZ2luZy9h
bmRyb2lkL2lvbi9pb24uYwo+ID4gaW5kZXggODA2ZTliMzBiOWRjOC4uNDAyYjc0ZjVkN2U2OSAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwo+ID4gKysr
IGIvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jCj4gPiBAQCAtMjksNiArMjksNyBA
QAo+ID4gICNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvbW0u
aD4KPiA+ICAjaW5jbHVkZSA8bGludXgvbW1fdHlwZXMuaD4KPiA+ICsjaW5jbHVkZSA8bGludXgv
b3ZlcmZsb3cuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvcmJ0cmVlLmg+Cj4gPiAgI2luY2x1ZGUg
PGxpbnV4L3NsYWIuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvc2VxX2ZpbGUuaD4KPiA+IEBAIC01
MDksNiArNTEwLDEwIEBAIHN0YXRpYyB2b2lkICppb25faGFuZGxlX2ttYXBfZ2V0KHN0cnVjdCBp
b25faGFuZGxlICpoYW5kbGUpCj4gPiAgCXZvaWQgKnZhZGRyOwo+ID4gIAo+ID4gIAlpZiAoaGFu
ZGxlLT5rbWFwX2NudCkgewo+ID4gKwkJaWYgKGNoZWNrX2FkZF9vdmVyZmxvdyhoYW5kbGUtPmtt
YXBfY250LAo+ID4gKwkJCQkgICAgICAgKHVuc2lnbmVkIGludCkgMSwgJmhhbmRsZS0+a21hcF9j
bnQpKQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIF5eXl5eXl5eXl5eXl5eXl5eCj4gCj4gPiArCQkJcmV0dXJuIEVSUl9QVFIoLUVPVkVS
RkxPVyk7Cj4gPiArCj4gPiAgCQloYW5kbGUtPmttYXBfY250Kys7Cj4gICAgICAgICAgICAgICAg
IF5eXl5eXl5eXl5eXl5eXl5eXl4KPiBUaGlzIHdpbGwgbm90IGRvIHdoYXQgeW91IHdhbnQgYXQg
YWxsLiAgSXQncyBhIGRvdWJsZSBpbmNyZW1lbnQgb24gdGhlCj4gc3VjY2VzcyBwYXRoIGFuZCBp
dCBsZWF2ZSBoYW5kbGUtPmttYXBfY250IG92ZXJmbG93ZWQgb24gZmFpbHVyZSBwYXRoLgoKSSBy
ZWFkIHRoZSBoZWxwZXIgdG8gdGFrZSBjb3BpZXMgb2YgdGhlIG9yaWdpbmFsIHZhcmlhYmxlcy4K
CiNkZWZpbmUgX191bnNpZ25lZF9hZGRfb3ZlcmZsb3coYSwgYiwgZCkgKHsgICAgIFwKICAgICAg
ICB0eXBlb2YoYSkgX19hID0gKGEpOyAgICAgICAgICAgICAgICAgICAgXAogICAgICAgIHR5cGVv
ZihiKSBfX2IgPSAoYik7ICAgICAgICAgICAgICAgICAgICBcCiAgICAgICAgdHlwZW9mKGQpIF9f
ZCA9IChkKTsgICAgICAgICAgICAgICAgICAgIFwKICAgICAgICAodm9pZCkgKCZfX2EgPT0gJl9f
Yik7ICAgICAgICAgICAgICAgICAgXAogICAgICAgICh2b2lkKSAoJl9fYSA9PSBfX2QpOyAgICAg
ICAgICAgICAgICAgICBcCiAgICAgICAgKl9fZCA9IF9fYSArIF9fYjsgICAgICAgICAgICAgICAg
ICAgICAgIFwKICAgICAgICAqX19kIDwgX19hOyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
XAp9KQoKTWF5YmUgSSBtaXNyZWFkIGl0LgoKU28gdGhlIG9yaWdpbmFsIHBhdGNoIFswXSB3YXMg
YmV0dGVyPwoKWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3N0YWJsZS8yMDIxMTEyNTEyMDIz
NC42Nzk4Ny0xLWxlZS5qb25lc0BsaW5hcm8ub3JnLwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pav
XQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDi
lIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vi
b29rIHwgVHdpdHRlciB8IEJsb2cKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
