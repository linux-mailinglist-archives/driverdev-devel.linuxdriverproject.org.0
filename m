Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4873D2821AE
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Oct 2020 07:54:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7A2972751C;
	Sat,  3 Oct 2020 05:54:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hmw2CMjD1Xkw; Sat,  3 Oct 2020 05:53:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 947A82050A;
	Sat,  3 Oct 2020 05:53:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D22BC1BF83C
 for <devel@linuxdriverproject.org>; Sat,  3 Oct 2020 05:53:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C7A0D87398
 for <devel@linuxdriverproject.org>; Sat,  3 Oct 2020 05:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zrUNWbtnTXMP for <devel@linuxdriverproject.org>;
 Sat,  3 Oct 2020 05:53:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9118087396
 for <devel@driverdev.osuosl.org>; Sat,  3 Oct 2020 05:53:54 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id t7so2447105pjd.3
 for <devel@driverdev.osuosl.org>; Fri, 02 Oct 2020 22:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ZpLkhopR7RvaZKej0tLr3XiT6AwIkOjIodaqyAoILX4=;
 b=f/seNY1BqS1fuW+3BBt5TE22tv+sxsB2sKJPkxTwJHD5KGzxSlP2HjigjY4LOhfZ/u
 Jkii6V5xaWx4+O2Hn722cOJOvwhMimvfxd+caaq6Q2GlYRagZrMLESVkcE1z0ixQR31I
 S+1dD44MtirDQ9XQvvMcZ709Q5iLTspCyMKI67Xv+8sqdfzn3nskdi9tGf9yFzopqj1w
 /ikT85IojpD9sEj5PUPlfU1bwYJj8A5SVyXz3UeXVE1jyPFIusHC9UraXRBc/ulGyYk5
 aLEVrUAJosmGbhV+iIUkiP2P1i1WXXfb7ZaHL8TUN+dwuDno41RpUL8WCZlGY6x8QeRO
 0c/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ZpLkhopR7RvaZKej0tLr3XiT6AwIkOjIodaqyAoILX4=;
 b=dtAlk4qY0S2+aAoNcwC2f19hTJBg1zqu/voJgZKJ5C+OAuV8yJaSOLMeA/RVO07GS8
 g9o+Fazn4t5hX8pwecSbPvWdNAD+3AWjJRhlCC8MarEI89nud7U5W/CtW7rh+QBdjVza
 kbLAlOvp2HjOr01FCCdux7s/v+47oeOTlOtLsakS8JTDoodxEAjwEUT7N6hNdr3J9gnp
 RNtfosp+NHikzzm4n3Oxsobr7Tks2I6rIJDqQFBBkGUKyQZedCCh0I+qsx6JZ4GKFEMt
 RrClU+1eILqFnlOpHT/MjhJ/Ie53SIbKYZ2J/6vhlFkMRdqxsSvu59EjpvbezvUH961y
 gtbQ==
X-Gm-Message-State: AOAM533scEKVWShWebvFIs1tJbfjKI1/Cl5LKvudTvozWnsZcI7dursH
 zEBbsrjl0F1yXi/Iw6pA9cY=
X-Google-Smtp-Source: ABdhPJxZAAyoTPwXzIq2v9cLhdcOtS/P7paRo+bVLaSACXvjGc8ZLUNUgJjGiaHmheCQSU0L8Iy59A==
X-Received: by 2002:a17:90a:d311:: with SMTP id
 p17mr6275885pju.135.1601704434077; 
 Fri, 02 Oct 2020 22:53:54 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id u6sm3354301pjy.37.2020.10.02.22.53.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Oct 2020 22:53:53 -0700 (PDT)
Date: Sat, 3 Oct 2020 14:53:48 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v4] staging: qlge: fix build breakage with dumping enabled
Message-ID: <20201003055348.GA100061@f3>
References: <20201002235941.77062-1-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201002235941.77062-1-coiby.xu@gmail.com>
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

