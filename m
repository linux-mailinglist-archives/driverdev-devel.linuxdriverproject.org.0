Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B479D33D2D5
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 12:19:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55D8643171;
	Tue, 16 Mar 2021 11:19:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HaL-SKdXHpBZ; Tue, 16 Mar 2021 11:19:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA493400D6;
	Tue, 16 Mar 2021 11:19:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1CB291BF3C8
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 11:19:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 193B742FB7
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 11:19:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o86zScdzUn31 for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 11:19:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9BF07400D6
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 11:19:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A489864FEA;
 Tue, 16 Mar 2021 11:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615893549;
 bh=hlnaCr0NY4wB7O+iMorX15/m8lVHBM6RLrAFSTF6GAU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UHH0j0uI2XnuX8LYGQU9HGcISsZHLYeS7ZdTW4+XHLfiVvFT5YJnZRthIJ9npw+r2
 XOFJhp5wx6iYD2L1h8pIEpHs2UrdD1VYlaKCYwqfNZQT/falk+9Ls9WgkuC6ClMla5
 FC7iu9LwO7rCHhLLMPdAQcmRRJxqEU8rOmMo9rZU=
Date: Tue, 16 Mar 2021 12:19:06 +0100
From: gregkh <gregkh@linuxfoundation.org>
To: =?utf-8?B?6LW15pmT?= <zhaoxiao@uniontech.com>
Subject: Re: Re: [PATCH v2] staging: rtl8192u: remove extra lines
Message-ID: <YFCUKgMpixibkEPq@kroah.com>
References: <20210316024410.24609-1-zhaoxiao@uniontech.com>
 <20210316064756.GQ21246@kadam>
 <1263213049.277443.1615888997726.JavaMail.xmail@bj-wm-cp-10>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1263213049.277443.1615888997726.JavaMail.xmail@bj-wm-cp-10>
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
Cc: devel <devel@driverdev.osuosl.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 serrazimone <serrazimone@gmail.com>, lu <lu@pplo.net>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBNYXIgMTYsIDIwMjEgYXQgMDY6MDM6MTdQTSArMDgwMCwg6LW15pmTIHdyb3RlOgo+
IFRoaXMgZW1haWwgbWVzc2FnZSBpcyBpbnRlbmRlZCBvbmx5IGZvciB0aGUgdXNlIG9mIHRoZSBp
bmRpdmlkdWFsIG9yIGVudGl0eSB3aG8KPiAvd2hpY2ggaXMgdGhlIGludGVuZGVkIHJlY2lwaWVu
dCBhbmQgbWF5IGNvbnRhaW4gaW5mb3JtYXRpb24gdGhhdCBpcyBwcml2aWxlZ2VkCj4gb3IgY29u
ZmlkZW50aWFsLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCB5b3UgYXJl
IGhlcmVieSBub3RpZmllZAo+IHRoYXQgYW55IHVzZSwgZGlzc2VtaW5hdGlvbiwgZGlzdHJpYnV0
aW9uIG9yIGNvcHlpbmcgb2YsIG9yIHRha2luZyBhbnkgYWN0aW9uCj4gaW4gcmVsaWFuY2Ugb24s
IHRoaXMgZS1tYWlsIGlzIHN0cmljdGx5IHByb2hpYml0ZWQuIElmIHlvdSBoYXZlIHJlY2VpdmVk
IHRoaXMKPiBlbWFpbCBpbiBlcnJvciwgcGxlYXNlIG5vdGlmeSBVbmlvblRlY2ggU29mdHdhcmUg
VGVjaG5vbG9neSAgaW1tZWRpYXRlbHkgYnkKPiByZXBseWluZyB0byB0aGlzIGUtbWFpbCBhbmQg
aW1tZWRpYXRlbHkgZGVsZXRlIGFuZCBkaXNjYXJkIGFsbCBjb3BpZXMgb2YgdGhlCj4gZS1tYWls
IGFuZCB0aGUgYXR0YWNobWVudCB0aGVyZXRvIChpZiBhbnkpLiBUaGFuayB5b3UuICAKClRoaXMg
dGV4dCBpcyBub3QgY29tcGF0aWJsZSB3aXRoIExpbnV4IGRldmVsb3BtZW50IHNvcnJ5LCBlbWFp
bCBpcyBub3cKZGVsZXRlZC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
