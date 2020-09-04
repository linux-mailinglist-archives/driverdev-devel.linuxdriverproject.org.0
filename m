Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C5725DEEA
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Sep 2020 18:03:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8312387579;
	Fri,  4 Sep 2020 16:03:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jQfhQn-O7dxC; Fri,  4 Sep 2020 16:03:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87FBC87576;
	Fri,  4 Sep 2020 16:03:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 989CF1BF4D5
 for <devel@linuxdriverproject.org>; Fri,  4 Sep 2020 16:03:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8D4F187576
 for <devel@linuxdriverproject.org>; Fri,  4 Sep 2020 16:03:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8T2qcu8WXueH for <devel@linuxdriverproject.org>;
 Fri,  4 Sep 2020 16:03:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6E94A873FF
 for <devel@driverdev.osuosl.org>; Fri,  4 Sep 2020 16:03:16 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id o16so3415168pjr.2
 for <devel@driverdev.osuosl.org>; Fri, 04 Sep 2020 09:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=KHkXwx+jqaoaCS6UX8HzJ0+ftR5FngFSLzBY4NLpaHQ=;
 b=C1YTXxEfZmQ5IEeNYNmT8Umezg2XJu/IuxxhEW1fRiDqWU0qluZSyBTg0sW6JRq7EU
 mV4yZMMZ0/Xm7wQg0HJyE45MTNODIZ1Q0J27b1H+OzLjogdFPygr9ToDRr8j1RLgc3Ol
 rng/oMlR/BFdQAStpKtb2WKYlFDuuUPvd7pMrlYE34/ctCEONpH3NFw3PAULvPvZ2DKD
 bt/57I8IW7vH4kwNQOKtsa5ab2eppkXP+bctBv89kjXhvLSypehyorj72RZNARZZg4FU
 pDjRwoZ8yxJVdhVGawyPJmB3fYQK7/iIXSKMlpkP8iMooCBJ+Atti9jZLDeyoifr8e3m
 mP4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=KHkXwx+jqaoaCS6UX8HzJ0+ftR5FngFSLzBY4NLpaHQ=;
 b=Hb+//bIP0jAjqOYhiUG6rdXLzJvusKWBOWYmarb8UXBjHnZM+WCOiXl/9ih305+RI9
 6zLQ20N5arS+vefwrxVqgZtNDMGEBNhykzv4NUJW0Zr2BYvaKnJ3RF7CpaLfE3TXAPZy
 9/yOJ06ykmlY/G0r+yZCbk8QKs2wAHA9SL0eD/WkpNknkoM0Z2LOIKBXkyuqsFRLrNml
 DMBGEBWnzqii22aoWDXbHXZtVacNdmhD/0+VotkfZUJltUcLdOYGGEVVWchTBq1YV9Xj
 n6t4oa1uezquFCq4jok+pmxy6UdZvciLWLyoZIXbmytftSsLGk0jhuv2bil+PSgQFs05
 0trw==
X-Gm-Message-State: AOAM531xD9JQYOVlf3hCijNNeHYclhDTO6XuHGtjO7xvf/hfyX/sVR0u
 WtcA4CIk5WRf8mJN9EsbM+w=
X-Google-Smtp-Source: ABdhPJw68D3zn12AwaSMv3IePjrL7SraUw8pPVUg5HAYxMdMInAXg/JKDg3oxRTe/VxqPoJtiRdqJg==
X-Received: by 2002:a17:90a:ab11:: with SMTP id
 m17mr8509478pjq.236.1599235395895; 
 Fri, 04 Sep 2020 09:03:15 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id u3sm5510880pjn.29.2020.09.04.09.03.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 09:03:15 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Sat, 5 Sep 2020 00:03:08 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH v3] staging: qlge: fix build breakage with dumping enabled
Message-ID: <20200904160308.vpflvqfob7h7hz4v@Rk>
References: <20200902140031.203374-1-coiby.xu@gmail.com>
 <20200903034918.GA227281@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200903034918.GA227281@f3>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBTZXAgMDMsIDIwMjAgYXQgMTI6NDk6MThQTSArMDkwMCwgQmVuamFtaW4gUG9pcmll
