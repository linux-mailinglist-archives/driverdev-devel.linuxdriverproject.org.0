Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DA51A63CB
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 09:43:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C9E292001F;
	Mon, 13 Apr 2020 07:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HLleFLxkgmNt; Mon, 13 Apr 2020 07:42:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 34587203EE;
	Mon, 13 Apr 2020 07:42:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1DA271BF284
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 07:42:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 19EA920385
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 07:42:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V0la2eq8Z77U for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 07:42:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from cmccmta3.chinamobile.com (cmccmta3.chinamobile.com
 [221.176.66.81])
 by silver.osuosl.org (Postfix) with ESMTP id F1C122001F
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 07:42:52 +0000 (UTC)
Received: from spf.mail.chinamobile.com (unknown[172.16.121.11]) by
 rmmx-syy-dmz-app10-12010 (RichMail) with SMTP id 2eea5e9417d64ce-3370f;
 Mon, 13 Apr 2020 15:42:14 +0800 (CST)
X-RM-TRANSID: 2eea5e9417d64ce-3370f
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from [172.20.21.224] (unknown[112.25.154.146])
 by rmsmtp-syy-appsvr06-12006 (RichMail) with SMTP id 2ee65e9417d50e3-b038b;
 Mon, 13 Apr 2020 15:42:14 +0800 (CST)
X-RM-TRANSID: 2ee65e9417d50e3-b038b
Subject: Re: [PATCH] binderfs: Fix binderfs.c selftest compilation warning
To: Greg KH <gregkh@linuxfoundation.org>
References: <20200411145151.5576-1-tangbin@cmss.chinamobile.com>
 <20200412074629.GB2707594@kroah.com>
From: Tang Bin <tangbin@cmss.chinamobile.com>
Message-ID: <54f2439e-e74f-fc45-96c4-c7744fff6162@cmss.chinamobile.com>
Date: Mon, 13 Apr 2020 15:44:06 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200412074629.GB2707594@kroah.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, linux-kernel@vger.kernel.org,
 arve@android.com, joel@joelfernandes.org, maco@android.com,
 christian@brauner.io
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgZ3JlZ++8mgoKT24gMjAyMC80LzEyIDE1OjQ2LCBHcmVnIEtIIHdyb3RlOgo+IE9uIFNhdCwg
QXByIDExLCAyMDIwIGF0IDEwOjUxOjUxUE0gKzA4MDAsIFRhbmcgQmluIHdyb3RlOgo+PiBGaXgg
bWlzc2luZyBicmFjZXMgY29tcGlsYXRpb24gd2FybmluZyBpbiB0aGUgQVJNCj4+IGNvbXBpbGVy
IGVudmlyb25tZW50Ogo+PiAgICAgIGRyaXZlcnMvYW5kcm9pZC9iaW5kZXJmcy5jOiBJbiBmdW5j
dGlvbiAnYmluZGVyZnNfZmlsbF9zdXBlcic6Cj4+ICAgICAgZHJpdmVycy9hbmRyb2lkL2JpbmRl
cmZzLmM6NjUwOjk6IHdhcm5pbmc6IG1pc3NpbmcgYnJhY2VzIGFyb3VuZCBpbml0aWFsaXplciBb
LVdtaXNzaW5nLWJyYWNlc10KPj4gICAgICAgIHN0cnVjdCBiaW5kZXJmc19kZXZpY2UgZGV2aWNl
X2luZm8gPSB7IDAgfTsKPj4gICAgICBkcml2ZXJzL2FuZHJvaWQvYmluZGVyZnMuYzo2NTA6OTog
d2FybmluZzogKG5lYXIgaW5pdGlhbGl6YXRpb24gZm9yIOKAmGRldmljZV9pbmZvLm5hbWXigJkp
IFstV21pc3NpbmctYnJhY2VzXQo+IFdoYXQgY29tcGlsZXIgYW5kIHZlcnNpb24gaXMgZ2l2aW5n
IHRoaXMgd2FybmluZz8gIEl0J3Mgb2RkIHdlIGhhdmUgbm90Cj4gc2VlbiB0aGlzIHlldC4uLgpN
eSBlbnZpcm9ubWVudDoKCiDCoCBQQyA6IFVidW50dSAxNi4wNAoKIMKgIEhhcmR3YXJlIDogSS5N
WDZVTEwKCiDCoCBUb29sIENoYWluIDogYXJtLWxpbnV4LWdudWVhYmloZi1nY2MgKExpbmFybyBH
Q0MgNC45LTIwMTcuMDEpIDQuOS40CgoKClRoYW5rIHlvdSBmb3IgeW91ciBwYXRpZW5jZS4KClRh
bmcgQmluCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