T24gMjAyMC0xMC0wMyAwNzo1OSArMDgwMCwgQ29pYnkgWHUgd3JvdGU6Cj4gVGhpcyBmaXhlcyBj
b21taXQgMDEwNzYzNWUxNWFjCj4gKCJzdGFnaW5nOiBxbGdlOiByZXBsYWNlIHByX2VyciB3aXRo
IG5ldGRldl9lcnIiKSB3aGljaCBpbnRyb2R1Y2VkIGFuCj4gYnVpbGQgYnJlYWthZ2Ugb2YgbWlz
c2luZyBgc3RydWN0IHFsX2FkYXB0ZXIgKnFkZXZgIGZvciBzb21lIGZ1bmN0aW9ucwo+IGFuZCBh
IHdhcm5pbmcgb2YgdHlwZSBtaXNtYXRjaCB3aXRoIGR1bXBpbmcgZW5hYmxlZCwgaS5lLiwKPiAK
PiAkIG1ha2UgQ0ZMQUdTX01PRFVMRT0iLURRTF9BTExfRFVNUCAtRFFMX09CX0RVTVAgLURRTF9D
Ql9EVU1QIFwKPiAgICAgLURRTF9JQl9EVU1QIC1EUUxfUkVHX0RVTVAgLURRTF9ERVZfRFVNUCIg
TT1kcml2ZXJzL3N0YWdpbmcvcWxnZQo+IAo+IHFsZ2VfZGJnLmM6IEluIGZ1bmN0aW9uIOKAmHFs
X2R1bXBfb2JfbWFjX3JzcOKAmToKPiBxbGdlX2RiZy5jOjIwNTE6MTM6IGVycm9yOiDigJhxZGV2
4oCZIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0aW9uKTsgZGlkIHlvdSBtZWFu
IOKAmGNkZXbigJk/Cj4gIDIwNTEgfCAgbmV0ZGV2X2VycihxZGV2LT5uZGV2LCAiJXNcbiIsIF9f
ZnVuY19fKTsKPiAgICAgICB8ICAgICAgICAgICAgIF5+fn4KPiBxbGdlX2RiZy5jOiBJbiBmdW5j
dGlvbiDigJhxbF9kdW1wX3JvdXRpbmdfZW50cmllc+KAmToKPiBxbGdlX2RiZy5jOjE0MzU6MTA6
IHdhcm5pbmc6IGZvcm1hdCDigJglc+KAmSBleHBlY3RzIGFyZ3VtZW50IG9mIHR5cGUg4oCYY2hh
ciAq4oCZLCBidXQgYXJndW1lbnQgMyBoYXMgdHlwZSDigJhpbnTigJkgWy1XZm9ybWF0PV0KPiAg
MTQzNSB8ICAgICAgICAiJXM6IFJvdXRpbmcgTWFzayAlZCA9IDB4JS4wOHhcbiIsCj4gICAgICAg
fCAgICAgICAgIH5eCj4gICAgICAgfCAgICAgICAgICB8Cj4gICAgICAgfCAgICAgICAgICBjaGFy
ICoKPiAgICAgICB8ICAgICAgICAgJWQKPiAgMTQzNiB8ICAgICAgICBpLCB2YWx1ZSk7Cj4gICAg
ICAgfCAgICAgICAgfgo+ICAgICAgIHwgICAgICAgIHwKPiAgICAgICB8ICAgICAgICBpbnQKPiBx
bGdlX2RiZy5jOjE0MzU6Mzc6IHdhcm5pbmc6IGZvcm1hdCDigJgleOKAmSBleHBlY3RzIGEgbWF0
Y2hpbmcg4oCYdW5zaWduZWQgaW504oCZIGFyZ3VtZW50IFstV2Zvcm1hdD1dCj4gIDE0MzUgfCAg
ICAgICAgIiVzOiBSb3V0aW5nIE1hc2sgJWQgPSAweCUuMDh4XG4iLAo+ICAgICAgIHwgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB+fn5+Xgo+ICAgICAgIHwgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfAo+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdW5zaWduZWQgaW50Cj4gCj4gTm90ZSB0aGF0IG5vdyBxbF9kdW1wX3J4X3Jp
bmcvcWxfZHVtcF90eF9yaW5nIHdvbid0IGNoZWNrIGlmIHRoZSBwYXNzZWQKPiBwYXJhbWV0ZXIg
aXMgYSBudWxsIHBvaW50ZXIuCj4gCj4gRml4ZXM6IDAxMDc2MzVlMTVhYyAoInN0YWdpbmc6IHFs
Z2U6IHJlcGxhY2UgcHJfZXJyIHdpdGggbmV0ZGV2X2VyciIpCj4gUmVwb3J0ZWQtYnk6IEJlbmph
bWluIFBvaXJpZXIgPGJlbmphbWluLnBvaXJpZXJAZ21haWwuY29tPgo+IFN1Z2dlc3RlZC1ieTog
QmVuamFtaW4gUG9pcmllciA8YmVuamFtaW4ucG9pcmllckBnbWFpbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogQ29pYnkgWHUgPGNvaWJ5Lnh1QGdtYWlsLmNvbT4KPiAtLS0KClJldmlld2VkLWJ5OiBC
ZW5qYW1pbiBQb2lyaWVyIDxiZW5qYW1pbi5wb2lyaWVyQGdtYWlsLmNvbT4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
