Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C3125B964
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Sep 2020 05:49:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73BF287343;
	Thu,  3 Sep 2020 03:49:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ivN22CcqiBCV; Thu,  3 Sep 2020 03:49:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0EDC287342;
	Thu,  3 Sep 2020 03:49:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E7131BF95C
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 03:49:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 28C2887299
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 03:49:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Atokhjr1Yv8X for <devel@linuxdriverproject.org>;
 Thu,  3 Sep 2020 03:49:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6B42687291
 for <devel@driverdev.osuosl.org>; Thu,  3 Sep 2020 03:49:24 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id p37so996327pgl.3
 for <devel@driverdev.osuosl.org>; Wed, 02 Sep 2020 20:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=npE+6kgY3BgkJuk1F6OrPRsD1LD4neOO0rtoAG0vrnQ=;
 b=Dfw35si2hpu8HSbt7vYSTT6bRfqooFfqvtuJOMRu31s1zHcazuBWb8iZSDlBuUDlJw
 WdvvXEzbxkDfv/3wMT9hwIa3vgI16BabY30lQJYLF9R0iavh1iFZ5mGk1p3eyYnbcnIt
 7n2iSOZwTocINzPyIwz3u4Q/OGjQEoQvlrkLRUo0IkDPHlmCNhJHHwtwiR1DVIWNH7BX
 Hic3wV6nKXzoAdqR6H42axB1idyI/qVKfN6zGYYz7PURerRBohxXjPLRKp84ckr6cF2x
 ynCINIfUNQ62j+R1DyQOwOdQdSEOjplBiy9BCntJl4IUlAL1jViGD+G9JAmkHs++SGmY
 O9bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=npE+6kgY3BgkJuk1F6OrPRsD1LD4neOO0rtoAG0vrnQ=;
 b=VpmMx3jA8KPCqpp9qgymmoChqpP/U+35OkZO9t7EHy6X6L/Oe7oxduaLqI3A+A41S2
 cT96KArMCw/I6f29/9FWcgGsavZdn88GQUnLmaB2YcxGUf2NH8JJKCGPKCKyRZccKiGB
 QpGe4CGvOWslq+fZAPSV76S4bxF33t8/G/zQ4h0LWSU8FjN8bstYfyfi8rLmGddcxU2P
 UgZMrDHbL7hYbhTa4s/XwNMVY8D+t2th3DvzyNGWjMAgPbwHSbMqd/LhS18onabCmDT9
 CrxoTeJmvIRCI/f+zJExKdpLb5FWuvYEjKWkCbAmgM/TMMjlhNQbB2Y0zq7Nyb9xc7iD
 Stvw==
X-Gm-Message-State: AOAM532WiZlfWhrzcGpBE+chIWJZcWTu1af6q09XVU+IdUzCqWuilfEE
 Q4OHWDDXgp5a8yWTvGOV9kY=
X-Google-Smtp-Source: ABdhPJwYE+xArS4TItybo5Qh7QcbVZSCVtOJJVLj7/To/yDMWI7tvLCl/hdb8f1wk/MrtLh49SCsAA==
X-Received: by 2002:a65:5c4c:: with SMTP id v12mr1078295pgr.95.1599104963899; 
 Wed, 02 Sep 2020 20:49:23 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id k4sm804155pjl.10.2020.09.02.20.49.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Sep 2020 20:49:22 -0700 (PDT)
