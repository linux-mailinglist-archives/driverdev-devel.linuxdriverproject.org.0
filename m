Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9A5282E6C
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Oct 2020 01:59:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 48739849D8;
	Sun,  4 Oct 2020 23:59:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BGwumqPD5bzp; Sun,  4 Oct 2020 23:59:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BA08283F11;
	Sun,  4 Oct 2020 23:59:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 412481BF275
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 23:59:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 280D7203B4
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 23:59:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SfpGaOIeOL-z for <devel@linuxdriverproject.org>;
 Sun,  4 Oct 2020 23:59:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by silver.osuosl.org (Postfix) with ESMTPS id B622B20025
 for <devel@driverdev.osuosl.org>; Sun,  4 Oct 2020 23:59:23 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id b17so4341062pji.1
 for <devel@driverdev.osuosl.org>; Sun, 04 Oct 2020 16:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=D0XrjGNpHDFsmwtiuJ2IjixWsPGZ7fiNnf/mc72+SJU=;
 b=KuhOwWCI11VVGNZg8HT8PDuLKMByoX64pq0TNg+CFYEhRcOWnY5scWFQi6a9HjuvFL
 /byE5nFgjyXeRHP7lRDahUyKKs1dVx0anjOfYLTbna+zv4QYvmmiLuTEcS+4dNgmtZXl
 2efgAj34C1uw4KNahhp7x1TeARbVkCklfu3Cy13jprAKzRY3cHcMzcSR62VxVv91PqKV
 Bdb3JDvLO2wO20ZEekmxPI9zrxJ2TdOlFrVxh9uVHYTTB82FosIKFRp3aK29av8esAwu
 ls2S7PpsDx3xmWewKu4hNhuiPVXeV/ukk5+b+4PT/aPDxdoQlfTShXI0gPnk/y6hEJEF
 NP9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=D0XrjGNpHDFsmwtiuJ2IjixWsPGZ7fiNnf/mc72+SJU=;
 b=jkE1fibPpCIwqAOVYIjBd1ghGVvtK0YOHNl3eo53XMoad+VVLiCv4Ay2ZNazHgvZj9
 mCUhBzf1W5jbExknlIUbArgbW8Moq6lce5i4a/5k9j+ng6Ans1dWJvoOfTPxFKduDEG1
 tr/tiKaeTpmJ+wI/KQn2k66sRt3xIWNA1/znfjes4Rg/4vyj79LyKBZ+TrQqaJ3pI+29
 ecj+R2RZxSxCA74aP2DtV/fwiWgtTZfaQTlD0ZrKSFRqpSn/fEvRNEwL7lMulbH7BIbf
 0AwPWVFFPlUf6fDtGGjpxDn2PSShE8VAFKUqBJngl/oqbfH5/tL1tzFObMPPbLPb6aR0
 p5+g==
X-Gm-Message-State: AOAM533OaSc5gJCtdWDGbrsoG2zHCu0E/PWLWFyhpGIciErOxF7HQi7s
 i5e/JlD34P8ZEm0wZf2o5Q0=
X-Google-Smtp-Source: ABdhPJwtD8zyZbhPPscEGsSFWHtWOYEBhXfXhLAAQiBnQRgXOALaJqiACd/JE/QYUzSvyC9WTYWrRA==
X-Received: by 2002:a17:90a:b285:: with SMTP id
 c5mr13486274pjr.44.1601855963238; 
 Sun, 04 Oct 2020 16:59:23 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id g4sm8623298pgg.75.2020.10.04.16.59.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 04 Oct 2020 16:59:21 -0700 (PDT)
Date: Mon, 5 Oct 2020 08:59:16 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v4] staging: qlge: fix build breakage with dumping enabled
Message-ID: <20201004235916.GA25722@f3>
References: <20201002235941.77062-1-coiby.xu@gmail.com>
 <20201003055348.GA100061@f3> <20201004152230.s2kxna2jl2uzlink@Rk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201004152230.s2kxna2jl2uzlink@Rk>
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