ciB3cm90ZToKPk9uIDIwMjAtMDktMDIgMjI6MDAgKzA4MDAsIENvaWJ5IFh1IHdyb3RlOgo+PiBU
aGlzIGZpeGVzIGNvbW1pdCAwMTA3NjM1ZTE1YWMKPj4gKCJzdGFnaW5nOiBxbGdlOiByZXBsYWNl
IHByX2VyciB3aXRoIG5ldGRldl9lcnIiKSB3aGljaCBpbnRyb2R1Y2VkIGFuCj4+IGJ1aWxkIGJy
ZWFrYWdlIG9mIG1pc3NpbmcgYHN0cnVjdCBxbF9hZGFwdGVyICpxZGV2YCBmb3Igc29tZSBmdW5j
dGlvbnMKPj4gYW5kIGEgd2FybmluZyBvZiB0eXBlIG1pc21hdGNoIHdpdGggZHVtcGluZyBlbmFi
bGVkLCBpLmUuLAo+Pgo+PiAkIG1ha2UgQ0ZMQUdTX01PRFVMRT0iUUxfQUxMX0RVTVA9MSBRTF9P
Ql9EVU1QPTEgUUxfQ0JfRFVNUD0xIFwKPj4gICBRTF9JQl9EVU1QPTEgUUxfUkVHX0RVTVA9MSBR
TF9ERVZfRFVNUD0xIiBNPWRyaXZlcnMvc3RhZ2luZy9xbGdlCj4+Cj4+IHFsZ2VfZGJnLmM6IElu
IGZ1bmN0aW9uIOKAmHFsX2R1bXBfb2JfbWFjX3JzcOKAmToKPj4gcWxnZV9kYmcuYzoyMDUxOjEz
OiBlcnJvcjog4oCYcWRlduKAmSB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlv
bik7IGRpZCB5b3UgbWVhbiDigJhjZGV24oCZPwo+PiAgMjA1MSB8ICBuZXRkZXZfZXJyKHFkZXYt
Pm5kZXYsICIlc1xuIiwgX19mdW5jX18pOwo+PiAgICAgICB8ICAgICAgICAgICAgIF5+fn4KPj4g
cWxnZV9kYmcuYzogSW4gZnVuY3Rpb24g4oCYcWxfZHVtcF9yb3V0aW5nX2VudHJpZXPigJk6Cj4+
IHFsZ2VfZGJnLmM6MTQzNToxMDogd2FybmluZzogZm9ybWF0IOKAmCVz4oCZIGV4cGVjdHMgYXJn
dW1lbnQgb2YgdHlwZSDigJhjaGFyICrigJksIGJ1dCBhcmd1bWVudCAzIGhhcyB0eXBlIOKAmGlu
dOKAmSBbLVdmb3JtYXQ9XQo+PiAgMTQzNSB8ICAgICAgICAiJXM6IFJvdXRpbmcgTWFzayAlZCA9
IDB4JS4wOHhcbiIsCj4+ICAgICAgIHwgICAgICAgICB+Xgo+PiAgICAgICB8ICAgICAgICAgIHwK
Pj4gICAgICAgfCAgICAgICAgICBjaGFyICoKPj4gICAgICAgfCAgICAgICAgICVkCj4+ICAxNDM2
IHwgICAgICAgIGksIHZhbHVlKTsKPj4gICAgICAgfCAgICAgICAgfgo+PiAgICAgICB8ICAgICAg
ICB8Cj4+ICAgICAgIHwgICAgICAgIGludAo+PiBxbGdlX2RiZy5jOjE0MzU6Mzc6IHdhcm5pbmc6
IGZvcm1hdCDigJgleOKAmSBleHBlY3RzIGEgbWF0Y2hpbmcg4oCYdW5zaWduZWQgaW504oCZIGFy
Z3VtZW50IFstV2Zvcm1hdD1dCj4+ICAxNDM1IHwgICAgICAgICIlczogUm91dGluZyBNYXNrICVk
ID0gMHglLjA4eFxuIiwKPj4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IH5+fn5eCj4+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+
PiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGlu
dAo+Pgo+PiBGaXhlczogMDEwNzYzNWUxNWFjICgic3RhZ2luZzogcWxnZTogcmVwbGFjZSBwcl9l
cnIgd2l0aCBuZXRkZXZfZXJyIikKPj4gUmVwb3J0ZWQtYnk6IEJlbmphbWluIFBvaXJpZXIgPGJl
bmphbWluLnBvaXJpZXJAZ21haWwuY29tPgo+PiBTdWdnZXN0ZWQtYnk6IEJlbmphbWluIFBvaXJp
ZXIgPGJlbmphbWluLnBvaXJpZXJAZ21haWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBDb2lieSBY
dSA8Y29pYnkueHVAZ21haWwuY29tPgo+PiAtLS0KPgo+VGhhbmtzIGZvciBmb2xsb3dpbmcgdXAg
b24gdGhpcyBpc3N1ZS4KPgo+Wy4uLl0KPj4gQEAgLTE2MzIsOCArMTYzNSw4IEBAIHZvaWQgcWxf
ZHVtcF93cWljYihzdHJ1Y3Qgd3FpY2IgKndxaWNiKQo+Pgo+PiAgdm9pZCBxbF9kdW1wX3R4X3Jp
bmcoc3RydWN0IHR4X3JpbmcgKnR4X3JpbmcpCj4+ICB7Cj4+IC0JaWYgKCF0eF9yaW5nKQo+PiAt
CQlyZXR1cm47Cj4+ICsJc3RydWN0IHFsX2FkYXB0ZXIgKnFkZXYgPSB0eF9yaW5nLT5xZGV2Owo+
PiArCj4+ICAJbmV0ZGV2X2VycihxZGV2LT5uZGV2LCAiPT09PT09PT09PT09PT09PT09PT09IER1
bXBpbmcgdHhfcmluZyAlZCA9PT09PT09PT09PT09PT1cbiIsCj4+ICAJCSAgIHR4X3JpbmctPndx
X2lkKTsKPj4gIAluZXRkZXZfZXJyKHFkZXYtPm5kZXYsICJ0eF9yaW5nLT5iYXNlID0gJXBcbiIs
IHR4X3JpbmctPndxX2Jhc2UpOwo+Cj5EaWQgeW91IGFjdHVhbGx5IGNoZWNrIHRvIGNvbmZpcm0g
dGhhdCB0aGUgdGVzdCBjYW4gYmUgcmVtb3ZlZD8KClRoYW5rIHlvdSBmb3IgdGhlIHJlbWluZGlu
ZyEgRm9yIHRoZSBjdXJyZW50IGNvZGUsIHdoZW4gcWxfZHVtcF90eF9yaW5nCmlzIGNhbGxlZCwg
dHhfcmluZyB3b3VsZCBuZXZlciBiZSBudWxsLgoKPgo+VGhpcyBpcyBzb21ldGhpbmcgdGhhdCB5
b3Ugc2hvdWxkIG1lbnRpb24gaW4gdGhlIGNoYW5nZWxvZyBhdCB0aGUgdmVyeQo+bGVhc3Qgc2lu
Y2UgdGhhdCBjaGFuZ2UgaXMgbm90IGRpcmVjdGx5IGFib3V0IGZpeGluZyB0aGUgYnVpbGQgYnJl
YWthZ2UKPmFuZCBpZiBpdCdzIHdyb25nLCBpdCBjYW4gbGVhZCB0byBudWxsIHBvaW50ZXIgZGVy
ZWYuCgpJIHRob3VnaHQgaXQgaXMgY29tbW9uIHByYWN0aWNlIGluIEMgdGhhdCB0aGUgY2FsbGVy
IG1ha2VzIHN1cmUKdGhlIHBhc3NlZCBwYXJhbWV0ZXIgaXNuJ3QgYSBudWxsIHBvaW50ZXIgYmVj
YXVzZSBhIFFFTVUgZGV2ZWxvcGVyCmFsc28gZ2F2ZSBtZSB0aGUgc2FtZSBhZHZpY2UgYWZ0ZXIg
cmV2aWV3aW5nIG9uZSBvZiBteSBwYXRjaGVzIGZvcgpRRU1VIGEgZmV3IHdlZWtzIGFnby4gSSds
bCBtZW50aW9uIHRoaXMgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLiBUaGFuawp5b3UgZm9yIHRoZSBz
dWdnZXN0aW9uIQoKCi0tCkJlc3QgcmVnYXJkcywKQ29pYnkKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