Date: Thu, 3 Sep 2020 12:49:18 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v3] staging: qlge: fix build breakage with dumping enabled
Message-ID: <20200903034918.GA227281@f3>
References: <20200902140031.203374-1-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200902140031.203374-1-coiby.xu@gmail.com>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMjAyMC0wOS0wMiAyMjowMCArMDgwMCwgQ29pYnkgWHUgd3JvdGU6Cj4gVGhpcyBmaXhlcyBj
b21taXQgMDEwNzYzNWUxNWFjCj4gKCJzdGFnaW5nOiBxbGdlOiByZXBsYWNlIHByX2VyciB3aXRo
IG5ldGRldl9lcnIiKSB3aGljaCBpbnRyb2R1Y2VkIGFuCj4gYnVpbGQgYnJlYWthZ2Ugb2YgbWlz
c2luZyBgc3RydWN0IHFsX2FkYXB0ZXIgKnFkZXZgIGZvciBzb21lIGZ1bmN0aW9ucwo+IGFuZCBh
IHdhcm5pbmcgb2YgdHlwZSBtaXNtYXRjaCB3aXRoIGR1bXBpbmcgZW5hYmxlZCwgaS5lLiwKPiAK
PiAkIG1ha2UgQ0ZMQUdTX01PRFVMRT0iUUxfQUxMX0RVTVA9MSBRTF9PQl9EVU1QPTEgUUxfQ0Jf
RFVNUD0xIFwKPiAgIFFMX0lCX0RVTVA9MSBRTF9SRUdfRFVNUD0xIFFMX0RFVl9EVU1QPTEiIE09
ZHJpdmVycy9zdGFnaW5nL3FsZ2UKPiAKPiBxbGdlX2RiZy5jOiBJbiBmdW5jdGlvbiDigJhxbF9k
dW1wX29iX21hY19yc3DigJk6Cj4gcWxnZV9kYmcuYzoyMDUxOjEzOiBlcnJvcjog4oCYcWRlduKA
mSB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiDi
gJhjZGV24oCZPwo+ICAyMDUxIHwgIG5ldGRldl9lcnIocWRldi0+bmRldiwgIiVzXG4iLCBfX2Z1
bmNfXyk7Cj4gICAgICAgfCAgICAgICAgICAgICBefn5+Cj4gcWxnZV9kYmcuYzogSW4gZnVuY3Rp
b24g4oCYcWxfZHVtcF9yb3V0aW5nX2VudHJpZXPigJk6Cj4gcWxnZV9kYmcuYzoxNDM1OjEwOiB3
YXJuaW5nOiBmb3JtYXQg4oCYJXPigJkgZXhwZWN0cyBhcmd1bWVudCBvZiB0eXBlIOKAmGNoYXIg
KuKAmSwgYnV0IGFyZ3VtZW50IDMgaGFzIHR5cGUg4oCYaW504oCZIFstV2Zvcm1hdD1dCj4gIDE0
MzUgfCAgICAgICAgIiVzOiBSb3V0aW5nIE1hc2sgJWQgPSAweCUuMDh4XG4iLAo+ICAgICAgIHwg
ICAgICAgICB+Xgo+ICAgICAgIHwgICAgICAgICAgfAo+ICAgICAgIHwgICAgICAgICAgY2hhciAq
Cj4gICAgICAgfCAgICAgICAgICVkCj4gIDE0MzYgfCAgICAgICAgaSwgdmFsdWUpOwo+ICAgICAg
IHwgICAgICAgIH4KPiAgICAgICB8ICAgICAgICB8Cj4gICAgICAgfCAgICAgICAgaW50Cj4gcWxn
ZV9kYmcuYzoxNDM1OjM3OiB3YXJuaW5nOiBmb3JtYXQg4oCYJXjigJkgZXhwZWN0cyBhIG1hdGNo
aW5nIOKAmHVuc2lnbmVkIGludOKAmSBhcmd1bWVudCBbLVdmb3JtYXQ9XQo+ICAxNDM1IHwgICAg
ICAgICIlczogUm91dGluZyBNYXNrICVkID0gMHglLjA4eFxuIiwKPiAgICAgICB8ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfn5+fl4KPiAgICAgICB8ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwKPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHVuc2lnbmVkIGludAo+IAo+IEZpeGVzOiAwMTA3NjM1ZTE1YWMgKCJzdGFnaW5n
OiBxbGdlOiByZXBsYWNlIHByX2VyciB3aXRoIG5ldGRldl9lcnIiKQo+IFJlcG9ydGVkLWJ5OiBC
ZW5qYW1pbiBQb2lyaWVyIDxiZW5qYW1pbi5wb2lyaWVyQGdtYWlsLmNvbT4KPiBTdWdnZXN0ZWQt
Ynk6IEJlbmphbWluIFBvaXJpZXIgPGJlbmphbWluLnBvaXJpZXJAZ21haWwuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IENvaWJ5IFh1IDxjb2lieS54dUBnbWFpbC5jb20+Cj4gLS0tCgpUaGFua3MgZm9y
IGZvbGxvd2luZyB1cCBvbiB0aGlzIGlzc3VlLgoKWy4uLl0KPiBAQCAtMTYzMiw4ICsxNjM1LDgg
QEAgdm9pZCBxbF9kdW1wX3dxaWNiKHN0cnVjdCB3cWljYiAqd3FpY2IpCj4gCj4gIHZvaWQgcWxf
ZHVtcF90eF9yaW5nKHN0cnVjdCB0eF9yaW5nICp0eF9yaW5nKQo+ICB7Cj4gLQlpZiAoIXR4X3Jp
bmcpCj4gLQkJcmV0dXJuOwo+ICsJc3RydWN0IHFsX2FkYXB0ZXIgKnFkZXYgPSB0eF9yaW5nLT5x
ZGV2Owo+ICsKPiAgCW5ldGRldl9lcnIocWRldi0+bmRldiwgIj09PT09PT09PT09PT09PT09PT09
PSBEdW1waW5nIHR4X3JpbmcgJWQgPT09PT09PT09PT09PT09XG4iLAo+ICAJCSAgIHR4X3Jpbmct
PndxX2lkKTsKPiAgCW5ldGRldl9lcnIocWRldi0+bmRldiwgInR4X3JpbmctPmJhc2UgPSAlcFxu
IiwgdHhfcmluZy0+d3FfYmFzZSk7CgpEaWQgeW91IGFjdHVhbGx5IGNoZWNrIHRvIGNvbmZpcm0g
dGhhdCB0aGUgdGVzdCBjYW4gYmUgcmVtb3ZlZD8KClRoaXMgaXMgc29tZXRoaW5nIHRoYXQgeW91
IHNob3VsZCBtZW50aW9uIGluIHRoZSBjaGFuZ2Vsb2cgYXQgdGhlIHZlcnkKbGVhc3Qgc2luY2Ug
dGhhdCBjaGFuZ2UgaXMgbm90IGRpcmVjdGx5IGFib3V0IGZpeGluZyB0aGUgYnVpbGQgYnJlYWth
Z2UKYW5kIGlmIGl0J3Mgd3JvbmcsIGl0IGNhbiBsZWFkIHRvIG51bGwgcG9pbnRlciBkZXJlZi4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