T24gMjAyMC0xMC0wNCAyMzoyMiArMDgwMCwgQ29pYnkgWHUgd3JvdGU6Cj4gT24gU2F0LCBPY3Qg
MDMsIDIwMjAgYXQgMDI6NTM6NDhQTSArMDkwMCwgQmVuamFtaW4gUG9pcmllciB3cm90ZToKPiA+
IE9uIDIwMjAtMTAtMDMgMDc6NTkgKzA4MDAsIENvaWJ5IFh1IHdyb3RlOgo+ID4gPiBUaGlzIGZp
eGVzIGNvbW1pdCAwMTA3NjM1ZTE1YWMKPiA+ID4gKCJzdGFnaW5nOiBxbGdlOiByZXBsYWNlIHBy
X2VyciB3aXRoIG5ldGRldl9lcnIiKSB3aGljaCBpbnRyb2R1Y2VkIGFuCj4gPiA+IGJ1aWxkIGJy
ZWFrYWdlIG9mIG1pc3NpbmcgYHN0cnVjdCBxbF9hZGFwdGVyICpxZGV2YCBmb3Igc29tZSBmdW5j
dGlvbnMKPiA+ID4gYW5kIGEgd2FybmluZyBvZiB0eXBlIG1pc21hdGNoIHdpdGggZHVtcGluZyBl
bmFibGVkLCBpLmUuLAo+ID4gPiAKPiA+ID4gJCBtYWtlIENGTEFHU19NT0RVTEU9Ii1EUUxfQUxM
X0RVTVAgLURRTF9PQl9EVU1QIC1EUUxfQ0JfRFVNUCBcCj4gPiA+ICAgICAtRFFMX0lCX0RVTVAg
LURRTF9SRUdfRFVNUCAtRFFMX0RFVl9EVU1QIiBNPWRyaXZlcnMvc3RhZ2luZy9xbGdlCj4gPiA+
IAo+ID4gPiBxbGdlX2RiZy5jOiBJbiBmdW5jdGlvbiDigJhxbF9kdW1wX29iX21hY19yc3DigJk6
Cj4gPiA+IHFsZ2VfZGJnLmM6MjA1MToxMzogZXJyb3I6IOKAmHFkZXbigJkgdW5kZWNsYXJlZCAo
Zmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g4oCYY2RlduKAmT8KPiA+
ID4gIDIwNTEgfCAgbmV0ZGV2X2VycihxZGV2LT5uZGV2LCAiJXNcbiIsIF9fZnVuY19fKTsKPiA+
ID4gICAgICAgfCAgICAgICAgICAgICBefn5+Cj4gPiA+IHFsZ2VfZGJnLmM6IEluIGZ1bmN0aW9u
IOKAmHFsX2R1bXBfcm91dGluZ19lbnRyaWVz4oCZOgo+ID4gPiBxbGdlX2RiZy5jOjE0MzU6MTA6
IHdhcm5pbmc6IGZvcm1hdCDigJglc+KAmSBleHBlY3RzIGFyZ3VtZW50IG9mIHR5cGUg4oCYY2hh
ciAq4oCZLCBidXQgYXJndW1lbnQgMyBoYXMgdHlwZSDigJhpbnTigJkgWy1XZm9ybWF0PV0KPiA+
ID4gIDE0MzUgfCAgICAgICAgIiVzOiBSb3V0aW5nIE1hc2sgJWQgPSAweCUuMDh4XG4iLAo+ID4g
PiAgICAgICB8ICAgICAgICAgfl4KPiA+ID4gICAgICAgfCAgICAgICAgICB8Cj4gPiA+ICAgICAg
IHwgICAgICAgICAgY2hhciAqCj4gPiA+ICAgICAgIHwgICAgICAgICAlZAo+ID4gPiAgMTQzNiB8
ICAgICAgICBpLCB2YWx1ZSk7Cj4gPiA+ICAgICAgIHwgICAgICAgIH4KPiA+ID4gICAgICAgfCAg
ICAgICAgfAo+ID4gPiAgICAgICB8ICAgICAgICBpbnQKPiA+ID4gcWxnZV9kYmcuYzoxNDM1OjM3
OiB3YXJuaW5nOiBmb3JtYXQg4oCYJXjigJkgZXhwZWN0cyBhIG1hdGNoaW5nIOKAmHVuc2lnbmVk
IGludOKAmSBhcmd1bWVudCBbLVdmb3JtYXQ9XQo+ID4gPiAgMTQzNSB8ICAgICAgICAiJXM6IFJv
dXRpbmcgTWFzayAlZCA9IDB4JS4wOHhcbiIsCj4gPiA+ICAgICAgIHwgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB+fn5+Xgo+ID4gPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwKPiA+ID4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB1bnNpZ25lZCBpbnQKPiA+ID4gCj4gPiA+IE5vdGUgdGhhdCBub3cgcWxfZHVt
cF9yeF9yaW5nL3FsX2R1bXBfdHhfcmluZyB3b24ndCBjaGVjayBpZiB0aGUgcGFzc2VkCj4gPiA+
IHBhcmFtZXRlciBpcyBhIG51bGwgcG9pbnRlci4KPiA+ID4gCj4gPiA+IEZpeGVzOiAwMTA3NjM1
ZTE1YWMgKCJzdGFnaW5nOiBxbGdlOiByZXBsYWNlIHByX2VyciB3aXRoIG5ldGRldl9lcnIiKQo+
ID4gPiBSZXBvcnRlZC1ieTogQmVuamFtaW4gUG9pcmllciA8YmVuamFtaW4ucG9pcmllckBnbWFp
bC5jb20+Cj4gPiA+IFN1Z2dlc3RlZC1ieTogQmVuamFtaW4gUG9pcmllciA8YmVuamFtaW4ucG9p
cmllckBnbWFpbC5jb20+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IENvaWJ5IFh1IDxjb2lieS54dUBn
bWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gCj4gPiBSZXZpZXdlZC1ieTogQmVuamFtaW4gUG9pcmll
ciA8YmVuamFtaW4ucG9pcmllckBnbWFpbC5jb20+Cj4gCj4gVGhhbmsgeW91ISBCdHcsIEkgZ3Vl
c3Mgd2hlbiB0aGlzIHBhdGNoIGlzIHBpY2tlZCwgdGhlICJSZXZpZXdlZC1ieSIgdGFnCj4gd2ls
bCBhbHNvIGJlIGluY2x1ZGVkLiBTbyBJIG5lZWRuJ3QgdG8gc2VuZCBhbm90aGVyIHBhdGNoLCBh
bSBJIHJpZ2h0PwoKSSB0aGluayBzby4gTWFpbnRhaW5lcnMgdXN1YWxseSB0YWtlIGNhcmUgb2Yg
YWRkaW5nIGF0dHJpYnV0aW9uIHRhZ3MKZnJvbSBmb2xsb3d1cCBlbWFpbHMgYW5kIHRoYXQncyB3
aGF0IEdyZWcgaGFzIGRvbmUgZm9yIHlvdXIgcHJldmlvdXMKcWxnZSBwYXRjaCBpdCBsb29rcyBs
aWtlLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
